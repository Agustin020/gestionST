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
        </head>

        <style>
            section {
                margin-left: 180px;
                padding: 15px;
            }

            section .acordeonContenido {
                display: flex;
                justify-content: space-between;
            }

            section .acordeonContenido p {
                margin-bottom: 5px !important;
            }

            section #btnTarea {
                display: flex;
                justify-content: space-between;
                margin: 5px 0;
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
            $(document).ready(function() {
                $('input[name=radioFiltro]').prop('checked', false);
                $('input[name=fechaProblemaFiltro]').val(0);
                $('select[name=selectAgentes]').val(0);
                $('.selectAgentes').prop('value', '');

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
                                columns: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                            }
                        },
                        {
                            extend: 'pdfHtml5',
                            orientation: 'landscape',
                            pageSize: 'A4',
                            download: 'open',
                            title: 'Listado de Tareas - Gestión Servicio Técnico Guaymallén',
                            messageTop: 'Reporte: ' + localdate,
                            exportOptions: {
                                columns: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
                            }
                        },
                    ],
                    language: {
                        "url": "//cdn.datatables.net/plug-ins/1.11.5/i18n/es-ES.json"
                    }
                })
            })

            //FILTROS BUSQUEDA DE TAREAS
            function validarRadios(radio) {
                var radioValor = radio.value;
                $('input[name=fechaProblemaFiltro]').val(0);
                $('input[name=fechaSolucionFiltro]').val(0);
                $('select[name=selectAgentes]').val(0);
                if (radioValor != null) {
                    $('#tPrincipal').hide();
                    $('#tResultado').show();
                    enviarDatosRadioPost(radioValor);
                } else {
                    $('#tPrincipal').show();
                    $('#tResultado').hide();
                }
            }

            function buscarPorFechaProblema(fecha) {
                var fechaProblema = fecha.value;
                $('input[name=radioFiltro]').prop('checked', false);
                $('input[name=fechaSolucionFiltro]').val(0);
                $('select[name=selectAgentes]').val(0);
                if (fechaProblema != null) {
                    $('#tPrincipal').hide();
                    $('#tResultado').show();
                    buscarPorFechaProblemaAjax(fechaProblema);
                } else {
                    $('#tPrincipal').show();
                    $('#tResultado').hide();
                }
            }

            function buscarPorFechaSolucion(fecha) {
                var fechaSolucion = fecha.value;
                $('input[name=radioFiltro]').prop('checked', false);
                $('input[name=fechaProblemaFiltro]').val(0);
                $('select[name=selectAgentes]').val(0);
                if (fechaSolucion != null) {
                    $('#tPrincipal').hide();
                    $('#tResultado').show();
                    buscarPorFechaSolucionAjax(fechaSolucion);
                } else {
                    $('#tPrincipal').show();
                    $('#tResultado').hide();
                }
            }

            function mostrarTareaAgente(valSelect) {
                var dni = valSelect.value;
                $('input[name=radioFiltro]').prop('checked', false);
                $('input[name=fechaProblemaFiltro]').val(0);
                $('input[name=fechaSolucionFiltro]').val(0);
                if (dni != null) {
                    $('#tPrincipal').hide();
                    $('#tResultado').show();
                    enviarDatosSelectAgente(dni);
                } else {
                    $('#tPrincipal').show();
                    $('#tResultado').hide();
                }
            }

            function validarSelectEstado_Agente(valSelect) {
                var estado = valSelect.value;
                if (estado > 1) {
                    $('.selectAgentes').prop('required', 'required');
                    $('.selectAgentes').prop('value', '');
                } else {
                    $('.selectAgentes').prop('required', false);
                }
            }

            function mostrarCampoCancelar() {
                $('#inputMotivoCancelacion').show();
            }


            //AJAX
            function enviarDatosRadioPost(radioValor) {
                $.ajax({
                    type: 'POST',
                    url: 'filtrosTareas/filtroRadios.php',
                    data: 'valor=' + radioValor,
                    success: function(r) {
                        $('#tResultado').html(r);
                    }
                });
            }

            //FILTROS DATE
            function buscarPorFechaProblemaAjax(fecha) {
                $.ajax({
                    type: 'POST',
                    url: 'filtrosTareas/filtroFechaProblema.php',
                    data: 'fechaProblema=' + fecha,
                    success: function(r) {
                        $('#tResultado').html(r);
                    }
                });
            }

            function buscarPorFechaSolucionAjax(fecha) {
                $.ajax({
                    type: 'POST',
                    url: 'filtrosTareas/filtroFechaSolucion.php',
                    data: 'fechaSolucion=' + fecha,
                    success: function(r) {
                        $('#tResultado').html(r);
                    }
                });
            }
        </script>

        <script>
            $(document).ready(function() {
                $('.btnCerrarModalEditar').click(function() {
                    $(".modalEditar .modal-body .selectEstado").val("");
                })
            })
        </script>

        <body>
            <section>

                <?php
                error_reporting(0);
                if ($_SESSION['tareaOK'] == true) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'La tarea ha sido añadida exitosamente',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['tareaOK']);
                }
                ?>

                <?php
                error_reporting(0);
                if ($_SESSION['tareaEditada'] == true) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'La tarea ha sido modificada',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['tareaEditada']);
                }
                ?>

                <p class="fs-5">Tareas</p>
                <hr>
                <p class="fs-6">
                    Para editar o cancelar una tarea. Aprete el botón <b>Acción</b><br>
                    Para agregar una nueva tarea, el botón <b>Nueva Tarea</b>
                </p>
                <div class="table-responsive-xxl">
                    <div id="btnTarea">


                        <form action="../controlador/c_enc_agregarTarea.php" method="post">
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
                                                <textarea class="form-control" name="descripción" placeholder="Leave a comment here" id="floatingTextarea" style="height: 100px"></textarea>
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
                                    <th scope="col">Solución</th>
                                    <th scope="col">Estado</th>
                                    <th scope="col">Motivo de la cancelación</th>
                                    <th scope="col">Fecha Problema</th>
                                    <th scope="col">Fecha Solución</th>
                                    <th scope="col">Área</th>
                                    <th scope="col">Acción</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($listTareasEncargados as $listTarea) {
                                ?>
                                    <tr>
                                        <td style="text-align: center;"><?php echo $listTarea[0]; ?></td>
                                        <td><?php echo $listTarea[2]; ?></td>
                                        <td><?php echo $listTarea[3]; ?></td>
                                        <td><?php echo $listTarea[4]; ?></td>
                                        <td><?php echo $listTarea[5]; ?></td>
                                        <td>
                                            <?php
                                            if ($listTarea[7] == 'Pendiente') {
                                                echo '<span class="badge bg-secondary">' . $listTarea[7] . '</span>';
                                            } else if ($listTarea[7] == 'En Progreso') {
                                                echo '<span class="badge bg-primary">' . $listTarea[7] . '</span>';
                                            } else if ($listTarea[7] == 'Completo') {
                                                echo '<span class="badge bg-success">' . $listTarea[7] . '</span>';
                                            } else if ($listTarea[7] == 'Cancelado') {
                                                echo '<span class="badge bg-danger">' . $listTarea[7] . '</span>';
                                            }
                                            ?>
                                        </td>
                                        <td><?php echo $listTarea[12]; ?></td>
                                        <td>
                                            <?php
                                            $date = date_create($listTarea[8]);
                                            $fechaProblema = date_format($date, 'd/m/Y H:i:s');
                                            echo $fechaProblema;
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            if ($listTarea[9] != null) {
                                                $date = date_create($listTarea[9]);
                                                $fechaSolucion = date_format($date, 'd/m/Y H:i:s');
                                                echo $fechaSolucion;
                                            }
                                            ?>
                                        </td>
                                        <td><?php echo $listTarea[11]; ?></td>

                                        <td id="accion">
                                            <?php
                                            if ($listTarea[7] != 'Completo') {
                                            ?>
                                                <div class="btn-group" role="group">
                                                    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                        Acción
                                                    </button>
                                                    <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                                        <li><a type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalEditarTarea<?php echo $listTarea[0]; ?>">Editar tarea</a></li>
                                                        <?php
                                                        if ($listTarea[7] != 'Cancelado' && $listTarea[7] != 'Completo') {
                                                        ?>
                                                            <li><a type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalCancelarTarea<?php echo $listTarea[0]; ?>">Cancelar tarea</a></li>
                                                        <?php
                                                        }
                                                        ?>
                                                    </ul>
                                                </div>
                                            <?php
                                            }
                                            ?>
                                        </td>
                                    </tr>

                                    <!-- Modal Editar Tarea -->
                                    <div class="modal fade modalEditar" id="modalEditarTarea<?php echo $listTarea[0]; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar Tarea</h5>
                                                    <button type="button" class="btn-close btnCerrarModalEditar" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <form action="../controlador/c_enc_editarTarea.php" method="post" style="display: none;">
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
                                                            <label for="floatingSelect">Motivo del incoveniente</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <textarea class="form-control" name="descripcion" placeholder="Leave a comment here" id="floatingTextarea" style="height: 100px"><?php echo $listTarea[3]; ?></textarea>
                                                            <label for="floatingTextarea">Descripción</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <input type="text" name="ip" value="<?php echo $listTarea[4]; ?>" class="form-control" id="floatingInput" placeholder="..." required>
                                                            <label for="floatingInput">IP</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <select class="form-select" name="selectArea" id="floatingSelect" aria-label="Floating label select example" required>
                                                                <option value="<?php echo $listTarea[10]; ?>" selected><?php echo $listTarea[11]; ?> (Actual)</option>
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
                                                            <label for="floatingSelect">Área donde se desempeña</label>
                                                        </div>

                                                        <hr>

                                                        <?php
                                                        if ($listTarea[12] != '' || $listTarea[12] != null) {
                                                        ?>
                                                            <div class="form-floating mb-3">
                                                                <textarea class="form-control" name="motivoCancelacion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required><?php echo $listTarea[12]; ?></textarea>
                                                                <label for="floatingTextarea">Motivo de la cancelación</label>
                                                            </div>
                                                        <?php
                                                        }
                                                        ?>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary btnCerrarModalEditar" data-bs-dismiss="modal">Cerrar</button>
                                                        <button type="submit" class="btn btn-primary">Guardar Cambios</button>
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
                                                    <h5 class="modal-title" id="staticBackdropLabel">Cancelar tarea</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <form action="../controlador/c_enc_cancelarTarea.php" method="post" style="display: none;">

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
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>

                    <div id="tResultado">

                    </div>

                </div>


            </section>
        </body>

        </html>

    <?php
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
}
?>