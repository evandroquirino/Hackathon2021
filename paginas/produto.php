<?php
	//verificar se a variável $pagina não existe
	if ( !isset ( $pagina ) ) exit;

	//print_r ( $_GET );

	//recuperacao do id
	//trim retira espaços em branco
	$id = trim( $_GET["id"] ?? "" );

	$id = (int)$id;

	//var_dump($id);
	//recuperar o veiculo com o id
	$sql    = "select * from veiculo where id = {$id} limit 1";
	$result = mysqli_query($con, $sql);
	$dados  = mysqli_fetch_array($result);

	//print_r ( $dados );

	//recuperar os dados do banco
	$id 	   = $dados["id"];
	$modelo   = $dados["modelo"];
	$anoModelo     = $dados["anoModelo"];
	$anoFabricacao     = $dados["anoFabricacao"];
	$valor = $dados["valor"];
	$tipo_id    = $dados["tipo_id"];
	$fotodestaque    = $dados["fotodestaque"];
	$marca_id    = $dados["marca_id"];
	$cor_id    = $dados["cor_id"];
	$opcionais    = $dados["opcionais"];
	$valor = "R$ " . number_format($valor, 2, ",", ".");


?>
<h1><?=$modelo?></h1>
<div class="row">
	<div class="col-12 col-md-4">
		<a href="images/<?=$fotodestaque?>.png" data-lightbox="modelo" title="<?=$modelo?>">
			<img src="images/<?=$fotodestaque?>.png" alt="<?=$modelo?>" class="w-100">
		</a>
	</div>
	
		<h2 class="text-center">Descrição do Produto:</br>
		<p>  Modelo: <?=($anoModelo);?></br> </p>
		<p> fabricação: <?=($anoFabricacao);?></br> </p>
		<p>Valor: <?=($valor);?></br> </p>
		<p> Opcionais: <?=($opcionais);?></br> </p>
		</h2>
		

		
	</div>
</div>
<footer >
  <div class="container">
    <p class="text-center">hackathon 2021 - Felipe - Evandro</p>
    </p>
    <hr>
  </div>
</footer>
