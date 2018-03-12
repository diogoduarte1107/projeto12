<?php 
include "conexao.php";




$nome = $_POST['nome'];
$descricao = $_POST['descricao'];
$foto = $_POST['foto'];
$categoria = $_POST['categoria'];

 



 



$sql = "INSERT INTO produto (nome, descricao, categoria) VALUES('$nome', '$descricao', '$categoria')";

if ($conn-> query ($sql) === TRUE) {
	header("location:form.php");
	# code...
}
else{
	echo "Error:" . $sql . "<br/>" . $conn -> error;
}

$conn->close();




 ?>