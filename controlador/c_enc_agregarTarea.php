<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$selectMotivos = $_POST['selectMotivos'];
$descripcion = $_POST['descripcion'];
if(isset($_POST['ip'])){
    $ip = $_POST['ip'];
}else{
    $ip = '';
}

$nombreApellido = $_POST['nombreApellidoAfectado'];
$cel = $_POST['cel'];
$direccion = $_POST['selectDireccion'];
$selectArea = $_POST['selectArea'];

/*echo 'SelectMotivos: ' . $selectMotivos . '<br>' .
'descripcion: ' . $descripcion . '<br>' .
'ip: ' . $ip . '<br>' .
'nombreApellido: ' . $nombreApellido . '<br>' .
'cel: ' . $cel . '<br>' .
'direccion: ' . $direccion . '<br>' .
'selectArea: ' . $selectArea . '<br>';*/

if ($co->agregarTareaEncargado($selectMotivos, $descripcion, $ip, $nombreApellido, $cel, $direccion, $selectArea)) {
    session_start();
    $_SESSION['tareaOK'] = true;
    header('location: ../vista/index.php?accion=listarTareas');
} else {
    session_start();
    $_SESSION['tareaAgregadaError'] = true;
    header('location: ../vista/index.php?accion=listarTareas');
}
