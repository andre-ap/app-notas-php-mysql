<?php

$config = require('config.php');
$db = new Database($config['database']);

$heading = 'Notas';
$currentUserId = 1;

$note = $db->query('select * from notes where  id = :id', [
    'id' => $_GET['id']
])->findOrFail();

authorize($note['user_id'] === $currentUserId);

if ($note['user_id'] !== $currentUserId) {
    abort(Response::FORBIDDEN);
}

require 'views/note.view.php';
