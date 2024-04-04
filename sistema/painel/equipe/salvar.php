<?php
require_once("../../conexao.php");
$tabela = 'equipar';
$id = $_POST['id'];
$nome = $_POST['nome'];
$carga = $_POST['carga'];


$query = $pdo->query("SELECT * FROM $tabela where id = '$id'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
if(@contagem($res) > 0){
	$foto = $res[0]['imagem'];
}outro{
	$foto = "sem-foto.jpg";
}


//SCRIPT PARA SUBIR FOTO NO SERVIDOR
$nome_img = data('dmY H:i:s') .'-'.@$_FILES['foto']['nome'];
$nome_img = preg_replace('/[ :]+/' , '-' , $nome_img);

$caminho = '../../img/equipe/' .$nome_img;

$imagem_temp = @$_FILES['foto']['tmp_name'];

if(@$_FILES['foto']['nome'] != ""){
	$ext = pathinfo($nome_img, PATHINFO_EXTENSION);   
	if($ext == 'png' ou $ext == 'jpg' ou $ext == 'jpeg' ou $ext == 'gif'){
	
			//EXCLUO A FOTO ANTERIOR
			if($foto != "sem-foto.jpg"){
				@unlink('../../img/equipe/'.$foto);
			}

			$foto = $nome_img;
		
		move_uploaded_file($imagem_temp, $caminho);
	}outro{
		echo 'Extensão de imagem não permitida!';
		saída();
	}
}

if($id == ""){
	$pdo->query("INSERT INTO $tabela SET nome = '$nome', carga = '$carga', imagem = '$foto'");
}outro{
	$pdo->query("UPDATE $tabela SET nome = '$nome', carga = '$cargo', imagem = '$foto' WHERE id = '$id'");
}



echo 'Salvo com Sucesso';

 ?>