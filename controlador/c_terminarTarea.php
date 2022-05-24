<?php
require('../modelo/m_consultas.php');
$co = new Consultas();

$solucion = $_POST['solucion'];
$nroArreglo = $_POST['id'];

if($_SESSION['rol'] == 2){
    if($co->terminarTareaAgente($solucion, $nroArreglo)){
        session_start();
        $_SESSION['tareaTerminada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareas');
    }
}else{
    if($co->terminarTareaAgente($solucion, $nroArreglo)){
        session_start();
        $_SESSION['tareaTerminada'] = true;
        header('location: ../vistaAgente/index.php?accion=listarTareasAdmin');
    }
}



