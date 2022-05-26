<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$selectMotivos = $_POST['selectMotivos'];
$descripcion = $_POST['descripcion'];
$ip = $_POST['ip'];
$area = $_POST['selectArea'];

if ($co->agregarTareaEncargado($selectMotivos, $descripcion, $ip, $area)) {
    session_start();
    $_SESSION['tareaOK'] = true;
    header('location: ../vista/index.php?accion=listarTareas');
} else {
    session_start();
    $_SESSION['tareaAgregadaError'] = true;
    header('location: ../vista/index.php?accion=listarTareas');
}
