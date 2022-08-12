<?php
session_start();
require('../modelo/m_consultas.php');
$co = new Consultas();

$nroArreglo = $_GET['id'];
$dni = $_GET['selectAgentes'];
$areaUsuario = $_SESSION['areaUsuario'];
$areaUsuario2 = $_SESSION['areaUsuario2'];

if ($_SESSION['rol'] == 2) {
    if ($co->tomarTareaAgente($dni, $nroArreglo)) {
        if ($_SESSION['cantAreas'] == 1) {
            session_start();
            $_SESSION['tareaAsignada'] = true;
            header('Location: ../vistaAgente/index.php?accion=listarTareas&listado=actual&area=' . $areaUsuario);
        } else {
            if ($_SESSION['cantAreas'] == 1) {
                session_start();
                $_SESSION['tareaAsignada'] = true;
                header('Location: ../vistaAgente/index.php?accion=listarTareas&listado=actual&area=' . $areaUsuario . '&area2=' . $areaUsuario2);
        }
        session_start();
        $_SESSION['tareaAsignada'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarTareas');
    }
} else {
    if ($co->tomarTareaAgente($dni, $nroArreglo)) {
        session_start();
        $_SESSION['tareaAsignada'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarTareasAdmin&area=' . $areaUsuario . '&lista=actual');
    }
}
