<?php
include 'bdd.php';

// recup tous les avions de la base de données
function getAll()
{
    $bdd = getBdd();
    $result = $bdd->query("SELECT * FROM avions");
    $allplanes = $result->fetchall();
    return $allplanes;
}
function getSearch(){
    $bdd = getBdd();
    //securise les données avec htmlspecialchars
    if(isset($_POST['search']) && !empty($_POST['search'])){

    $search = htmlspecialchars($_POST['search']);
    // exlode pour la separation des recherches
    // $search_array = explode(' ', $search);
    $planes=$bdd->query("SELECT * FROM avions WHERE plane_name LIKE '%". $search ."%' ORDER BY id_avion DESC");
    return $planes;
    }
}
// fonction de test
function test($arg){
    
    echo "<pre>";
    var_dump($arg);
    echo "</pre>";
    echo "<br>";


}
