<?php 

$config = require('config.php');
$db = new Database($config['database']);


$heading = 'Criar Nota';

if ($_SERVER['REQUEST_METHOD'] === 'POST'){

    $errros = [];

    if (strlen($_POST['body']) === 0){
        $errors['body'] = 'Uma mensagem de descrição é requerida.';
    }

    if (strlen($_POST['body']) > 1000){
        $errors['body'] = 'A mensagem de descrição não pode ter mais de 1000 caracteres.';
    }

    if (empty($errors)) {
        $db->query('INSERT INTO notes (body, user_id) VALUES(:body, :user_id)', [
            'body' => $_POST['body'],
            'user_id' => 1
        ]);
    }

    
}

require 'views/note-create.view.php';