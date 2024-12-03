<?php
class Database {
    protected function connect() {
    try {
        $username = "root";
        $password = "";
        $dbh = new PDO("mysql:host=localhost;dbname=soft_eng_job_app_db", $username, $password);
        return $dbh;

    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
        die();
    }
}
}