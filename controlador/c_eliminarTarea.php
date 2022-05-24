<?php
require('../modelo/m_consultas.php');
$co = new Consultas();
$id = $_GET['id'];

if ($_SESSION['rol'] == 2) {
    if ($co->eliminarTarea($id)) {
        session_start();
        $_SESSION['tareaEliminada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareas');
    }
} else {
    if ($co->eliminarTarea($id)) {
        session_start();
        $_SESSION['tareaEliminada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareasAdmin');
    }
}
