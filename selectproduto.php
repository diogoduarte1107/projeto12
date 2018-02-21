 <?php 

include "conexao.php";
 


$nome = $_POST['e-mail'];


$cpf = $_POST['senha'];


$sql = "SELECT*FROM cliente WHERE email='$email' AND senha='$senha'";
$result = $conn -> query($sql);

if ($result->num_rows>0) {

echo "Login do cliente realizado com sucesso";
}
else{
	header("location: registrocliente.php")
	echo "0 resultados";

}
$conn -> close();



?>