<?php
$config = require('config.php');
$db = new Database($config['database']);

$heading = 'Minhas Anotações';

$notes = $db->query('select * from notes where user_id = 1')->fetchAll();

require_once 'views/notes.view.php';
