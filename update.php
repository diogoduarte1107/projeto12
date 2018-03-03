<?php 
include 'conexao.php';

$id = $_POST['id'];
$status = $_POST['status'];

$sql = "UPDATE pedido SET id='$id' WHERE status=$status";

if ($conn->query($sql) === TRUE) {
	echo "Atualizado";

	# code...
}
else{
	echo "Erro: ". $conn-> error;
}

$conn->close();



















 ?>