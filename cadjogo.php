<?php 
include "conexao.php";

$cpf = $_POST['nome'];


$descricao = $_POST['descricao'];

 
$categoria = $_POST['categoria'];


$foto = $_POST['foto'];


$preco = $_POST['preco'];





$sql = "INSERT INTO jogo (nome, descricao, categoria, foto, preco) VALUES('$descricao', '$descricao', '$categoria', '$foto', '$preco')";

if ($conn-> query ($sql) === TRUE) {
	header("location: jogos.php");
	# code...
}
else{
	echo "Error:" . $sql . "<br/>" . $conn -> error;
}

$conn->close();




 ?>