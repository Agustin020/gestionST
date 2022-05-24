<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="ej.php" method="post">
        <label for="">Generar contraseña</label>
        <input type="text" name="pass" id="">
        <button name="btnEnviar" type="submit">Enviar</button>
    </form>
</body>

</html>

<?php
error_reporting(0);
if (isset($_POST['btnEnviar'])) {
    $pass = $_POST['pass'];
    $passFuerte = password_hash($pass, PASSWORD_DEFAULT);
    echo '<p>Contraseña encriptada: ' . $passFuerte . '</p>';
}
?>