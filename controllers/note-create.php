<?php

require 'Validator.php';

$config = require 'config.php';
$db = new Database($config['database']);


$heading = 'Criar Nota';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $errros = [];

    if (! Validator::string($_POST['body'], 1, 1000)) {
        $errors['body'] = 'Uma mensagem de descrição de até 1000 caracteres é requerida.';
    }

    if (empty($errors)) {
        $db->query('INSERT INTO notes (body, user_id) VALUES(:body, :user_id)', [
            'body' => $_POST['body'],
            'user_id' => 1
        ]);
    }
}

require 'views/note-create.view.php';
