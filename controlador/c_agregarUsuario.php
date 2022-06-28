<?php
    require('../modelo/m_consultas.php');
    $co = new Consultas();

    $tipoUsuario = $_POST['selectRol'];
    if(isset($_POST['selectArea'])){
        $selectArea = $_POST['selectArea'];
    }else{
        $selectArea = '';
    }
    
    $dni = $_POST['dni'];
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $correo = $_POST['correo'];
    $username = $_POST['user'];
    $pass = $_POST['pass'];

    echo 'tipoUsuario: ' . $tipoUsuario . '<br>' .
    'dni: ' . $dni . '<br>' .
    'selectArea: ' . $selectArea . '<br>' .
    'nombre: ' . $nombre . '<br>' .
    'apellido: ' . $apellido . '<br>' .
    'correo: ' . $correo . '<br>' .
    'username: ' . $username . '<br>' .
    'pass: ' . $pass . '<br>';

    /*if($co->agregarUsuario($tipoUsuario, $selectArea, $dni, $nombre, $apellido, $correo, $username, $pass)){
        session_start();
        $_SESSION['usuarioAgregado'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarUsuarios');
    }else{
        session_start();
        $_SESSION['usuarioError'] = true;
        header('Location: ../vistaAgente/index.php?accion=listarUsuarios');
    }*/
?>