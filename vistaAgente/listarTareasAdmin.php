<?php
if (isset($_SESSION['username']) && isset($_SESSION['rol'])) {
    if ($_SESSION['rol'] == 3) {
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
                    padding: 15px;
                }


                section #btnTarea {
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    margin-top: 5px;
                    margin-bottom: 5px;
                }

                .dataTables_length {
                    margin-bottom: 10px;
                }

                section th,
                td {
                    vertical-align: middle;
                    font-size: 15px;
                }

                section table #accion {
                    text-align: center;
                }
            </style>

            <script>
                //DATATABLE
                $(document).ready(function() {
                    function addZero(i) {
                        if (i < 10) {
                            i = "0" + i
                        }
                        return i;
                    }

                    const dNow = new Date();
                    let h = addZero(dNow.getHours());
                    let m = addZero(dNow.getMinutes());

                    let time = h + ":" + m;
                    var localdate = dNow.getDate() + '/' + (dNow.getMonth() + 1) + '/' + dNow.getFullYear() + ' ' + time;

                    $('#tablaDinamicaLoad').DataTable({
                        dom: 'lBfrtip',
                        buttons: [{
                                extend: 'excelHtml5',
                                title: 'Listado de Tareas - Gestión Servicio Técnico Guaymallén',
                                messageTop: 'Reporte: ' + localdate,
                                exportOptions: {
                                    columns: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                                }
                            },
                            {
                                extend: 'pdfHtml5',
                                orientation: 'landscape',
                                pageSize: 'A4',
                                download: 'open',
                                messageTop: 'Reporte: ' + localdate,
                                title: 'Listado de Tareas - Gestión Servicio Técnico Guaymallén',
                                exportOptions: {
                                    columns: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                                },
                            },
                        ],
                        language: {
                            "url": "//cdn.datatables.net/plug-ins/1.11.5/i18n/es-ES.json"
                        }
                    })
                })
            </script>
        </head>

        <body>
            <section>
                <input type="hidden" id="usuario" name="usuario" value="<?php echo $_SESSION['username']; ?>">
                <?php
                error_reporting(0);
                if ($_SESSION['tareaOK'] == true) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'La tarea ha sido agregada',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['tareaOK']);
                }
                if ($_SESSION['tareaAsignada']) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'La tarea ha sido asignada',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['tareaAsignada']);
                }
                if ($_SESSION['tareaAsignadaQuitada']) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'El agente asignado a la tarea ha sido quitado',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['tareaAsignadaQuitada']);
                }
                if ($_SESSION['tareaTerminada']) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'La tarea ha sido concluida',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['tareaTerminada']);
                }
                if ($_SESSION['tareaCancelada']) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'La tarea ha sido cancelada',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['tareaCancelada']);
                }
                if ($_SESSION['tareaEditada']) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'La tarea ha sido editada',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['tareaEditada']);
                }
                if ($_SESSION['tareaEliminada']) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'La tarea ha sido eliminada',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['tareaEliminada']);
                }
                ?>

                <p class="fs-5">Tareas</p>
                <hr>
                <p class="fs-6">Para manipular las tareas, presione <b>Acción</b></p>
                <div class="table-responsive-xxl">

                    <div id="btnTarea">
                        <form action="../controlador/c_agregarTarea.php" method="post">
                            <!--Modal Nueva TAREA-->
                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Nueva Tarea</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p class="fs-6">Ingrese la tarea con sus respectivos datos y asignación a agentes</p>

                                            <input type="hidden" name="rol" value="<?php echo $_SESSION['rol']; ?>">

                                            <div class="form-floating mb-3">
                                                <select class="form-select" name="selectMotivos" id="floatingSelect" aria-label="Floating label select example" required>
                                                    <option value="" selected>Seleccione...</option>
                                                    <?php
                                                    foreach ($listMotivos as $motivo) {
                                                    ?>
                                                        <option value="<?php echo $motivo[0]; ?>">
                                                            <?php
                                                            echo $motivo[1];
                                                            ?>
                                                        </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                                <label for="floatingSelect">Seleccione el motivo del incoveniente</label>
                                            </div>

                                            <div class="form-floating mb-3">
                                                <textarea class="form-control" name="descripcion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required></textarea>
                                                <label for="floatingTextarea">Descripción</label>
                                            </div>                                            

                                            <div class="form-floating mb-3">
                                                <input type="text" name="ip" class="form-control" id="floatingInput" placeholder="Nombre del Afectado" required>
                                                <label for="floatingInput">IP</label>
                                            </div>

                                            <div class="form-floating mb-3">
                                                <select class="form-select" name="selectArea" id="floatingSelect" aria-label="Floating label select example" required>
                                                    <option value="" selected>Seleccione...</option>
                                                    <?php
                                                    foreach ($listAreas as $listadoAreas) {
                                                    ?>
                                                        <option value="<?php echo $listadoAreas[0]; ?>">
                                                            <?php echo $listadoAreas[1]; ?>
                                                        </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                                <label for="floatingSelect">Seleccione el área donde se desempeña</label>
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

                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                            Nueva Tarea
                        </button>
                    </div>


                    <div id="tPrincipal">
                        <table class="table table-responsive table-bordered table-hover" id="tablaDinamicaLoad">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Motivo</th>
                                    <th scope="col">Descripción</th>
                                    <th scope="col">IP</th>
                                    <th scope="col">Estado</th>
                                    <th scope="col">Fecha Problema</th>
                                    <th scope="col">Fecha Solución</th>
                                    <th scope="col">Área</th>
                                    <th scope="col">Asignado</th>
                                    <th scope="col">Acción</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($listTareasAgentes as $listTarea) {
                                ?>
                                    <tr>
                                        <td style="text-align: center;"><?php echo $listTarea[0]; ?></td>
                                        <td><?php echo $listTarea[2]; ?></td>
                                        <td><?php echo $listTarea[3]; ?></td>
                                        <td><?php echo $listTarea[4]; ?></td>
                                        <td>
                                            <?php
                                            if ($listTarea[9] == 'Pendiente') {
                                                echo '<span class="badge bg-secondary">' . $listTarea[9] . '</span>';
                                            } else if ($listTarea[9] == 'En Progreso') {
                                                echo '<span class="badge bg-primary">' . $listTarea[9] . '</span>';
                                            } else if ($listTarea[9] == 'Completo') {
                                                echo '<span class="badge bg-success">' . $listTarea[9] . '</span>';
                                            } else if ($listTarea[9] == 'Cancelado') {
                                                echo '<span class="badge bg-danger">' . $listTarea[9] . '</span>';
                                            }
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            $date = date_create($listTarea[11]);
                                            $fechaProblema = date_format($date, 'd/m/Y H:i:s');
                                            echo $fechaProblema;
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            if ($listTarea[12] != null) {
                                                $date = date_create($listTarea[12]);
                                                $fechaSolucion = date_format($date, 'd/m/Y H:i:s');
                                                echo $fechaSolucion;
                                            }
                                            ?>
                                        </td>
                                        <td><?php echo $listTarea[14]; ?></td>
                                        <td><?php echo $listTarea[16]; ?></td>
                                        <td id="accion">
                                            <div class="btn-group" role="group">
                                                <button id="btnGroupDrop1" type="button" class="btn btn-outline-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Acción
                                                </button>
                                                <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                                    <?php
                                                    if ($listTarea[9] != 'Cancelado' && $listTarea[15] == 0) {
                                                    ?>
                                                        <li>
                                                            <a type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalAsignarTarea<?php echo $listTarea[0]; ?>">
                                                                Asignar la tarea a un agente
                                                            </a>
                                                        </li>
                                                    <?php
                                                    }
                                                    if ($listTarea[15] != 0 && $listTarea[9] != 'Completo') {
                                                    ?>
                                                        <li>
                                                            <a class="dropdown-item" href="../controlador/c_quitarTareaAsignado.php?id=<?php echo $listTarea[0]; ?>">
                                                                Quitar la tarea asignada al agente
                                                            </a>
                                                        </li>
                                                    <?php
                                                    }
                                                    if ($listTarea[9] == 'En Progreso') {
                                                    ?>
                                                        <li>
                                                            <a type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalTareaCompletada<?php echo $listTarea[0]; ?>">
                                                                Terminar tarea
                                                            </a>
                                                        </li>

                                                    <?php
                                                    }
                                                    if ($listTarea[9] != 'Cancelado' && $listTarea[9] != 'Completo') {
                                                    ?>
                                                        <li>
                                                            <a type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalCancelarTarea<?php echo $listTarea[0]; ?>">
                                                                Cancelar tarea
                                                            </a>
                                                        </li>

                                                    <?php
                                                    }
                                                    ?>

                                                    <li>
                                                        <a type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalEditarTarea<?php echo $listTarea[0]; ?>">
                                                            Editar tarea
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a class="dropdown-item" href="../controlador/c_eliminarTarea.php?id=<?php echo $listTarea[0]; ?>">
                                                            Eliminar tarea
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>

                                    <!--Modal Asignar Tarea-->
                                    <div class="modal fade" id="modalAsignarTarea<?php echo $listTarea[0]; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">Asignar tarea</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <form action="../controlador/c_tomarTarea.php" method="get">
                                                    <div class="modal-body">

                                                        <input type="hidden" name="id" value="<?php echo $listTarea[0]; ?>">

                                                        <div class="form-floating mb-3">
                                                            <select class="form-select" name="dni" id="floatingSelect" aria-label="Floating label select example" required>
                                                                <option value="" selected>Seleccione...</option>
                                                                <?php
                                                                foreach ($listAgentes as $agentes) {
                                                                ?>
                                                                    <option value="<?php echo $agentes[0]; ?>">
                                                                        <?php
                                                                        echo $agentes[1];
                                                                        ?>
                                                                    </option>
                                                                <?php
                                                                }
                                                                ?>
                                                            </select>
                                                            <label for="floatingSelect">Seleccione el agente que llevará a cabo la tarea</label>
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

                                    <!-- Modal Cancelar Tarea -->
                                    <div class="modal fade" id="modalCancelarTarea<?php echo $listTarea[0]; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">Terminar tarea</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <form action="../controlador/c_cancelarTarea.php" method="post" style="display: none;">

                                                    <div class="modal-body">

                                                        <p class="fs-6">Para cancelar la tarea debe completar lo siguiente</p>

                                                        <input type="hidden" name="id" value="<?php echo $listTarea[0]; ?>">

                                                        <div class="form-floating mb-3">
                                                            <textarea class="form-control" name="motivoCancelacion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required></textarea>
                                                            <label for="floatingTextarea">Motivo de la cancelación</label>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                        <button type="submit" class="btn btn-danger">Cancelar tarea</button>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Modal Editar Tarea -->
                                    <div class="modal fade" id="modalEditarTarea<?php echo $listTarea[0]; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar tarea</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <form action="../controlador/c_editarTarea.php" method="post" style="display: none;">

                                                    <div class="modal-body">

                                                        <p class="fs-6">Editar en caso de que haya habido un cambio o un error.</p>

                                                        <input type="hidden" name="nroArreglo" value="<?php echo $listTarea[0]; ?>">

                                                        <div class="form-floating mb-3">
                                                            <select class="form-select" name="selectMotivos" id="floatingSelect" aria-label="Floating label select example" required>
                                                                <option value="<?php echo $listTarea[1]; ?>" selected><?php echo $listTarea[2]; ?> (Actual)</option>
                                                                <?php
                                                                foreach ($listMotivos as $motivo) {
                                                                ?>
                                                                    <option value="<?php echo $motivo[0]; ?>">
                                                                        <?php
                                                                        echo $motivo[1];
                                                                        ?>
                                                                    </option>
                                                                <?php
                                                                }
                                                                ?>
                                                            </select>
                                                            <label for="floatingSelect">Seleccione el motivo del incoveniente</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <textarea class="form-control" name="descripcion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required><?php echo $listTarea[3]; ?></textarea>
                                                            <label for="floatingTextarea">Descripción</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <input type="text" name="ip" value="<?php echo $listTarea[4]; ?>" class="form-control" id="floatingInput" placeholder="Nombre del Afectado" required>
                                                            <label for="floatingInput">IP</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <select class="form-select" name="selectArea" id="floatingSelect" aria-label="Floating label select example" required>
                                                                <option value="<?php echo $listTarea[11]; ?>" selected><?php echo $listTarea[12]; ?> (Actual)</option>
                                                                <?php
                                                                foreach ($listAreas as $listadoAreas) {
                                                                ?>
                                                                    <option value="<?php echo $listadoAreas[0]; ?>">
                                                                        <?php echo $listadoAreas[1]; ?>
                                                                    </option>
                                                                <?php
                                                                }
                                                                ?>
                                                            </select>
                                                            <label for="floatingSelect">Seleccione el área donde se desempeña</label>
                                                        </div>


                                                        <?php
                                                        if ($listTarea[5] != '' || $listTarea[5] != null) {
                                                        ?>
                                                            <hr>
                                                            <div class="form-floating mb-3">
                                                                <textarea class="form-control" name="solucion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required><?php echo $listTarea[5]; ?></textarea>
                                                                <label for="floatingTextarea">Solución</label>
                                                            </div>
                                                        <?php
                                                        }
                                                        ?>

                                                        <?php
                                                        if ($listTarea[8] != '' || $listTarea[8] != null) {
                                                        ?>
                                                            <hr>
                                                            <div class="form-floating mb-3">
                                                                <textarea class="form-control" name="motivoCancelacion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required><?php echo $listTarea[8]; ?></textarea>
                                                                <label for="floatingTextarea">Motivo de la cancelación</label>
                                                            </div>
                                                        <?php
                                                        }
                                                        ?>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>


                                    <!-- Modal Tarea Terminada -->
                                    <div class="modal fade" id="modalTareaCompletada<?php echo $listTarea[0]; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">Terminar tarea</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <form action="../controlador/c_terminarTarea.php" method="post" style="display: none;">

                                                    <div class="modal-body">

                                                        <p class="fs-6">Para terminar la tarea debe completar lo siguiente</p>

                                                        <input type="hidden" name="id" value="<?php echo $listTarea[0]; ?>">

                                                        <div class="form-floating mb-3">
                                                            <textarea class="form-control" name="solucion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required></textarea>
                                                            <label for="floatingTextarea">Solución</label>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                        <button type="submit" class="btn btn-success">Terminar tarea</button>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>

                </div>

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