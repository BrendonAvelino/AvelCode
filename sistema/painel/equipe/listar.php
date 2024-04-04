<?php
require_once("../../conexao.php");
$tabela = 'equipar';

$query = $pdo->query("SELECT * FROM $tabela ordenar por id desc");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = @contagem($res);
if($total_reg > 0){

eco <<<HTML
	<pequeno>
	<table class="table table-hover" id="tabela">
	<thead>
	<tr>
	<th>Nome</th>	
	<th class="esc">Carga</th>	
	<th class="esc">Imagem</th>			
	<th>Ações</th>
	</tr>
	</thead>
	<corpo>	
HTML;

for($i=0; $i < $total_reg; $i++){
		$id = $res[$i]['id'];
		$nome = $res[$i]['nome'];		
		$carga = $res[$i]['carga'];		
		$imagem = $res[$i]['imagem'];
	
			
eco <<<HTML
<tr>
<td>{$nome}</td>
<td class="esc">{$carga}</td>
<td class="esc"><img src="../img/equipe/{$imagem}" width="30px"></td>

<td>
	<big><a href="#" onclick="editar('{$id}','{$nome}', '{$cargo}', '{$imagem}')" title="Editar Dados" ><i class="bi bi-pencil-square text-primary"></i></a></big>

	<big><a href="#" onclick="excluir('{$id}','{$nome}')" title="Excluir Registro"><i class="bi bi-trash text-danger" </i></a></big>



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
	function editar(id, nome, carga, foto){
		$('#id').val(id);
		$('#nome').val(nome);
		$('#carga').val(carga);
		
		
		$('#titulo_inserir').text('Editar Registro');
		$('#modalForm').modal('mostrar');
		$('#foto').val('');
		$('#target').attr('src','../img/equipe/' + foto);
	}

		function excluir(id, titulo){
		$('#id-excluir').val(id);
		$('#titulo-excluir').text(titulo);				
		
		$('#modalExcluir').modal('mostrar');		
	}



	function limparCampos(){
		$('#id').val('');
		
		$('#carga').val('');
		$('#nome').val('');		
		$('#foto').val('');
		$('#target').attr('src','../img/equipe/sem-foto.jpg');
	}

</script>