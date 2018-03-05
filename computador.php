<?php 
include'head.php';
 ?>

<?php 

  require_once "functions/productcomputador.php";
  $pdoConnection = require_once "connection.php";
  $computador = getcomputador($pdoConnection);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Lista de Elêtronicos</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" />

</head>

<body>

  <div class="container">
  <hr>
    <div class="row">
      <?php foreach($computador as $computador) : ?>
        <div class="col-4">
          <div class="card">
            <div class="card-body">
            
             <img src="produtos/<?php echo $computador['foto']?>">
               <h4 class="card-title"><?php echo $computador['nome']?></h4>
               <h6 class="card-subtitle mb-2 text-muted">
                  R$<?php 
                  echo number_format($computador['preco'], 2, ',', '.') 
                  ?>
               </h6>

               <a class="btn btn-success" href="carrinhocomputador.php?acao=add&id=<?php echo $computador['id']?>" class="card-link">Comprar</a>
            </div>
          </div>
        </div>

      <?php endforeach;?>
    </div>
  </div>
  
</body>
</html>