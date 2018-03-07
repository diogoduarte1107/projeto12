<?php 
include 'conexao.php';


$id = $_POST['id'];

$sql = "DELETE FROM computador WHERE id=$id";

if ($conn->query($sql) === TRUE) {
	header ("location: computador.php");

	# code...
}
else{
	echo "Erro: ". $conn-> error;
}

$conn->close();



















 ?>