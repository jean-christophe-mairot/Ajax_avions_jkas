<?php
include "inc/fonction.php";

$allplanes =getAll();
// test($allplanes);

echo (json_encode($allplanes));
