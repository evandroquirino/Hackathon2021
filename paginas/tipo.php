<?php
	//verificar se a variável $pagina não existe
	if ( !isset ( $pagina ) ) exit;
	$id = $_GET['id'] ?? '';

	$sql = "select tipo from tipo where id = ".(int)$id." limit 1";
	$result = mysqli_query($con, $sql);
	$dados = mysqli_fetch_array( $result );
?>
<h1><?=$dados['tipo']?></h1>

