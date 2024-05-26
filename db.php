<?php
// Database connection parameters
$hostname = '127.0.0.1';  // The IP address of the local host
$username = 'root';       // The MySQL username
$password = '';           // The MySQL password (empty if not set)
$dbname = 'registerr';  // The database name

// DSN (Data Source Name) for PDO
$dsn = "mysql:host=$hostname;dbname=$dbname;charset=utf8mb4"; // UTF-8 for proper character encoding

// PDO options
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,  // Throw exceptions on errors
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,  // Default fetch mode: associative array
    PDO::ATTR_EMULATE_PREPARES => false,  // Native prepares for security and performance
];

// Establish a connection using PDO
try {
    $pdo = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    // Handle connection error
    die("Database connection failed: " . $e->getMessage());  // Display error message and stop execution
}

?>
