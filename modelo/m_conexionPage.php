<?php
function conexion()
{
    $link = mysqli_connect('localhost','agustin','software1234','gestionst','3306');
    return $link;
}
?>