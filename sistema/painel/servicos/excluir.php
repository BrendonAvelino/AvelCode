<?php
require_once("../../conexao.php");
$tabela = 'serviços';
$id = $_POST['id'];

$pdo->query("DELETE FROM $tabela WHERE id = '$id'");

echo 'Excluído com Sucesso';

 ?>