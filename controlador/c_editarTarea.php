<?php
session_start();
require('../modelo/m_consultas.php');
$co = new Consultas();

$selectArea = $_POST['selectArea'];
$selectMotivos = $_POST['selectMotivos'];
$descripcion = $_POST['descripcion'];
$ip = $_POST['ip'];
$selectDireccion = $_POST['selectDireccion'];

if (isset($_POST['nombreApellidoAfectado'])) {
    $nombre_apellido = $_POST['nombreApellidoAfectado'];
} else {
    $nombre_apellido = '';
}

if (isset($_POST['cel'])) {
    $cel = $_POST['cel'];
} else {
    $cel = '';
}

if (isset($_POST['motivoCancelacion'])) {
    $motivoCancelacion = $_POST['motivoCancelacion'];
} else {
    $motivoCancelacion = '';
}

if (isset($_POST['solucion'])) {
    $solucion = $_POST['solucion'];
} else {
    $solucion = '';
}

$nroArreglo = $_POST['nroArreglo'];

$areaUsuario = $_SESSION['areaUsuario'];

if (isset($_SESSION['areaUsuario2'])) {
    $areaUsuario2 = $_SESSION['areaUsuario2'];
} else {
    $areaUsuario2 = '';
}

/*echo 'nroArreglo: ' . $nroArreglo . '<br>' . 
'selectMotivos: ' . $selectMotivos . '<br>' .
'descripcion: ' . $descripcion . '<br>' .
'ip: ' . $ip . '<br>' .
'selectDireccion: ' . $selectDireccion . '<br>' .
'nombreApellido: ' . $nombre_apellido . '<br>' .
'celular: ' . $cel . '<br>' .
'Motivo Cancelación: ' . $motivoCancelacion . '<br>' .
'solucion: ' . $solucion . '<br>';*/

if ($_SESSION['rol'] == 2) {
    if ($co->editarTareaAgente($selectMotivos, $descripcion, $ip, $nombre_apellido, $cel, $selectDireccion, $motivoCancelacion, $solucion, $selectArea, $nroArreglo)) {
        $_SESSION['tareaEditada'] = true;
        if ($_SESSION['cantAreas'] == 1) {
            header('location: ../vistaAgente/index.php?accion=listarTareas&listado=actual&area=' . $areaUsuario);
        } else {
            header('location: ../vistaAgente/index.php?accion=listarTareas&listado=actual&area=' . $areaUsuario . '&area2=' . $areaUsuario2);
        }
    }
} else if ($_SESSION['rol'] == 3) {
    if ($co->editarTareaAgente($selectMotivos, $descripcion, $ip, $nombre_apellido, $cel, $selectDireccion, $motivoCancelacion, $solucion, $selectArea, $nroArreglo)) {
        $_SESSION['tareaEditada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareasAdmin&lista=actual');
    }
} else {
    if ($co->editarTareaAgente($selectMotivos, $descripcion, $ip, $nombre_apellido, $cel, $selectDireccion, $motivoCancelacion, $solucion, $selectArea, $nroArreglo)) {
        $_SESSION['tareaEditada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareasAdmin&area=' . $areaUsuario . '&lista=actual');
    }
}
