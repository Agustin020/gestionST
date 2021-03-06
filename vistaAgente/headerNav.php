<?php
$username = $_SESSION['username'];
if (isset($_SESSION['username']) && isset($_SESSION['rol'])) {
?>

    <style>
        .header {
            margin-left: 250px;
            transition: 0.2s all;
        }

        #buttonText {
            display: flex;
            align-items: center;
        }

        #buttonText span {
            padding: 15px;
        }

        #buttonText button {
            color: white;
            border-radius: 5px;
            transition: 0.1s all;
            background-color: transparent;
            border: none;
        }

        #buttonText button:active {
            box-shadow: 0 0 0 2px gray;
        }

        .sidebar {
            width: 250px;
            height: 100%;
            color: white;
            transition: 0.2s all;
        }

        .sidebar #txtRol {
            padding: 15px;
        }

        .sidebar a {
            padding-left: 20px;
            padding-right: 20px;
            font-weight: bold;
            display: flex;
            align-items: center;
        }

        .sidebar i {
            padding-right: 5px;
        }

        .sidebar a:hover {
            background-color: #47c5b5;
        }

        .sidebar a:active {
            box-shadow: 0 0 5px 0 #47c5b5;
        }


        .sidebar #menu a {
            border-left: 5px solid darkviolet;
        }

        .sidebar i {
            color: white;
        }


        .sidebar #desplegarMenuTarea a,
        .sidebar #desplegarMenuEst a {
            border-left: 5px solid #47c5b5;
        }

        section {
            margin-left: 250px;
            margin-top: 56px;
            transition: 0.2s all;
        }

        .hideSidebar {
            transition: 0.2s all;
            left: -250px;
        }

        .expandHeader {
            transition: 0.2s all;
            margin-left: 0;
        }

        .expandContainer {
            margin-left: 0;
        }
    </style>

    <script>
        $(document).ready(function() {

            $('#iconToggle').click(function() {
                $('#navHeader').toggleClass('expandHeader');
                $('#navSidebar').toggleClass('hideSidebar');
                $('#container').toggleClass('expandContainer');
                //$('.sidebar').hide(200);
            });

            $('#menu').hide();
            $('#showMenu').click(function() {
                $('#menu').toggle(100);
                $('#showMenu i').toggleClass('bi bi-caret-up');
            })


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

            $('#desplegarMenuEst').hide();
            $('#menuEst').click(function() {
                $('#desplegarMenuEst').toggle(150);
                $('#menuEst i').toggleClass('bi bi-caret-up');
            });


            $('#desplegarMenuTarea').hide();
            $('#menuTarea').click(function() {
                $('#desplegarMenuTarea').toggle(150);
                $('#menuTarea i').toggleClass('bi bi-caret-up');

            });
        });

        function verificarPassIguales(confirmarPass) {
            var pass = $('#nuevaPass').val();
            if (pass != confirmarPass.value) {
                document.getElementById('passRepetido').setCustomValidity('Las contrase??as deben ser iguales');
            } else {
                document.getElementById('passRepetido').setCustomValidity('');
            }
        }
    </script>

    <nav id="navHeader" class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top header">
        <div class="container-fluid">
            <div id="buttonText">
                <button id="iconToggle" type="button">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand fw-bold" style="margin-left: 5px;">Gesti??n de tareas - Sistemas</a>
            </div>

            <ul class="navbar-nav settingsUser">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <?php echo $_SESSION['nombreApellido']; ?>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark dropdown-menu-end" aria-labelledby="navbarDarkDropdownMenuLink">
                        <li><a class="dropdown-item" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">Gestionar usuario actual</a></li>
                        <li><a class="dropdown-item" href="logout.php">Cerrar sesi??n</a></li>
                    </ul>

                </li>
            </ul>
        </div>
    </nav>

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
                        require_once('../modelo/m_consultas.php');
                        $co = new Consultas();
                        $datosPersonales = $co->listarDatosPersonales($_SESSION['username']);
                        $fechaActual = $co->fechaActual();
                        foreach ($datosPersonales as $row) {
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
                            <button type="button" id="btnCambiarPass" class="btn btn-warning">Cambiar Contrase??a</button>
                            <div id="cambiarPass" style="display: none;">
                                <hr>
                                <span>Ingrese la nueva contrase??a</span>
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control pass" id="nuevaPass" placeholder="Contrase??a">
                                    <label for="floatingInput">Contrase??a</label>
                                </div>
                                <span>Repetir la nueva contrase??a</span>
                                <div class="form-floating mb-3">
                                    <input type="password" name="pass" class="form-control pass" id="passRepetido" onchange="verificarPassIguales(this);" placeholder="Contrase??a">
                                    <label for="floatingInput">Contrase??a</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input mostrarPass" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Mostrar Contrase??a
                                    </label>
                                </div>
                                <button id="btnCancelarPass" type="button" class="btn btn-warning" title="Cancela el cambio de contrase??a">Cancelar</button>
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

    <!-- Modal Filtros Fechas Estadisticas -->
    <div class="modal fade" id="fechas" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Estadisticas por fecha</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="index.php?accion=verEstadisticas&time=month" style="margin-bottom: 0" method="post">
                    <div class="modal-body">

                        <p class="fs-6">Definir el rango de fechas para luego visualizar las estad??sticas durante ese per??odo</p>

                        <div class="form-floating mb-3">
                            <input type="date" class="form-control" name="fechaInicio" id="floatingInput" placeholder="example">
                            <label for="floatingInput">Fecha Inicio</label>
                        </div>

                        <div class="form-floating mb-3">
                            <input type="date" class="form-control" name="fechaFin" id="floatingInput" placeholder="example">
                            <label for="floatingInput">Fecha Fin</label>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Aceptar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!--SIDEBAR-->
    <nav id="navSidebar" class="navbar-dark bg-dark fixed-top sidebar" style="display: flex; flex-direction: column; justify-content: space-between;">

        <div id="sidebarSuperior">
            <div id="txtRol">
                <?php
                if ($_SESSION['rol'] == 2) {
                ?>
                    <span class="fs-5 titlePage"><?php echo $_SESSION['areaUsuarioNombre']; ?></span>
                <?php
                } else if ($_SESSION['rol'] == 3) {
                ?>
                    <span class="fs-5 titlePage">Admin</span>
                <?php
                } else {
                ?>
                    <span class="fs-5 titlePage"><?php echo $_SESSION['areaUsuarioNombre']; ?></span>
                <?php
                }
                ?>
            </div>


            <div class="navbar-nav bg-dark">
                <a class="nav-link" aria-current="page" href="inicio.php"><i class="bi bi-gear"></i>Panel de Control</a>


                <?php
                if ($_SESSION['rol'] == 4) {
                ?>
                    <a class="nav-link" aria-current="page" href="index.php?accion=listarTareasAdmin&area=<?php echo $_SESSION['areaUsuario']; ?>"><i class="bi bi-list-check"></i>Tareas</a>
                <?php
                } else if ($_SESSION['rol'] == 2) {
                ?>
                    <a class="nav-link" aria-current="page" href="index.php?accion=listarTareas&area=<?php echo $_SESSION['areaUsuario']; ?>"><i class="bi bi-list-check"></i>Tareas</a>
                <?php
                } else if ($_SESSION['rol'] == 3) {
                ?>

                    <a class="nav-link" role="button" id="menuEst" aria-current="page" style="display: flex; justify-content: space-between; align-items: center;">
                        <div id="textItem">
                            <i class="bi bi-list-check"></i>
                            <span style="margin-left: -5px;">
                                Estad??sticas
                            </span>
                        </div>
                        <i class="bi bi-caret-down"></i>
                    </a>

                    <ul class="navbar-nav" id="desplegarMenuEst">

                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="index.php?accion=verEstadisticas&time=now">Creados en el d??a actual</a>
                        </li>
                        <!-- Button trigger modal -->
                        <li>
                            <a class="nav-link" role="button" aria-current="page" data-bs-toggle="modal" data-bs-target="#fechas">Rango por fechas</a>
                        </li>
                        <li>
                            <a class="nav-link" aria-current="page" href="index.php?accion=verEstadisticas&time=year">Creados en el a??o actual</a>
                        </li>
                        <li>
                            <a class="nav-link" aria-current="page" href="index.php?accion=verEstadisticas&time=all">Requerimientos en total</a>
                        </li>
                    </ul>


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

                    <a class="nav-link" aria-current="page" href="index.php?accion=listarMotivosReq">
                        <i class="bi bi-list-nested"></i>Motivos de tareas
                    </a>
                <?php
                }
                ?>

                <a class="nav-link" aria-current="page" href="index.php?accion=listarDirecciones"><i class="bi bi-list-ul"></i>Direcciones</a>

                <?php
                if ($_SESSION['rol'] == 3) {
                ?>
                    <a class="nav-link" aria-current="page" href="index.php?accion=listarUsuarios"><i class="bi bi-people"></i></i>Usuarios</a>
                <?php
                }
                ?>

            </div>

        </div>

        <div id="sidebarInferior">
            <p class="fs-6 fw-bold text-center">
                <?php
                $format = date_create($fechaActual);
                $fechaActual = date_format($format, 'd/m/Y');
                echo $fechaActual;
                ?>
            </p>
        </div>



    </nav>
<?php
}
?>