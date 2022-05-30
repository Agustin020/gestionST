<?php
session_start();
require('../modelo/m_consultas.php');
$co = new Consultas();

$motivoEliminacion = $_POST['motivoEliminacion'];
$nroArreglo = $_POST['id'];

if ($co->eliminarTarea($motivoEliminacion, $nroArreglo)) {
    session_start();
    $_SESSION['tareaEliminada'] = true;
    header('location: ../vistaAgente/index.php?accion=listarTareasAdmin');
}
