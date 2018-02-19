<?php 
include 'head.php';
 ?>

<body>
		
	<form method="post" action="insertproduto.php">
	<hr>
		<h5>CADASTRO DE PRODUTO</h5>	
		<input type="text" name="nome" placeholder="Digite o nome"/>
		<input type="text" name="descricao" placeholder="Digite o descricao"/>
		<input type="text" name="foto" placeholder="Digite o foto"/>
	
		<button type="submit" class="btn btn-outline-primary my-2 my-sm-0">CADASTRAR</button>

	</form>

</body>


<?php 
include 'footer.php';
 ?>
