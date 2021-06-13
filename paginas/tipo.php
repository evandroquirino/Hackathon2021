<?php
	//verificar se a variável $pagina não existe
	if ( !isset ( $pagina ) ) exit;
	$id = $_GET['id'] ?? '';

	$sql = "select tipo from tipo where id = ".(int)$id." limit 1";
	$result = mysqli_query($con, $sql);
	$dados = mysqli_fetch_array( $result );
?>
<h1><?=$dados['tipo']?></h1>


<div class="row">
	<?php
		//selecionar 6 produtos - rand -> sorteio - limit limitar o nr de resultado
		$sql = "select * from veiculo where tipo_id = ".(int)$id;
		//executar o sql
		$result = mysqli_query($con, $sql);

		//separar os dados por linha
		while ( $dados = mysqli_fetch_array( $result ) ) {
			//separar
			$id = $dados["id"];

			$modelo = $dados["modelo"];
			$fotodestaque = $dados["fotodestaque"];
			$valor = $dados["valor"];
			$valor = "R$ " . number_format($valor, 2, ",", ".");


			echo "<div class='col-12 col-md-4 text-center'>
				<img src='images/{$fotodestaque}.png' alt='{$fotodestaque}' class='w-100'>
				<h2>{$modelo}</h2>
				<h2>{$valor}</h2>
				<p>
					<a href='index.php?pagina=produto&id={$id}' class='btn btn-success btn-lg w-100'>
					Detalhes
					</a>
				</p>
			</div>";

		}
	?>
</div>

