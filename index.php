<?php
  session_start(); //iniciando uma sessão

	//incluir o arquivo de conexao com o banco
	require "config/conexao.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title>Extreme Veículos</title>
	<meta charset="utf-8">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/all.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/lightbox.min.css">
	<link rel="stylesheet" type="text/css" href="css/sweetalert.css">

  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/lightbox.js"></script>
  <script type="text/javascript" src="js/parsley.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="index.php">
  	<img src="images/logo.png" alt="logo extreme">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu" aria-controls="menu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


  

  <div class="collapse navbar-collapse" id="menu">
    <ul class="navbar-nav mr-auto">
         <?php
     
      	//sql para selecionar as categorias
      	$sql = "select * from veiculo order by tipo";
      	//executar este sql
      	$result = mysqli_query($con, $sql);
      	//recuperar os dados por linha
      	while ( $dados = mysqli_fetch_array( $result ) ){

      		//separar os resultados
      		$id = $dados["id"];
      		$tipo = $dados["tipo"];
      		//echo "<p>{$id} {$categoria}</p>";
      		echo "<li class=\"nav-item\">
		        <a class=\"nav-link\" href=\"index.php?pagina=categoria&id={$id}\">
		        	{$tipo}
		    	  </a>
		        </li>";
      	}
        
      ?>
      
    </ul>
  </div>
</nav> 

<!-- banner carrousel --> 
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/banner.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/banner1.png" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/banner2.png" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- -->



<main class="container">
	<?php
		//recebe o valor da pagina (GET)
		$pagina = $_GET["pagina"] ?? "index.php";

		//$paginas = home -> paginas/home.php
		$pagina = "paginas/{$pagina}.php";

		//verificar se a página
		if ( file_exists($pagina) ) {
			//incluir a minha página
			include $pagina;
		} else {
			
		}


	?>
</main>

<footer class="bg-primary">
  <div class="container">
    <p class="text-center">hackathon 2021 - Felipe - Evandro</p>
    </p>
    <hr>
  </div>
</footer>
</body>
</html>