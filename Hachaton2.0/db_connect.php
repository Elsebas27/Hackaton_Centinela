<?php
// Configuración de la base de datos
$host = 'localhost';
$db = 'centinela';
$user = 'root';  // Cambia el usuario si es necesario
$pass = '';  // Añade la contraseña de MySQL si tienes una

// Crear la conexión
$conn = new mysqli($host, $user, $pass, $db);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>