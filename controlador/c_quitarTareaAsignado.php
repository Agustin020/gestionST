<?php
session_start();
require('../modelo/m_consultas.php');
$co = new Consultas();

$nroArreglo = $_GET['id'];

$areaUsuario = $_SESSION['areaUsuario'];

if ($_SESSION['rol'] == 2) {
    if ($co->quitarAgenteAsignado($nroArreglo)) {
        session_start();
        $_SESSION['tareaAsignadaQuitada'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarTareas');
    }
} else {
    if ($co->quitarAgenteAsignado($nroArreglo)) {
        session_start();
        $_SESSION['tareaAsignadaQuitada'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarTareasAdmin&area=' . $areaUsuario . '&lista=actual');
    }
}
