<?php

// Define a Router class to handle incoming requests
class Router
{
    private $controller;

    // Constructor to set the controller instance
    public function __construct($controller)
    {
        $this->controller = $controller;
    }

    // Handle incoming requests based on method and URI
    public function handleRequest($requestMethod, $requestUri)
    {
        switch ($requestMethod) {
            case 'POST':
                // Handle POST requests
                if ($requestUri === '/URL-shortener/encode') {
                    $this->handleEncodeRequest();
                } else {
                    // Respond with error for unknown endpoints
                    $this->respondError(404, 'Endpoint not found');
                }
                break;

            case 'GET':
                // Handle GET requests
                if (isset($_GET['short_url']) && strpos($requestUri, '/URL-shortener/decode') !== false) {
                    $this->handleDecodeRequest();
                } else {
                    // Respond with error for missing or invalid short_url parameter
                    $this->respondError(400, 'Missing or invalid short_url parameter');
                }
                break;

            default:
                // Respond with error for unsupported methods
                $this->respondError(405, 'Method not allowed');
                break;
        }
    }

    // Handle encode requests
    private function handleEncodeRequest()
    {
        // Get request data
        $data = json_decode(file_get_contents('php://input'), true);

        // Check if request data is valid
        if (!$data || !isset($data['url'])) {
            $this->respondError(400, 'Invalid or missing URL data');
            return;
        }

        // Call controller's encode method
        $result = $this->controller->encode($data);

        // Respond with success or error
        if (isset($result['error'])) {
            $this->respondError(400, $result['error']);
        } else {
            echo json_encode(['status' => 'success', 'data' => ['short_url' => $result]]);
        }
    }

    // Handle decode requests
    private function handleDecodeRequest()
    {
        // Get short URL from query parameter
        $shortUrl = $_GET['short_url'];

        // Call controller's decodeFromShortUrl method
        $result = $this->controller->decodeFromShortUrl($shortUrl);

        // Respond with success or error
        if (isset($result['error'])) {
            $this->respondError(404, $result['error']);
        } else {
            echo json_encode(['status' => 'success', 'data' => ['original_url' => $result]]);
        }
    }

    // Respond with error message
    private function respondError($statusCode, $message)
    {
        http_response_code($statusCode);
        echo json_encode(['status' => 'error', 'error' => ['message' => $message]]);
    }
}

?>
