- on fait une recherche dans un input
- autocomplétion fait en fonction de la base de donné
- ascync lors de la recherche

---

Projet JS « Passion de l’asynchrone <3 »
Projet individuel
Premier retour dessus : vendredi
Deadline : lundi ou mardi prochain (à voir selon ce qu’on aura vendredi)

Vous devrez réaliser un site One-Page sur un sujet libre qui contiendra de l’asynchrone. La page sera composée d’un formulaire avec un input texte. Lorsque l’utilisateur tape dans l’input, des propositions correspondant à ce qu’il écrit lui seront faites (comme dans Allociné). Ces propositions viendront des données que vous aurez dans votre base de données. Une fois le formulaire validé, le reste de la page web sera rempli avec les informations correspondantes à la recherche. Si le formulaire est validé avec « plusieurs réponses possibles », nous discuterons de comment gérer cela. XHR, fetch, axios, peut m’importe mais je veux de l’asynchrone. Le sujet est libre afin que vous puissiez vous amuser dessus. Voyez ce projet comme un ajout sympa à votre portfolio, une occasion de rendre curieux un visiteur de votre site afin qu’il en découvre plus sur vous 😉 du coup mettez des textes sympas et ayez un joli design (et responsive)

La base de données n’a pas besoin d’être complexe, une table suffit. Soyez cohérent dans vos données, pour chaque ligne de votre table vous devez avoir les mêmes infos (exemple : titre, auteur, année, image, etc).

Exemple : Sur le thème du foot, vous pouvez par exemple sélectionner vos 10 joueurs préférés et essayer de faire deviner à l’utilisateur qui est votre top 10. On peut faire le même principe sur des livres, films, pizzas, etc.

Ressources :
XMLHttpRequest ok
Fetch ok
LIKE (SQL) ok
Datalist (HTML) ==> menu

- https://www.alsacreations.com/article/lire/1418-css3-transformations-2d.html#rotate
- https://outils-css.aliasdmc.fr/generateur-de-triangles-css.php
- https://developer.mozilla.org/fr/docs/Web/HTML/Element/datalist
- https://www.youtube.com/watch?v=wxz5vJ1BWrc
- https://www.w3schools.com/tags/ref_eventattributes.asp

```
document.createElement
let element = document.createElement(tagName[, options]);
---
**ESCADRILLE JKAS**


- [] header avec la photo de l'avion en cour
- [] footer ??? juste un fond pour l'instant
- [] en dessous du header une grande carde
    - [] entête formulaire
    - [] en dessous de l'entête description complète de l'avion
    - [] si pas d'avion selectionné mettre une desciption de dcs

```

---

**BASE DE DONNEES**

nom de l'avion / description / image_cockpit/ image_ext / video

constructione d'une brique div dans une foreach js

planes.forEach((plane) => {
// const uneBrique = document.createElement("div");
// // Ajoute une classe à cette brique pour lui donner un style via CSS
// uneBrique.className = "classBrique";
// // Ajoute un contenu à cette brique...
// //condition if possible
// uneBrique.innerHTML = plane.description;
// // Insére cette brique dans la div resultDiv
// resultDiv.appendChild(uneBrique);
// // ici le code de dessous
});
