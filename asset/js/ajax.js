const resultDiv = document.getElementById("description");
const search = document.getElementById("search");
const form = document.querySelector("form");
let createDiv = document.createElement("div");

//j'ecoute une pression d'une touche dans l'input search
search.addEventListener("input", (e) => {
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
			console.log(values);
			values.forEach((value) => {
				// fabrique une brique
				const uneBrique = document.createElement("div");
				// Ajoute une classe à cette brique pour lui donner un style via CSS
				uneBrique.className = "classBrique";
				// Ajoute un contenu à cette brique...
				uneBrique.innerHTML = value.description;
				// Insére cette brique dans la div resultDiv
				resultDiv.appendChild(uneBrique);
			});
		}
	});
});
