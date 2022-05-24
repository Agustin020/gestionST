<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$selectMotivos = $_POST['selectMotivos'];
$descripcion = $_POST['descripcion'];
$ip = $_POST['ip'];
$area = $_POST['selectArea'];

if ($_SESSION['rol'] == 2) {
    if ($co->agregarTareaAgente($selectMotivos, $descripcion, $ip, $area)) {
        session_start();
        $_SESSION['tareaOK'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareas');
    }
}else{
    if ($co->agregarTareaAgente($selectMotivos, $descripcion, $ip, $area)) {
        session_start();
        $_SESSION['tareaOK'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareasAdmin');
    }
}
