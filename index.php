<?php
include "header.php";
?>
<div class="container">
	<div>
		<form action="">
			<!-- champ de recherche du user -->
			<label for="search">Faite votre recherche</label>
			<input type="text" name="search" id="search" placeholder="Search.." />
			<!-- champ de proposition venant de la base de donnée -->
			<label for="resultSearch">Proposition</label>
			<input type="text" name="resultSearch" id="resultSearch" />
		</form>
	</div>
	<div>
		<!-- resultat de la recherche -->
	</div>
</div>
<?php
include "footer.php";
?>