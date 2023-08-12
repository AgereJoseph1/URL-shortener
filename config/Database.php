<?php

    class Database {
        private $host = 'localhost';
        private $dbName = 'url_shortener';
        private $username = 'root';
        private $password = '';
        private $pdo;

        // Constructor establishes a database connection
        public function __construct() {
            try {
                // Create a PDO instance for database connection
                $this->pdo = new PDO("mysql:host=$this->host;dbname=$this->dbName;charset=utf8mb4", $this->username, $this->password);

                // Set error handling mode to throw exceptions
                $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch (PDOException $e) {
                // Terminate script execution with an error message
                die("Database connection failed: " . $e->getMessage());
            }
        }

        // Retrieve the PDO connection instance
        public function getConnection() {
            return $this->pdo;
        }
    }

    ?>
