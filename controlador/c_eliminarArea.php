<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$codigo = $_GET['codigo'];

if ($co->eliminarArea($codigo)) {
    session_start();
    $_SESSION['eliminadoOk'] = true;
    header('location: ../vistaAgente/index.php?accion=listarAreas');
} else {
    header('location: ../vistaAgente/index.php?accion=listarAreas');
}
