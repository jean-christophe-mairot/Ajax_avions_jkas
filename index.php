<?php
include "inc/header.php";
require 'inc/fonction.php';
//fonction pour recup les recherches
$searchResults = getSearch();
// test($searchResults);


?>
<div class="container">
	<div class="searchBar">
		<form action="" method="POST">
			<!-- champ de recherche du user -->
			<label for="search">Faite votre recherche</label>
			<input type="search" list="planesDcs" autocomplete="off" name="search" id="search" placeholder="Search.." />
			<datalist id="planesDcs"></datalist>	
			<button type="submit" id="validate" value="validate">envoyer</button>
				
		</form>
	</div>
		<div class="flex">
			<div class="test" id="description">
				<!-- resultat de la recherche txt description-->
			</div>
			<div class="test" id="imgMovie">
				<!-- resultat de la recherche img-->
				<div class="testImg" id="img_ext">img1</div>
				<div class="testImg" id="img_int">img1</div>
				<div class="testImg" id="movie">img1</div>
			</div>
		</div>
	</div>

<?php
include "inc/footer.php";
?>
