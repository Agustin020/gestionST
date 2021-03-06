<?php
session_start();
$accion = $_GET['accion'];

switch ($accion) {
    case 'verEstadisticas':
        error_reporting(0);
        $time = $_GET['time'];
        $fechaInicio = $_POST['fechaInicio'];
        $fechaFin = $_POST['fechaFin'];
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->verEstadisticasContr($time, $fechaInicio, $fechaFin);
        break;

    case 'verEstadisticasAgente':
        $dni = $_GET['dni'];
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->verEstadisticasAgenteContr($dni);
        break;
        
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
    case 'listarMotivosReq':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarMotivosReqContr();
        break;

    case 'listarTareaAgente':
        $dni = $_GET['agente'];
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarTareaAgenteContr($dni);
        break;
    case 'listarDirecciones':
        require('../controlador/c_admin.php');
        $controller = new ControladorAdmin();
        $controller->listarDireccionesContr();
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
