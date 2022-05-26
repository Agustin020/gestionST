<?php
$link = mysqli_connect('localhost', 'root', '', 'ejemplo', '3306');

if (isset($_POST['btnEnviar'])) {
    $pass = $_POST['pass'];
    $passFuerte = password_hash($pass, PASSWORD_DEFAULT);
    echo '<p>Contraseña encriptada: ' . $passFuerte . '</p>';
}
