<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$codigoAreaAnterior = $_POST['codigoAreaAnterior'];
$codigo = $_POST['codigo'];
$area = $_POST['area'];
$descripcion = $_POST['descripcion'];

if ($co->editarArea($codigo, $area, $descripcion, $codigoAreaAnterior)) {
    session_start();
    $_SESSION['areaEditada'] = true;
    header('location: ../vistaAgente/index.php?accion=listarAreas');
}else{
    session_start();
    $_SESSION['areaEditadaError'] = true;
    header('location: ../vistaAgente/index.php?accion=listarAreas');
}
