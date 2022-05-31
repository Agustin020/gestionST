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

    case 'listarTareasEliminadas':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarTareasEliminadasContr();
        break;

    case 'listarAgentes':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarAgentesContr();
        break;
    case 'listarTareaAgente':
        $dni = $_GET['agente'];
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarTareaAgenteContr($dni);
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
