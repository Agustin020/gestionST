<?php
session_start();
$accion = $_GET['accion'];

switch ($accion) {
    case 'listarTareas':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarTareasEncargadoContr();
        break;

    case 'listarAreas':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarAreasContr();
        break;

}
