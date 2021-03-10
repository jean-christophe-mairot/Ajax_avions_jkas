<?php
include "inc/header.php";


// test($allplanes);

?>
<div class="container">
	<div class="searchBar">
		<form action="" method="post">
			<!-- champ de recherche du user -->
			<label for="search">Faite votre recherche</label>
			<input type="search" name="search" id="search" placeholder="Search.." />
			<button type="submit" value="validate">envoyer</button>
			<!-- champ de proposition venant de la base de donnée -->
			<!-- <label for="resultSearch">Proposition</label>
			<input type="text" name="resultSearch" id="resultSearch" />		 -->
		</form>
	</div>
		<div class="flex">
			<div class="test" id="description">
				<!-- resultat de la recherche txt description-->
			</div>
			<div class="test">
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