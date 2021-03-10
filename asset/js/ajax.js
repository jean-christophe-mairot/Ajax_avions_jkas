const resultDiv = document.getElementById("description");
const form = document.querySelector("form");

//Version fetch
form.addEventListener("submit", (e) => {
  e.preventDefault();

  const formData = new FormData(form);

  //On communique avec le script passé en 1er argument sous forme de caractère
  fetch(
    "../ajax.php",
    //2ème argument de fetch, le corps de notre requête, dans notre cas on précise la méthode "POST" et le body (les données) soit le formData
    {
      method: "POST",
      body: formData,
    }
  )
    //Nous recevons une Response du serveur, nous retournons une Promise résolue qui contiendra les données parsées en JSON, soit un objet JS
    .then((response) => response.json())
    //Nous recevons ENFIN nos données comme un objet JS
    .then((data) => {
      //on manipule nos données
      console.log(data);

      resultDiv.innerHTML = `<p> ${data.description[1]} </p>`;

      //je vide mon formulaire
      form.reset();
    })
    .catch((e) => {
      console.error(e);
      resultDiv.innerHTML = `<p>Désolé, nous avons rencontré une erreur dans le système</p>`;
    });
});
