<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$selectMotivo = $_POST['selectMotivos'];
$descripcion = $_POST['descripción'];
$ip = $_POST['ip'];
$area = $_POST['selectArea'];

if ($co->agregarTareaEncargado($selectMotivo, $descripcion, $ip, $area)) {
    session_start();
    $_SESSION['tareaOK'] = true;
    header('location: ../vista/index.php?accion=listarTareas');
} else {
    session_start();
    $_SESSION['tareaAgregadaError'] = true;
    header('location: ../vista/index.php?accion=listarTareas');
}
