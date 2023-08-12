# URL Shortening API Documentation

This guide will walk you through the installation, usage, and endpoints of the URL Shortening service. This service allows you to encode lengthy URLs into short, shareable links and decode them back to their original form.

## Introduction

The URL Shortening API provides a reliable solution to convert long URLs into compact, user-friendly short links. Developed without the use of any third-party frameworks, this API ensures both the security and privacy of your data.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- PHP installed on your local machine (version 7.0 or higher)
- MySQL database server installed and running
- Git installed (for cloning the repository)
- Basic understanding of working with databases and APIs

## Installation

To install and run the URL Shortening API on your local machine, follow these steps:

1. Clone the repository from GitHub:

    ```bash
    git clone https://github.com/AgereJoseph1/URL-shortener.git
    ```

2. Navigate to the project directory:

    ```bash
    cd URL-shortener
    ```

3. Configure your local development environment with PHP and MySQL.

4. Import the database schema using the provided SQL file (e.g., `URL_shortener.sql`).

5. Update the database connection settings in the `Database.php` file inside the config directory.Update the values of these variables inside the Database.php file:


| Variable       | Function of the Variable         | Example                    |
|----------------|----------------------------------|----------------------------|
| `$host`         | Hostname of the MySQL database   | `localhost`                |
| `$db_name`     | Name of the database             | `url_shortener`            |
| `$username`    | MySQL database username          | `root`                     |
| `$password`    | MySQL database password          | `mysecretpassword`         |
 

6. Start a local development server using PHP's built-in server:

    ```bash
    php -S localhost:8000
    ```

## Endpoints

### Encode

Encode a long URL into a short link.

- **Method:** POST
- **Endpoint:** `http://your-domain.com/URL-shortener/encode`

**Request body:**
```json
{
    "url": "https://example.com/long-url"
}
```

**Response (Success):**

```json
{
    "status": "success",
    "data": {
        "short_url": "http://shrt.est/PpE7NB"
    }
}
```

**Response (Error):**

```json
{
    "status": "error",
    "data": {
        "message": "Invalid URL"
    }
}
```

### Decode

Retrieve the original URL from a short link.

- **Method:** GET
- **Endpoint:** `URL-shortener/decode`

**Request:**

```bash
curl http://your-domain.com/URL-shortener/decode?short_url=http://shrt.est/PpE7NB
```
None required, just pass in your query string parameters as above and hit enter!

**Response (Success):**

```json
{
    "status": "success",
    "data": {
        "original_url": "https://example.com/long-url"
    }
}
```

**Response (Error):**

```json
{
    "status": "error",
    "data": {
        "message": "Short URL not found"
    }
}
```

## Response Format

Responses from the API are in JSON format and contain the following fields:

- `status`: Indicates the status of the request (`success` or `error`).
- `data`: Contains the relevant data for a successful request.
- `error`: Provides an error message for unsuccessful requests.

## Testing with API Tools

You can test the URL Shortening API using popular API testing tools like Postman or any other API testing that you are familiar with. Use these tools to send requests to the API endpoints and observe the responses. This enables you to validate the functionality and behavior of the API before integrating it into your applications.

