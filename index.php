<?php
include "inc/header.php";
require 'inc/fonction.php';
//fonction pour recup les recherches
$searchResults = getSearch();
// test($searchResults);


?>
	<div class="flex">
		<div class="searchBar">
			<form action="" method="POST">
				<!-- champ de recherche du user -->
				<label for="search"></label>
				<input type="search" list="planesDcs" autocomplete="off" name="search" id="search" placeholder="Quel avions ?" />
				<datalist id="planesDcs"></datalist>	
				<button class="btn" type="submit" id="validate" value="validate"></button>
			</form>
		</div>		
	</div >
</div >
<!-- fermeture div qui commence dans le header -->
<!-- debut de la card -->
		<div class="planeName">
			<h2 id="plane_name"></h2>
		</div> 
		<div class="card">
			
			<div class="content_card">
				<div class="planeDescription" id="description"></div>
			</div>
				<!-- resultat de la recherche txt description-->
			<!-- </div> -->

			<!-- <div class="" id="imgMovie"> -->
				<!-- resultat de la recherche img-->
			<div class="content_card">
				<div class="imgplane" id="img_ext"></div>
				<div class="imgplane" id="img_int"></div>
				<!-- <div class="" id="movie"></div> -->
			</div>		
		</div>
	

<?php
include "inc/footer.php";
?>
