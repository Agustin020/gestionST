<?php
session_start();
$accion = $_GET['accion'];

switch ($accion) {
    case 'listarTareas':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarTareasAgenteContr();
        break;

    case 'listarTareasAdmin':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarTareasAdminContr();
        break;

    case 'listarAgentes':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarAgentesContr();
        break;
    case 'listarAreas':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarAreasContr();
        break;
    case 'listarUsuarios':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarUsuariosContr();
        break;
    case 'listarBajas':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarUsuariosBajaContr();
        break;
}
