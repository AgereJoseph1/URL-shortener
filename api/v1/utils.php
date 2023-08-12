<?php

    // Generate a random short code
    function generateShortCode() {
        // List of characters to choose from for the short code
        $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

        $shortCode = '';
        for ($i = 0; $i < 6; $i++) {
            // Randomly select a character from the list
            $shortCode .= $characters[rand(0, strlen($characters) - 1)];
        }

        return $shortCode;
    }

    // Validate if a URL is in a valid format
    function isValidURL($url) {
        // Use the FILTER_VALIDATE_URL filter to check if the URL is valid
        return filter_var($url, FILTER_VALIDATE_URL);
    }

    ?>
