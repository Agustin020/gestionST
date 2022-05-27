<?php
if (isset($_SESSION['username']) && isset($_SESSION['rol'])) {
    if ($_SESSION['rol'] == 1) {
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

                table {
                    width: 75% !important;
                    margin: 0 auto;
                }

                table td {
                    vertical-align: middle;
                }

                table #accion {
                    text-align: center;
                }
            </style>

            <script>
                function comprobarCodigo(codigo) {
                    $.ajax({
                        type: 'POST',
                        url: 'validacionRepetidos/validarAreaExistente.php',
                        data: 'codigo=' + codigo.value,
                        success: function(r) {
                            $('#codigoExistente').html(r);
                        }
                    });
                }
            </script>

        </head>

        <body>

            <?php
            error_reporting(0);

            if ($_SESSION['areaOk'] == true) {
            ?>
                <script>
                    Swal.fire({
                        position: 'bottom-end',
                        icon: 'success',
                        title: 'El área ha sido añadida exitosamente',
                        showConfirmButton: false,
                        timer: 1500
                    })
                </script>
            <?php
                unset($_SESSION['areaOk']);
            }

            if ($_SESSION['editadoOk'] == true) {
            ?>
                <script>
                    Swal.fire({
                        position: 'bottom-end',
                        icon: 'success',
                        title: 'El área ha sido modificada',
                        showConfirmButton: false,
                        timer: 1500
                    })
                </script>
            <?php
                unset($_SESSION['editadoOk']);
            }

            if ($_SESSION['eliminadoOk'] == true) {
            ?>
                <script>
                    Swal.fire({
                        position: 'bottom-end',
                        icon: 'success',
                        title: 'El área ha sido eliminada',
                        showConfirmButton: false,
                        timer: 1500
                    })
                </script>
            <?php
                unset($_SESSION['eliminadoOk']);
            }

            ?>

            <section>
                <p class="fs-5">Lista de Áreas</p>
                <hr>

                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    Agregar Área o Sector
                </button>

                <!--Modal Nueva Area-->
                <form action="../controlador/c_agregarArea.php" method="post">

                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">Agregar Área o Sector</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <p class="fs-6">Ingrese la tarea con sus respectivos datos y asignación a agentes</p>

                                    <div class="form-floating mb-3">
                                        <input type="text" name="codigo" class="form-control codigo" id="floatingInput" placeholder="ejemplo" onkeyup="comprobarCodigo(this)" required>
                                        <label for="floatingInput">Código</label>
                                        <span id="codigoExistente" style="color: #dc3545;">
                                        </span>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <input type="text" name="area" class="form-control" id="floatingInput" placeholder="ejemplo" required>
                                        <label for="floatingInput">Nombre del Área o Sector</label>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <input type="text" name="descripcion" class="form-control" id="floatingInput" placeholder="ejemplo" required>
                                        <label for="floatingInput">Descripción</label>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                    <button type="submit" id="btnGuardar" class="btn btn-primary">Guardar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

                <table class="table table-responsive table-bordered table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Descripción</th>
                            <th scope="col">Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($listAreas as $departamentos) {
                        ?>
                            <tr>
                                <td><?php echo $departamentos[0]; ?></td>
                                <td><?php echo $departamentos[1]; ?></td>
                                <td><?php echo $departamentos[2]; ?></td>
                                <td id="accion">
                                    <div class="btn-group" role="group">
                                        <button id="btnGroupDrop1" type="button" class="btn btn-outline-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                            Acción
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                            <li>
                                                <a class="dropdown-item" href="index.php?accion=editarArea&codigo=<?php echo $departamentos[0]; ?>">
                                                    Editar
                                                </a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="btnBaja" href="../controlador/c_eliminarArea.php?codigo=<?php echo $departamentos[0]; ?>">
                                                    Eliminar
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>


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
        <?php
        require('libreriaEstilos.php');
        ?>
    </head>

    <body>
        <p class="fs-5">Para acceder a esta sección debe iniciar sesión <a href="login.php" class="link-primary">Click aquí</a></p>
    </body>

    </html>
<?php
}
?>