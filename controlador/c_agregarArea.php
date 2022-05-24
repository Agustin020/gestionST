<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$codigo = $_POST['codigo'];
$area = $_POST['area'];
$descripcion = $_POST['descripcion'];

if ($co->agregarArea($codigo, $area, $descripcion)) {
    session_start();
    $_SESSION['areaOk'] = true;
    header('location: ../vista/index.php?accion=listarAreas');
}else{
    header('location: ../vista/index.php?accion=listarAreas');
}
