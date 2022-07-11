<?php
require('../../modelo/m_conexionPage.php');
$link = conexion();

$codigoArea = $_POST['codigoArea'];

$sql = "SELECT u.dni, concat(u.nombre, ' ', u.apellido) from usuario u, areas a 
        where u.codigoArea2 = a.codigo and a.codigo = '$codigoArea'";

$result = mysqli_query($link, $sql);

$html = '<option value="" selected>Seleccione...</option>';

while ($row = mysqli_fetch_row($result)) {
    $html .= '<option value="' . $row[0] . '">' . $row[1] . '</option>';
}
echo $html;
mysqli_close($link);
