<?php
    require('../../modelo/m_conexionPage.php');
    $link = conexion();
    $dni = $_POST['dni'];
    $sql = "SELECT dni FROM usuario WHERE dni = '$dni'";
    $result = mysqli_query($link, $sql);
    
    if (mysqli_num_rows($result) > 0) {
        $html = 'Ya existe un Usuario con este DNI en el Sistema.
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
?>