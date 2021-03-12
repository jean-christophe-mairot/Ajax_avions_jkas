const resultDiv = document.getElementById("description");
const imageExt = document.getElementById("img_ext");
const imageInt = document.getElementById("img_int");
const moviePlane = document.getElementById("movie");

const search = document.getElementById("search");
const form = document.querySelector("form");
const dataList = document.getElementById("planesDcs");
const btn = document.getElementById("validate");

//j'ecoute une pression d'une touche dans l'input search
search.addEventListener("input", (e) => {
	//pas de reload de la page
	e.preventDefault();
	const searchString = e.target.value;
	console.log(searchString);

	// remise à 0 de resultDiv
	resultDiv.innerHTML = "";
	dataList.innerHTML = "";
	if (search.value !== "") {
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
				const planes = JSON.parse(xhr.response);
				//foreach in
				console.log(planes);

				planes.forEach((plane) => {
					// affichage des option
					let createOption = document.createElement("option");
					console.log(createOption);
					// attribution d'une classe
					createOption.className = "classOption";
					// ajoute un contenu à l'option
					createOption.innerHTML = plane.plane_name;
					//insére dans dataList
					dataList.appendChild(createOption);

					// ici le code de dessous
				});
				// debut condition

				//fin de condition
			}
		});
	}
});

btn.addEventListener("click", (e) => {
	e.preventDefault();
	console.log("what the fuck");

	// remise à 0 de resultDiv
	resultDiv.innerHTML = "";

	if (search.value !== "") {
		//création d'un
		const xhr1 = new XMLHttpRequest();
		//ensemble de clef valeurs du form
		const formData1 = new FormData(form);
		//connexion avec le fichier PHP en méthode "POST"
		xhr1.open("POST", "ajax.php");
		//envoie les données du formulaire
		xhr1.send(formData1);
		//écoute readystatechange
		xhr1.addEventListener("readystatechange", () => {
			//readyState = 4 et status = 200
			if (xhr1.readyState === 4 && xhr1.status === 200) {
				//je récupère le JSON renvoyé dans une variable. Je parse le JSON afin d'obtenir un objet JavaScript
				const planes = JSON.parse(xhr1.response);
				//foreach in
				console.log(planes);
				planes.forEach((plane) => {
					//fabrique une brique
					resultDiv.innerHTML = plane.description;
					imageExt.innerHTML = `<img src="${plane.image_ext}" alt="" srcset="">`;
					imageInt.innerHTML = `<img src="${plane.image_cockpit}" alt="" srcset="">`;
					moviePlane.innerHTML = plane.movie;
				});
			}
		});
	}
});
