<?php
error_reporting(0);
$username = $_SESSION['username'];
if (isset($_SESSION['username']) && isset($_SESSION['rol'])) {
?>

    <style>
        header {
            height: 50px;
            background-color: #5a3377;
            width: 100%;
        }

        header #title {
            margin-left: 30px;
        }

        @media only screen and (max-width: 900px) {
            .usuarioConfig {
                background-color: #333;
            }
        }


        nav {
            position: fixed;
            top: 50px;
            width: 180px;
            bottom: 0;
            color: white;
            display: flex;
            flex-direction: column;
        }

        nav .titlePage {
            margin: 10px;
        }

        nav #itemsNav a {
            color: white;
        }

        nav #itemsNav i {
            margin-right: 5px;
        }

        nav #itemsNav a:hover {
            background-color: #6a11cb;
        }

        nav #itemsNav #desplegarMenuTarea li {
            border-left: 5px solid #6a11cb;

        }

        nav #itemsNav #desplegarMenuTarea li a {
            padding-left: 10px;

        }
    </style>

    <script>
        $(document).ready(function() {

            $('.mostrarPass').click(function() {
                if ($('.mostrarPass').is(':checked')) {
                    $('.pass').prop('type', 'text');
                } else {
                    $('.pass').prop('type', 'password');
                }
            });

            $('#btnCambiarPass').click(function() {
                $('#btnCambiarPass').hide();
                $('#cambiarPass').show();
                $('#passRepetido').prop('required', 'required');
                $('#btnCancelarPass').show();
            })

            $('#btnCancelarPass').click(function() {
                $('#btnCancelarPass').hide();
                $('#btnCambiarPass').show();
                $('#cambiarPass').hide();
                $('#passRepetido').removeAttr('required');
                $('.pass').val('');
                if ($('.mostrarPass').is(':checked')) {
                    $('.mostrarPass').prop('checked', false);
                    $('#cambiarPass input[type=text]').val('');
                    $('.pass').prop('type', 'password');
                }
            })

            $('#desplegarMenuTarea').hide();
            $('#menuTarea').click(function() {
                $('#desplegarMenuTarea').toggle(150);
                $('#menuTarea i').toggleClass('bi bi-caret-up');

            });
        });

        function verificarPassIguales(confirmarPass) {
            var pass = $('#nuevaPass').val();
            if (pass != confirmarPass.value) {
                document.getElementById('passRepetido').setCustomValidity('Las contraseñas deben ser iguales');
            } else {
                document.getElementById('passRepetido').setCustomValidity('');
            }
        }
    </script>

    <header class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">


        <div id="title">
            <a class="navbar-brand">Gestión ST</a>
        </div>

        <!--Collapse-->

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>


        <!--Usuario Configuracion-->
        <div class="usuarioConfig" id="navbarNavDarkDropdown">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <?php echo $_SESSION['nombreApellido']; ?>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                        <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">Gestionar Cuenta</a></li>
                        <li><a class="dropdown-item" href="logout.php">Cerrar Sesión</a></li>
                    </ul>
                </li>
            </ul>
        </div>

    </header>

    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <form action="../controlador/c_editarUsuario.php" method="post">
            <input type="hidden" name="userAnterior" value="<?php echo $_SESSION['username']; ?>">
            <input type="hidden" name="rol" value="<?php echo $_SESSION['rol']; ?>">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Gestionar Usuario</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <?php
                        require('../modelo/m_conexionPage.php');
                        $link = conexion();
                        $sql = "SELECT * FROM usuario WHERE usuario = '$username' OR correo = '$username'";
                        $result = mysqli_query($link, $sql);
                        while ($row = mysqli_fetch_row($result)) {
                        ?>

                            <div class="form-floating mb-3 input">
                                <input type="number" name="dni" class="form-control" value="<?php echo $row[0]; ?>" id="floatingInput" placeholder="Dni" readonly>
                                <label for="floatingInput">Dni</label>
                            </div>
                            <div class="form-floating mb-3 input">
                                <input type="text" name="nombre" class="form-control" value="<?php echo $row[1]; ?>" id="floatingInput" placeholder="Nombre">
                                <label for="floatingInput">Nombre</label>
                            </div>
                            <div class="form-floating mb-3 input">
                                <input type="text" name="apellido" class="form-control" value="<?php echo $row[2]; ?>" id="floatingInput" placeholder="Apellido">
                                <label for="floatingInput">Apellido</label>
                            </div>
                            <div class="form-floating mb-3 input">
                                <input type="email" name="correo" class="form-control" value="<?php echo $row[3]; ?>" id="floatingInput" placeholder="Correo">
                                <label for="floatingInput">Correo</label>
                            </div>
                            <div class="form-floating mb-3 input">
                                <input type="text" name="user" class="form-control" value="<?php echo $row[4]; ?>" id="floatingInput" placeholder="Usuario">
                                <label for="floatingInput">Usuario</label>
                            </div>
                            <button type="button" id="btnCambiarPass" class="btn btn-warning">Cambiar Contraseña</button>
                            <div id="cambiarPass" style="display: none;">
                                <hr>
                                <span>Ingrese la nueva contraseña</span>
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control pass" id="nuevaPass" placeholder="Contraseña">
                                    <label for="floatingInput">Contraseña</label>
                                </div>
                                <span>Repetir la nueva contraseña</span>
                                <div class="form-floating mb-3">
                                    <input type="password" name="pass" class="form-control pass" id="passRepetido" onchange="verificarPassIguales(this);" placeholder="Contraseña">
                                    <label for="floatingInput">Contraseña</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input mostrarPass" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Mostrar Contraseña
                                    </label>
                                </div>
                                <button id="btnCancelarPass" type="button" class="btn btn-warning" title="Cancela el cambio de contraseña">Cancelar</button>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>

                <?php
                        }
                ?>

                </div>
            </div>
        </form>
    </div>



    <!--SIDEBAR-->
    <nav class="nav navbar-dark bg-dark">

        <?php
        if ($_SESSION['rol'] == 2) {
        ?>
            <span class="fs-4 titlePage">Agente</span>
        <?php
        } else if ($_SESSION['rol'] == 3) {
        ?>
            <span class="fs-4 titlePage">Admin</span>
        <?php
        } else {
        ?>
            <span class="fs-4 titlePage">Supervisor</span>
        <?php
        }
        ?>
        <div id="itemsNav">
            <a class="nav-link" aria-current="page" href="inicio.php"><i class="bi bi-gear"></i>Panel de Control</a>

            <?php
            if ($_SESSION['rol'] == 4) {
            ?>
                <a class="nav-link" aria-current="page" href="index.php?accion=listarTareasAdmin"><i class="bi bi-list-check"></i>Tareas</a>
            <?php
            } else if ($_SESSION['rol'] == 2) {
            ?>
                <a class="nav-link" aria-current="page" href="index.php?accion=listarTareas"><i class="bi bi-list-check"></i>Tareas</a>
            <?php
            } else if ($_SESSION['rol'] == 3) {
            ?>
                <a class="nav-link" role="button" id="menuTarea" aria-current="page" style="display: flex; justify-content: space-between; align-items: center;">
                    <div id="textItem">
                        <i class="bi bi-list-check"></i>
                        <span style="margin-left: -5px;">
                            Tareas
                        </span>
                    </div>
                    <i class="bi bi-caret-down"></i>
                </a>
                <ul class="navbar-nav" id="desplegarMenuTarea">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="index.php?accion=listarTareasAdmin">Lista de tareas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="index.php?accion=listarTareasEliminadas">Tareas eliminadas</a>
                    </li>
                </ul>
            <?php
            }
            ?>

            <?php
            if ($_SESSION['rol'] == 3) {
            ?>
                <a class="nav-link" aria-current="page" href="index.php?accion=listarAgentes">
                    <i class="bi bi-people"></i>Lista de Agentes
                </a>
            <?php
            }
            ?>

            <a class="nav-link" aria-current="page" href="index.php?accion=listarAreas"><i class="bi bi-list-ul"></i>Áreas</a>

            <?php
            if ($_SESSION['3']) {
            ?>
                <a class="nav-link" aria-current="page" href="index.php?accion=listarUsuarios"><i class="bi bi-people"></i></i>Usuarios</a>
            <?php
            }
            ?>
        </div>
    </nav>
<?php
}
?>