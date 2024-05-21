<?php

require 'functions.php';

require 'router.php';

// Conexão com banco de dados MySQL

//select nome, telefone from funcionarios

class Database {
    
    public $connection;

    public function __contruct ()
    {
        $this->connection = new PDO(
        "mysql:host=localhost;port=3306;dbname=empresa;charset=utf8mb4",
        'root',
        '2212',
        [ PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION ]
        );
    }

    public function query($query)
    { 
        $ps = $this->connection->prepare($query);
        $ps->execute();

        return $ps->fetchAll(PDO::FETCH_ASSOC);
    }
}

$db = new Database();
$funcionarios = $db->query('select nome, telefone from funcionarios');

foreach ($funcionarios as $f){
    echo "<li>" . $f['nome'] . ' - ' . $f['telefone'] . "</li>";
}

