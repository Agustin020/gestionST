<?php
session_start();
require('../modelo/m_consultas.php');
$co = new Consultas();

$motivoCancelacion = $_POST['motivoCancelacion'];
$nroArreglo = $_POST['id'];

if ($_SESSION['rol'] == 2) {
    if ($co->cancelarTareaAgente($motivoCancelacion, $nroArreglo)) {
        session_start();
        $_SESSION['tareaCancelada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareas');
    }
} else {
    if ($co->cancelarTareaAgente($motivoCancelacion, $nroArreglo)) {
        session_start();
        $_SESSION['tareaCancelada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareasAdmin');
    }
}
