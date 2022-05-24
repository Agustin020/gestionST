<?php
    require('../modelo/m_consultas.php');
    $co = new Consultas();

    $tipoUsuario = $_POST['selectRol'];
    $dni = $_POST['dni'];
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $correo = $_POST['correo'];
    $username = $_POST['user'];
    $pass = $_POST['pass'];

    if($co->agregarUsuario($tipoUsuario, $dni, $nombre, $apellido, $correo, $username, $pass)){
        session_start();
        $_SESSION['usuarioAgregado'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarUsuarios');
    }else{
        session_start();
        $_SESSION['usuarioError'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarUsuarios');
    }
?>