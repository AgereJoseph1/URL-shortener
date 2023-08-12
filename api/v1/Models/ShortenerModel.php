<?php

    namespace Models;
    use Database;
    use PDO;

    // Include required files
    require_once 'config/Database.php';

    class ShortenerModel
    {
        private $db;

        // Constructor initializes the Database instance
        public function __construct()
        {
            $this->db = new Database();
        }

        // Generate a short URL and return it
        public function generateShortURL($url)
        {
            $pdo = $this->db->getConnection();

            // Check if a short code already exists for the URL
            $existingShortCode = $this->getExistingShortCode($url);
            if ($existingShortCode) {
                return $existingShortCode;
            }

            // Generate a unique short code and insert the URL into the database
            $shortCode = generateShortCode();
            $stmt = $pdo->prepare("INSERT INTO links (short_code, original_url) VALUES (?, ?)");
            $stmt->execute([$shortCode, $url]);

            return 'http://shrt.est/' . $shortCode;
        }

        // Get the original URL corresponding to a short code
        public function getOriginalURL($code)
        {
            $pdo = $this->db->getConnection();
            $stmt = $pdo->prepare("SELECT original_url FROM links WHERE short_code = ?");
            $stmt->execute([$code]);

            // Check for errors
            $errorInfo = $stmt->errorInfo();
            if ($errorInfo[0] !== PDO::ERR_NONE) {
                return ['error' => 'Database error: ' . $errorInfo[2]];
            }

            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($row) {
                return $row['original_url'];
            } else {
                return ['error' => 'URL not found'];
            }
        }


        // Get an existing short code for a given URL
        private function getExistingShortCode($url)
        {
            $pdo = $this->db->getConnection();
            $stmt = $pdo->prepare("SELECT short_code FROM links WHERE original_url = ?");
            $stmt->execute([$url]);
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            return ($row) ? 'http://shrt.est/' . $row['short_code'] : null;
        }
    }

    ?>
