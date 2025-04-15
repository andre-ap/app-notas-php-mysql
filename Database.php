<?php

class Database
{

    public $connection;
    public $ps;

    public function __construct($config, $username = 'root', $password = 'root')
    {
        $dsn = ('mysql:' . http_build_query($config, '', ';'));

        $this->connection = new PDO($dsn, $username, $password, [
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
            // PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ]);
    }

    public function query($query, $params = [])
    {
        $this->ps = $this->connection->prepare($query);

        $this->ps->execute($params);

        return $this;
    }

    public function get() {
        return $this->ps->fetchAll();
    }

    public function find()
    {
        return $this->ps->fetch();
    }

    public function findOrFail()
    {
        $result = $this->find();

        if (! $result) {
            abort();
        }

        return $result;
    }
}
