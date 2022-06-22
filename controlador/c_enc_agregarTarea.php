<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$selectMotivos = $_POST['selectMotivos'];
$descripcion = $_POST['descripcion'];
$ip = $_POST['ip'];
$nombreApellido = $_POST['nombreApellidoAfectado'];
$cel = $_POST['cel'];
$direccion = $_POST['selectDireccion'];

if ($co->agregarTareaEncargado($selectMotivos, $descripcion, $ip, $nombreApellido, $cel, $direccion)) {
    session_start();
    $_SESSION['tareaOK'] = true;
    header('location: ../vista/index.php?accion=listarTareas');
} else {
    session_start();
    $_SESSION['tareaAgregadaError'] = true;
    header('location: ../vista/index.php?accion=listarTareas');
}
