<?php 
include'head.php';
 ?>



	<body>



<section>
<hr>
	<div class="container-fluid superior ">

	<div class="container">
  <div class="row">

    <?php
include "conexao.php";

$sql = "SELECT * FROM jogo";
$result = $conn->query($sql);

if($result->num_rows>0){
  while($row = $result->fetch_assoc()){
    // echo "<img class='card-img-top'src=".$row['foto']."alt='Card image cap'>";
    
    echo "<div class='col-sm'>";
    echo "<div class='card' style='width: 18rem'>";

   echo "<img src='produtos/".$row['foto']."'>";
    echo "<div class='card-body'>";
    echo "<h5 class='card-title'>".$row['nome']."</h5>";
    echo "<p class='card-text'> ".$row['descricao']." </p>";
    echo "</div>";
    echo"</div>";
    echo"</div>";


  
  }
}
else{
  echo "0 resultados";
}
$conn->close();
?>

</div>
    </div>
    
</div>
    </div>
  </div>
</div>



</div>
	</div>
</div>
</section>
	</body>
<?php 
include 'footer.php';
 ?>








