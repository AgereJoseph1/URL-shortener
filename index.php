<?php
use Controllers\ShortenerController;

// Include the required classes
require_once 'api/v1/controllers/ShortenerController.php';
require_once 'api/v1/Router.php';

// Set the response content type to JSON
header('Content-Type: application/json');

// Initialize the ShortenerController and Router
$controller = new ShortenerController();
$router = new Router($controller);

// Handle the incoming HTTP request using the Router
$router->handleRequest($_SERVER['REQUEST_METHOD'], $_SERVER['REQUEST_URI']);

?>
