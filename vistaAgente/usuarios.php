<?php
if (isset($_SESSION['username']) && isset($_SESSION['rol'])) {
    if ($_SESSION['rol'] == 2 || $_SESSION['rol'] == 3) {
?>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <style>
                section {
                    margin-left: 180px;
                    padding: 10px;
                }

                section .fs-6 {
                    margin: 0;
                }

                section #textButton {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                }

                section form .fs-5 {
                    margin-top: 10px;
                }

                section form {
                    display: grid;
                    grid-template-columns: 1fr 1fr;
                    column-gap: 80px;
                }

                section form #btn {
                    grid-column: 2/3;
                    display: flex;

                }
            </style>

            <script>
                function validarAgenteExistente(dni) {
                    $.ajax({
                        type: 'POST',
                        url: 'validacionRepetidos/validarAgenteExistente.php',
                        data: 'dni=' + dni.value,
                        success: function(r) {
                            $('#dniExistente').html(r);
                        }
                    });
                }
            </script>
        </head>

        <body>

            <section>
                <?php
                error_reporting(0);
                if ($_SESSION['asignadoOk'] == true) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'El usuario ha cambiado de Rol',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['asignadoOk']);
                }
                if ($_SESSION['asignadoError'] == true) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'error',
                            title: 'Error',
                            text: 'Debe seleccionar el Agente y el Rol a asignar',
                            showConfirmButton: false,
                            timer: 2000
                        })
                    </script>
                <?php
                    unset($_SESSION['asignadoError']);
                }
                ?>

                <?php
                if ($_SESSION['usuarioAgregado']) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'El usuario ha sido agregado al sistema',
                            showConfirmButton: false,
                            timer: 2000
                        })
                    </script>
                <?php
                    unset($_SESSION['usuarioAgregado']);
                }

                if ($_SESSION['usuarioError']) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'error',
                            title: 'Error!',
                            text: 'No se ha podido añadir el usuario. Posiblemente el dni del usuario ya exista en el Sistema. Intente nuevamente'
                        })
                    </script>
                <?php
                    unset($_SESSION['usuarioError']);
                }
                ?>
                <p class="fs-5">Usuarios</p>
                <hr>

                <div id="textButton">
                    <div id="text">
                        <p class="fs-6 bg-white">Nota: Si se quiere elevar el Rol de un Encargado o Agente a Admin. Se le eliminarán las tareas asignadas <b>Pendientes y En Progreso</b></p>
                        <p class="fs-6">Las <b>Completas</b> no se eliminarán ya que quedara como registro de que el Agente completó las tareas asignadas</p>
                    </div>

                    <!-- Modal -->
                    <form action="../controlador/c_agregarUsuario.php" method="post">
                        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">

                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Agregar Nuevo Usuario</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">

                                        <div class="form-floating mb-3">
                                            <select class="form-select" name="selectRol" id="floatingSelect" aria-label="Floating label select example" required>
                                                <option value="" selected>Seleccione...</option>
                                                <?php
                                                foreach ($listRoles as $rol) {
                                                ?>
                                                    <option value="<?php echo $rol[0]; ?>"><?php echo $rol[1]; ?></option>
                                                <?php
                                                }
                                                ?>
                                            </select>
                                            <label for="floatingSelect">Elegir tipo de Usuario</label>
                                        </div>

                                        <div class="form-floating mb-3">
                                            <input type="number" name="dni" onblur="validarAgenteExistente(this);" min="1000000" max="99999999" class="form-control" id="floatingInput" placeholder="ejemplo" required>
                                            <label for="floatingInput">Dni</label>
                                            <span id="dniExistente" style="color: #dc3545;">
                                        </div>

                                        <div class="form-floating mb-3">
                                            <input type="text" name="nombre" class="form-control" id="floatingInput" placeholder="ejemplo" required>
                                            <label for="floatingInput">Nombre</label>
                                        </div>

                                        <div class="form-floating mb-3">
                                            <input type="text" name="apellido" class="form-control" id="floatingInput" placeholder="ejemplo" required>
                                            <label for="floatingInput">Apellido</label>
                                        </div>

                                        <div class="form-floating mb-3">
                                            <input type="email" name="correo" class="form-control" id="floatingInput" placeholder="ejemplo" required>
                                            <label for="floatingInput">Correo</label>
                                        </div>

                                        <div class="form-floating mb-3">
                                            <input type="text" name="user" class="form-control" id="floatingInput" placeholder="ejemplo" required>
                                            <label for="floatingInput">Nombre de Usuario</label>
                                        </div>

                                        <div class="form-floating mb-3">
                                            <input type="password" name="pass" class="form-control" id="floatingInput" placeholder="ejemplo" required>
                                            <label for="floatingInput">Contraseña</label>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <button type="submit" id="btnGuardar" class="btn btn-primary">Agregar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>

                    <div id="btnUsuarios">
                        <?php
                        if ($_SESSION['rol'] == 3) {
                        ?>
                            <a type="button" class="btn btn-danger" href="index.php?accion=listarBajas">Lista de bajas</a>
                        <?php
                        }
                        ?>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                            Nuevo Usuario
                        </button>
                    </div>


                </div>


                <form action="../controlador/c_asignarRolUsuario.php" method="post">
                    <div id="usuarios">
                        <p class="fs-5">Listado de Usuarios</p>
                        <div class="form-floating mb-3">
                            <select class="form-select" name="selectUsuario" id="floatingSelect" aria-label="Floating label select example" required>
                                <option value="" selected>Seleccione...</option>

                                <?php
                                foreach ($listUsuarios as $usuarios) {
                                ?>
                                    <option value="<?php echo $usuarios[0]; ?>">
                                        <?php echo $usuarios[1] . ' ' . $usuarios[2] . ' - ' . $usuarios[3] . ' - ' . $usuarios[4] . ' - ' . $usuarios[5]; ?>
                                    </option>
                                <?php
                                }
                                ?>
                            </select>
                            <label for="floatingSelect">Agentes</label>
                        </div>
                    </div>

                    <div id="asignacion">
                        <p class="fs-5">Asignar Rol</p>
                        <div class="form-floating mb-3">
                            <select class="form-select" name="selectRol" id="floatingSelect" aria-label="Floating label select example" required>
                                <option value="" selected>Seleccione...</option>
                                <?php
                                foreach ($listRoles as $roles) {
                                ?>
                                    <option value="<?php echo $roles[0] ?>"><?php echo $roles[1] ?></option>
                                <?php
                                }
                                ?>
                            </select>
                            <label for="floatingSelect">Roles</label>
                        </div>
                    </div>

                    <div id="btn">
                        <button type="submit" id="btnAplicar" class="btn btn-primary">Aplicar Cambios</button>
                    </div>

                </form>

            </section>
        </body>

        </html>
    <?php
    }
} else {
    ?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
            body {
                background-color: #5a3377 !important;
                color: white !important;
                padding: 10px;
            }
        </style>
        <?php require('libreriaEstilos.php'); ?>
    </head>

    <body>
        <p class="fs-5">Para acceder a esta sección debe iniciar sesión <a href="../vista/login.php" class="link-primary">Click aquí</a></p>
    </body>

    </html>

<?php
}
?>