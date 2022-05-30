<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$selectMotivos = $_POST['selectMotivos'];
$descripcion = $_POST['descripcion'];
$ip = $_POST['ip'];
$nombreApellido = $_POST['nombreApellidoAfectado'];
$celular = $_POST['cel'];
$area = $_POST['selectArea'];
$rol = $_POST['rol'];

/*echo 'selectMotivos: ' . $selectMotivos . '<br>' .
'descripcion: ' . $descripcion . '<br>' .
'ip: ' . $ip . '<br>' .
'nombreApellido: ' . $nombreApellido . '<br>' .
'celular: ' . $celular . '<br>' .
'area: ' . $area . '<br>' .
'rol: ' . $rol . '<br>';*/

if ($rol == 2) {
    if ($co->agregarTarea($selectMotivos, $descripcion, $ip, $nombreApellido, $celular, $area)) {
        session_start();
        $_SESSION['tareaOK'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareas');
    }
}else {
    if ($co->agregarTarea($selectMotivos, $descripcion, $ip, $nombreApellido, $celular, $area)) {
        session_start();
        $_SESSION['tareaOK'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareasAdmin');
    }
}
