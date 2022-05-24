<?php
    require('../../modelo/m_conexionPage.php');
    $link = conexion();
    $username = $_POST['username'];

    $sql = "SELECT * FROM usuario WHERE usuario = '$username'";
    $result = mysqli_query($link, $sql);
    if (mysqli_num_rows($result) > 0) {
        $html = 'Este nombre de usuario ya existe. Pruebe con otro.
                <script>
                    $("#btnGuardar").prop("disabled", "true");    
                </script>';
    } else {
        $html = '<script>
                    $("#btnGuardar").removeAttr("disabled");    
                </script>';
    }
    echo $html;
?>