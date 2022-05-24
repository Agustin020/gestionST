<?php
function conexion()
{
    $link = mysqli_connect('localhost', 'root', '', 'gestionst', 3306);
    return $link;
}
?>