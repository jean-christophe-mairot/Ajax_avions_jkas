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

// fonction de test
function test($arg){
    
    echo "<pre>";
    var_dump($arg);
    echo "</pre>";
    echo "<br>";


}