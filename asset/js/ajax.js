const resultDiv = document.getElementById("description");
const search = document.getElementById("search");
const form = document.querySelector("form");

//j'ecoute une pression d'une touche dans l'input search
search.addEventListener("keyup", (e) => {
	//pas de reload de la page
	e.preventDefault();
	const searchString = e.target.value;
	console.log(searchString);

	//création d'un
	const xhr = new XMLHttpRequest();
	//ensemble de clef valeurs du form
	const formData = new FormData(form);
	//connexion avec le fichier PHP en méthode "POST"
	xhr.open("POST", "ajax.php");
	//envoie les données du formulaire
	xhr.send(formData);
	//écoute readystatechange
	xhr.addEventListener("readystatechange", () => {
		//readyState = 4 et status = 200
		if (xhr.readyState === 4 && xhr.status === 200) {
			//je récupère le JSON renvoyé dans une variable. Je parse le JSON afin d'obtenir un objet JavaScript
			const values = JSON.parse(xhr.response);
			//foreach in
			values.forEach((value) => {
				//Je mets à jour le visuel avec les données reçues, syntaxe ES6 : https://developer.mozilla.org/fr/docs/Web/JavaScript/Reference/Template_literals
				resultDiv.innerText = value.description;
				console.log(value);
			});

			//foreach out
		}
	});
});

var mycars = new Array();
mycars[0] = "Herr";
mycars[1] = "Frau";

var options = "";

for (var i = 0; i < mycars.length; i++) {
	options += '<option value="' + mycars[i] + '" />';
}

document.getElementById("anrede").innerHTML = options;

//si champ vide on propose rien
//boucle array.forEach(element => {

// });

// solution 2
// const formData = new FormData(form);

// //On communique avec le script passé en 1er argument sous forme de caractère
// fetch(
// 	"ajax.php",
// 	//2ème argument de fetch, le corps de notre requête, dans notre cas on précise la méthode "POST" et le body (les données) soit le formData
// 	{
// 		method: "POST",
// 		body: formData,
// 	}
// )
// 	//Nous recevons une Response du serveur, nous retournons une Promise résolue qui contiendra les données parsées en JSON, soit un objet JS
// 	.then((response) => response.json())
// 	//Nous recevons ENFIN nos données comme un objet JS
// 	.then((data) => {
// 		//on manipule nos données
// 		console.log(data);

// 		//recuperation de l'index [0] qui correspond a la premiere entree du tableau
// 		resultDiv.innerHTML = `<p> ${data[0].description} </p>`;
// 		//je vide mon formulaire
// 		//form.reset();
// 	})
// 	.catch((e) => {
// 		console.error(e);
// 		resultDiv.innerHTML = `<p>Désolé, nous avons rencontré une erreur dans le système</p>`;
// 	});
