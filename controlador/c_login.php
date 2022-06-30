<?php

require('../modelo/m_consultas.php');

$user = $_POST['user'];
$password = $_POST['password'];

$co = new Consultas();

if ($co->autenticarUsuario($user, $password)) {
    switch ($co->verificarTipoUsuario($user)) {
        case 1:
            session_start();
            $_SESSION['username'] = $user;
            $_SESSION['rol'] = $co->verificarTipoUsuario($user);
            $_SESSION['nombreApellido'] = $co->mostrarDatosUsuario($user);
            header('Location: ../vista/inicio.php');
            break;
        case 2:
            session_start();
            $_SESSION['username'] = $user;
            $_SESSION['dni'] = $co->listarDniUserActual($user);
            $_SESSION['rol'] = $co->verificarTipoUsuario($user);
            $_SESSION['nombreApellido'] = $co->mostrarDatosUsuario($user);
            $_SESSION['areaUsuario'] = $co->verificarAreaUsuario($user);
            $_SESSION['areaUsuarioNombre'] = $co->listarNombreAreaUsuario($_SESSION['dni']);
            header('Location: ../vistaAgente/inicio.php');
            break;
        case 3:
            session_start();
            $_SESSION['username'] = $user;
            $_SESSION['rol'] = $co->verificarTipoUsuario($user);
            $_SESSION['dni'] = $co->listarDniUserActual($user);
            $_SESSION['nombreApellido'] = $co->mostrarDatosUsuario($user);
            header('Location: ../vistaAgente/inicio.php');
            break;
        case 4:
            session_start();
            $_SESSION['username'] = $user;
            $_SESSION['dni'] = $co->listarDniUserActual($user);
            $_SESSION['rol'] = $co->verificarTipoUsuario($user);
            $_SESSION['nombreApellido'] = $co->mostrarDatosUsuario($user);
            $_SESSION['areaUsuario'] = $co->verificarAreaUsuario($user);
            $_SESSION['areaUsuarioNombre'] = $co->listarNombreAreaUsuario($_SESSION['dni']);
            header('Location: ../vistaAgente/inicio.php');
            break;
        default:
            header('Location: ../vista/login.php');
            break;
    }
} else {
    session_start();
    $_SESSION['errLogin'] = true;
    header('Location: ../vista/login.php');
}
