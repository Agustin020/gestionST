<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$dni = $_POST['selectUsuario'];
$idRol = $_POST['selectRol'];

if ($co->asignarRolUsuario($idRol, $dni)) {
    session_start();
    $_SESSION['asignadoOk'] = true;
    if ($idRol == 1 || $idRol == 3) {
        if ($co->quitarTareaAdmin($idRol, $dni)) {
            header('location: ../vistaAgente/index.php?accion=listarUsuarios');
        }
    }
    header('location: ../vistaAgente/index.php?accion=listarUsuarios');
} else {
    session_start();
    $_SESSION['asignadoError'] = true;
    header('location: ../vista/index.php?accion=listarUsuarios');
}
