<?php
session_start();
require('../modelo/m_consultas.php');
$co = new Consultas();

$nroArreglo = $_GET['id'];
$dni = $_GET['selectAgentes'];

if ($_SESSION['rol'] == 2) {
    if ($co->tomarTareaAgente($dni, $nroArreglo)) {
        session_start();
        $_SESSION['tareaAsignada'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarTareas');
    }
}else{
    if ($co->tomarTareaAgente($dni, $nroArreglo)) {
        session_start();
        $_SESSION['tareaAsignada'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarTareasAdmin');
    }
}
