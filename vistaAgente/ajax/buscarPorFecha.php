<?php

require('../../modelo/m_conexionPage.php');
$link = conexion();

$opcionBusqueda = $_POST['opcionBusqueda'];

switch($opcionBusqueda){
    case 1:
        $fechaProblemaInicio = $_POST['fechaProblemaInicio'];
        $fechaProblemaFin = $_POST['fechaProblemaFin'];
        $html = '<p class="fs-6">Opcion uno clickeada</p>';
}

echo $html;

?>