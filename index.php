<?php

require 'functions.php';
// require 'router.php';
require 'Database.php';


$config = require('config.php');

$db = new Database($config['database']);

$funcionarios = $db->query('select nome, telefone from funcionarios');


foreach ($funcionarios as $f){
    echo "<li>" . $f['nome'] . ' - ' . $f['telefone'] . "</li>";
}

