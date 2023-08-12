<?php

    namespace Controllers;

    use Models\ShortenerModel;

    // Include the required classes and utilities
    require_once __DIR__ . '/../models/ShortenerModel.php';
    require_once __DIR__ . '/../utils.php';

    /**
     * ShortenerController class handles URL shortening and decoding operations.
     */
    class ShortenerController
    {
        private $model;

        /**
         * ShortenerController constructor.
         * Initializes an instance of the ShortenerModel.
         */
        public function __construct()
        {
            $this->model = new ShortenerModel();
        }

        /**
         * Encodes a URL to a shortened URL.
         *
         * @param array $data Input data containing the 'url' parameter.
         * @return string|array The generated short URL or an error message.
         */
        public function encode($data)
        {
            if (isset($data['url'])) {
                $originalURL = $data['url'];

                if (isValidURL($originalURL)) {
                    // Generate and return the short URL
                    $shortURL = $this->model->generateShortURL($originalURL);
                    return $shortURL;
                } else {
                    // Return an error message for invalid URL
                    return ['error' => 'Invalid URL'];
                }
            } else {
                // Return an error message for missing URL parameter
                return ['error' => 'Missing URL'];
            }
        }

        /**
         * Decodes a shortened URL back to the original URL.
         *
         * @param string $code The short code to decode.
         * @return string|array The original URL or an error message.
         */
        public function decodeFromShortUrl($shortUrl)
        {
            // Extract the code from the short URL (e.g., http://shrt.est/C72kjZ)
            $code = substr($shortUrl, strrpos($shortUrl, '/') + 1);

            // Retrieve the original URL using the ShortenerModel
            $originalURL = $this->model->getOriginalURL($code);

            if ($originalURL) {
                // Return the original URL
                return $originalURL;
            } else {
                // Return an error message if URL is not found
                return ['error' => 'URL not found'];
            }
        }
    }



