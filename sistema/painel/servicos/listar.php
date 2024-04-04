<?php
require_once("../../conexao.php");
$tabela = 'serviços';

$query = $pdo->query("SELECT * FROM $tabela ordenar por id desc");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = @contagem($res);
if($total_reg > 0){

eco <<<HTML
	<pequeno>
	<table class="table table-hover" id="tabela">
	<thead>
	<tr>
	<th>Título</th>	
	<th class="esc">Vídeo</th>
	<th class="esc">Exibir</th>
	<th class="esc">Imagem</th>			
	<th>Ações</th>
	</tr>
	</thead>
	<corpo>	
HTML;

for($i=0; $i < $total_reg; $i++){
		$id = $res[$i]['id'];
		$titulo = $res[$i]['titulo'];		
		$descricao = $res[$i]['descricao'];		
		$imagem = $res[$i]['imagem'];
		$vídeo = $res[$i]['vídeo'];
		$exibir = $res[$i]['exibir'];
	
		$descricaoF = mb_strimwidth($descricao, 0, 80, "...");	

		//retira o caractere
		$descricao = str_replace(array('"'), ' ** ', $descricao);
		
eco <<<HTML
<tr>
<td>{$título}</td>
<td class="esc">{$video}</td>
<td class="esc">{$exibir}</td>
<td class="esc"><img src="../img/servicos/{$imagem}" width="30px"></td>

<td>
	<big><a href="#" onclick="editar('{$id}','{$titulo}', '{$descricao}', '{$imagem}', '{$video}', '{$exibir}')" title="Editar Dados"><i class="bi bi-pencil-square text-primary"></i></a></big>

	<big><a href="#" onclick="excluir('{$id}','{$titulo}')" title="Excluir Registro"><i class="bi bi-trash text-danger" </i></a></big>



</td>
</tr>
HTML;

}

eco <<<HTML
	</tbody>
	<small><div align="center" id="mensagem-excluir"></div></small>
	</tabela>
	</small>
HTML;


}outro{
	echo 'Não possui registros cadastrados!';
}


 ?>





  



<script type="texto/javascript">
	function editar(id, título, descrição, foto, vídeo, exibir){

		for (deixe a letra da descrição){  				
					if (letra === '*'){
						descrição = descrição.replace(' ** ', '"')
					}			
				}

		$('#id').val(id);
		$('#título').val(título);
		nicEditors.findEditor("area").setContent(descricao);
		$('#vídeo').val(vídeo);	
		$('#exibir').val(exibir).change();	
		
		$('#titulo_inserir').text('Editar Registro');
		$('#modalForm').modal('mostrar');
		$('#foto').val('');
		$('#target').attr('src','../img/servicos/' + foto);
	}

		function excluir(id, titulo){
		$('#id-excluir').val(id);
		$('#titulo-excluir').text(titulo);				
		
		$('#modalExcluir').modal('mostrar');		
	}



	function limparCampos(){
		$('#id').val('');
		nicEditors.findEditor("área").setContent('');
		$('#vídeo').val('');
		$('#exibir').val('Imagem').change();		
		$('#título').val('');		
		$('#foto').val('');
		$('#target').attr('src','../img/servicos/sem-foto.jpg');
	}

</script>