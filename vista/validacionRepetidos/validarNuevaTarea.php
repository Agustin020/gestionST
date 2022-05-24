<?php
require('../../modelo/m_conexionPage.php');
$link = conexion();
$nroArreglo = $_POST['nroArreglo'];
$sql = "SELECT nroArreglo FROM tareas WHERE nroArreglo = '$nroArreglo'";
$result = mysqli_query($link, $sql);
if (mysqli_num_rows($result) > 0) {
    $html = 'El número de arreglo existe. Pruebe otro
            <script>
                $("#btnGuardar").prop("disabled", "true");    
            </script>';
    echo $html;
} else {
    $html = '<script>
                $("#btnGuardar").removeAttr("disabled");    
            </script>';
    echo $html;
}
