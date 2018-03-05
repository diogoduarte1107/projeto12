<?php 
include'head.php';
 ?>

<?php 

  require_once "functions/productroupa.php";
  $pdoConnection = require_once "connection.php";
  $roupas = getroupas($pdoConnection);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Lista de Roupas</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" />

</head>

<body>

  <div class="container">
  <hr>
    <div class="row">
      <?php foreach($roupas as $roupa) : ?>
        <div class="col-4">
          <div class="card">
            <div class="card-body">
            
             <img src="produtos/<?php echo $roupa['foto']?>">
               <h4 class="card-title"><?php echo $roupa['nome']?></h4>
               <h6 class="card-subtitle mb-2 text-muted">
                  R$<?php 
                  echo number_format($roupa['preco'], 2, ',', '.') 
                  ?>
               </h6>

               <a class="btn btn-success" href="carrinhoroupa.php?acao=add&id=<?php echo $roupa['id']?>" class="card-link">Comprar</a>
            </div>
          </div>
        </div>

      <?php endforeach;?>
    </div>
  </div>
  
</body>
</html>