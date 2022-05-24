<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$selectMotivos = $_POST['selectMotivos'];
$descripcion = $_POST['descripcion'];
$ip = $_POST['ip'];
$selectArea = $_POST['selectArea'];

if(isset($_POST['motivoCancelacion'])){
    $motivoCancelacion = $_POST['motivoCancelacion'];
}else{
    $motivoCancelacion = '';
}

if(isset($_POST['solucion'])){
    $solucion = $_POST['solucion'];
}else{
    $solucion = '';
}

$nroArreglo = $_POST['nroArreglo'];

if($_SESSION['rol'] == 2){
    if ($co->editarTareaAgente($selectMotivos, $descripcion, $ip, $selectArea, $motivoCancelacion, $solucion, $nroArreglo)) {
        session_start();
        $_SESSION['tareaEditada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareas');
    } 
}else{
    if ($co->editarTareaAgente($selectMotivos, $descripcion, $ip, $selectArea, $motivoCancelacion, $solucion, $nroArreglo)) {
        session_start();
        $_SESSION['tareaEditada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareasAdmin');
    } 
}

