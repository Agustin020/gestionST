<?php
if (isset($_SESSION['username']) && isset($_SESSION['rol'])) {
    if ($_SESSION['rol'] == 2) {
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
                        aLengthMenu: [25, 50, 100, 200],
                        dom: 'lBfrtip',
                        buttons: [{
                                extend: 'excelHtml5',
                                title: 'Listado de Tareas - Gesti??n Sistemas',
                                messageTop: 'Reporte: ' + localdate,
                                exportOptions: {
                                    columns: [0, 1, 2, 3, 4, 5, 6, 7]
                                }
                            },
                            {
                                extend: 'pdfHtml5',
                                orientation: 'landscape',
                                pageSize: 'A4',
                                download: 'open',
                                messageTop: 'Reporte: ' + localdate + '\n' + '??rea: <?php echo $areaUsuario; ?>',
                                title: 'Listado de Tareas - Gesti??n Sistemas',
                                exportOptions: {
                                    columns: [0, 1, 2, 3, 4, 5, 6, 7]
                                },
                            },
                        ],
                        language: {
                            "url": "//cdn.datatables.net/plug-ins/1.11.5/i18n/es-ES.json"
                        }
                    })
                })

                function mostrarIP(valor) {
                    if (valor.checked) {
                        $('#ipSeccion').show(200);
                        $('input[name=ip]').prop('required', true);
                    } else {
                        $('#ipSeccion').hide(200);
                        $('input[name=ip]').prop('required', false);
                        $('input[name=ip]').val('');
                    }
                }

                function validarInputNumerico(valor) {
                    const ip = /^[0-9.]+$/;
                    if (!ip.test(valor.value)) {
                        valor.value = valor.value.substring(0, valor.value.length - 1);
                    }
                }
            </script>
        </head>

        <body>
            <section id="container">
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

                <p class="fs-5">Tareas - <?php echo $areaUsuario ?></p>
                <hr>
                <p class="fs-6">Para manipular las tareas, presione <b>Acci??n</b></p>
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
                                            <p class="fs-6">Ingrese la tarea con sus respectivos datos</p>

                                            <input type="hidden" name="rol" value="<?php echo $_SESSION['rol']; ?>">

                                            <input type="hidden" name="areaUsuario" value="<?php echo $_SESSION['areaUsuario']; ?>">

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
                                                <label for="floatingTextarea">Descripci??n</label>
                                            </div>

                                            <div class="form-check mb-3">
                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" onclick="mostrarIP(this);">
                                                <label class="form-check-label" for="flexCheckChecked">
                                                    Con IP
                                                </label>
                                            </div>

                                            <div class="form-floating mb-3" id="ipSeccion" style="display: none;">
                                                <input type="text" name="ip" oninput="validarInputNumerico(this);" class="form-control" id="floatingInput" placeholder="Nombre del Afectado">
                                                <label for="floatingInput">IP</label>
                                            </div>

                                            <div class="form-floating mb-3">
                                                <input type="text" name="nombreApellidoAfectado" class="form-control" id="floatingInput" placeholder="ejemplo">
                                                <label for="floatingInput">Nombre y apellido del afectado/a (Opcional)</label>
                                            </div>

                                            <div class="form-floating mb-3">
                                                <input type="tel" name="cel" oninput="validarInputNumerico(this);" class="form-control" id="floatingInput" placeholder="ejemplo">
                                                <label for="floatingInput">Nro de celular (Opcional)</label>
                                            </div>

                                            <div class="form-floating mb-3">
                                                <select class="form-select" name="direccion" id="floatingSelect" aria-label="Floating label select example" required>
                                                    <option value="" selected>Seleccione...</option>
                                                    <?php
                                                    foreach ($listDirecciones as $direccion) {
                                                    ?>
                                                        <option value="<?php echo $direccion[0]; ?>">
                                                            <?php echo $direccion[1]; ?>
                                                        </option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                                <label for="floatingSelect">Seleccione la Direcci??n donde se desempe??a</label>
                                            </div>

                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                            <button type="submit" id="btnGuardar" class="btn btn-primary">Crear tarea</button>
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
                                    <th scope="col">Descripci??n</th>

                                    <?php
                                    //IP
                                    if ($_SESSION['areaUsuario'] == 1 || $_SESSION['areaUsuario'] == 2 || $_SESSION['areaUsuario'] == 3 || $_SESSION['areaUsuario'] == 7) {
                                    ?>
                                        <th scope="col">IP</th>
                                    <?php
                                    }
                                    ?>

                                    <th scope="col">Estado</th>
                                    <th scope="col">Fecha Problema</th>
                                    <th scope="col">Fecha Soluci??n</th>
                                    <th scope="col">Direcci??n</th>
                                    <th scope="col">Asignado</th>
                                    <th scope="col">Acci??n</th>
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

                                        <?php
                                        //IP
                                        if ($_SESSION['areaUsuario'] == 1 || $_SESSION['areaUsuario'] == 2 || $_SESSION['areaUsuario'] == 3 || $_SESSION['areaUsuario'] == 7) {
                                        ?>
                                            <td><?php echo $listTarea[4]; ?></td>
                                        <?php
                                        }
                                        ?>

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
                                                    Acci??n
                                                </button>
                                                <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">

                                                    <li>
                                                        <a type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalInfoTarea<?php echo $listTarea[0]; ?>">
                                                            Ver m??s info
                                                        </a>
                                                    </li>

                                                    <?php
                                                    if ($listTarea[9] != 'Cancelado' && $listTarea[15] == 0) {
                                                    ?>
                                                        <li>
                                                            <a class="dropdown-item" href="../controlador/c_tomarTarea.php?id=<?php echo $listTarea[0]; ?>&selectAgentes=<?php echo $_SESSION['dni']; ?>">
                                                                Asignarme la tarea
                                                            </a>
                                                        </li>
                                                    <?php
                                                    }
                                                    if ($listTarea[15] != 0 && $listTarea[9] != 'Completo' && $listTarea[15] == $_SESSION['dni']) {
                                                    ?>
                                                        <li>
                                                            <a class="dropdown-item" href="../controlador/c_quitarTareaAsignado.php?id=<?php echo $listTarea[0]; ?>">
                                                                Quitarme la tarea asignada
                                                            </a>
                                                        </li>
                                                    <?php
                                                    }
                                                    if ($listTarea[9] == 'En Progreso' && $listTarea[15] == $_SESSION['dni']) {
                                                    ?>
                                                        <li>
                                                            <a type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalTareaCompletada<?php echo $listTarea[0]; ?>">
                                                                Terminar tarea
                                                            </a>
                                                        </li>

                                                    <?php
                                                    }
                                                    if ($listTarea[9] != 'Cancelado' && $listTarea[9] != 'Completo' && $listTarea[15] == $_SESSION['dni'] || $listTarea[9] == 'Pendiente') {
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
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>

                                    <!-- Modal Ver Info Tarea -->
                                    <div class="modal fade" id="modalInfoTarea<?php echo $listTarea[0]; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">Informaci??n de la tarea</h5>
                                                    <button type="button" class="btn-close btnCerrarModalEditar" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body bodyModalInfo">

                                                    <p class="fs-6">Tarea N?? <?php echo $listTarea[0]; ?></p>

                                                    <input type="hidden" name="nroArreglo" value="<?php echo $listTarea[0]; ?>">

                                                    <div class="form-floating mb-3">
                                                        <select class="form-select" name="selectMotivos" id="floatingSelect" aria-label="Floating label select example" disabled>
                                                            <option value="<?php echo $listTarea[1]; ?>" selected><?php echo $listTarea[2]; ?></option>
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
                                                        <textarea class="form-control" name="descripcion" placeholder="Leave a comment here" id="floatingTextarea" style="height: 100px" disabled><?php echo $listTarea[3]; ?></textarea>
                                                        <label for="floatingTextarea">Descripci??n</label>
                                                    </div>

                                                    <?php
                                                    if ($listTarea[4] == '' || $listTarea[4] == null) {
                                                        $ip = 'No proporcionado';
                                                    } else {
                                                        $ip = $listTarea[4];
                                                    }
                                                    ?>

                                                    <div class="form-floating mb-3">
                                                        <input type="text" name="ip" value="<?php echo $ip; ?>" class="form-control" id="floatingInput" placeholder="..." disabled>
                                                        <label for="floatingInput">IP</label>
                                                    </div>

                                                    <?php
                                                    if ($listTarea[5] == '' || $listTarea[5] == null) {
                                                        $nombreApellidoAfectado = 'No proporcionado';
                                                    } else {
                                                        $nombreApellidoAfectado = $listTarea[5];
                                                    }
                                                    ?>

                                                    <div class="form-floating mb-3">
                                                        <input type="text" name="nombreApellido" value="<?php echo $nombreApellidoAfectado; ?>" class="form-control" id="floatingInput" placeholder="..." disabled>
                                                        <label for="floatingInput">Nombre y apellido del afectado/a</label>
                                                    </div>

                                                    <?php
                                                    if ($listTarea[6] == '' || $listTarea[6] == null) {
                                                        $cel = 'No proporcionado';
                                                    } else {
                                                        $cel = $listTarea[6];
                                                    }
                                                    ?>

                                                    <div class="form-floating mb-3">
                                                        <input type="text" name="cel" value="<?php echo $cel; ?>" class="form-control" id="floatingInput" placeholder="..." disabled>
                                                        <label for="floatingInput">Nro de celular de contacto</label>
                                                    </div>


                                                    <div class="form-floating mb-3">
                                                        <input type="text" name="estadoTarea" value="<?php echo $listTarea[9]; ?>" class="form-control" id="floatingInput" placeholder="..." disabled>
                                                        <label for="floatingInput">Estado de la tarea</label>
                                                    </div>


                                                    <?php
                                                    if ($listTarea[7] != '') {
                                                    ?>
                                                        <div class="form-floating mb-3">
                                                            <textarea class="form-control" name="solucion" placeholder="Leave a comment here" id="floatingTextarea" style="height: 100px" disabled><?php echo $listTarea[7]; ?>    
                                                            </textarea>
                                                            <label for="floatingTextarea">Soluci??n del incoveniente</label>
                                                        </div>
                                                    <?php
                                                    }
                                                    ?>

                                                    <?php
                                                    if ($listTarea[10] != '') {
                                                    ?>
                                                        <div class="form-floating mb-3">
                                                            <textarea class="form-control" name="solucion" placeholder="Leave a comment here" id="floatingTextarea" style="height: 100px" disabled><?php echo $listTarea[10]; ?>    
                                                            </textarea>
                                                            <label for="floatingTextarea">Motivo de la cancelaci??n</label>
                                                        </div>
                                                    <?php
                                                    }
                                                    ?>

                                                    <?php
                                                    $date = date_create($listTarea[11]);
                                                    $fechaProblema = date_format($date, 'd/m/Y H:i:s');
                                                    ?>
                                                    <div class="form-floating mb-3">
                                                        <input type="text" name="fechaProblema" value="<?php echo $fechaProblema; ?>" class="form-control" id="floatingInput" placeholder="..." disabled>
                                                        <label for="floatingInput">Fecha del problema</label>
                                                    </div>

                                                    <?php
                                                    if ($listTarea[12] != '') {
                                                        $date = date_create($listTarea[12]);
                                                        $fechaSolucion = date_format($date, 'd/m/Y H:i:s');
                                                    ?>
                                                        <div class="form-floating mb-3">
                                                            <input type="text" name="fechaSolucion" value="<?php echo $fechaSolucion; ?>" class="form-control" id="floatingInput" placeholder="..." disabled>
                                                            <label for="floatingInput">Fecha de la soluci??n</label>
                                                        </div>
                                                    <?php
                                                    }
                                                    ?>

                                                    <div class="form-floating mb-3">
                                                        <input type="text" name="area" value="<?php echo $listTarea[14]; ?>" class="form-control" id="floatingInput" placeholder="..." disabled>
                                                        <label for="floatingInput">Direcci??n donde se desempe??a</label>
                                                    </div>

                                                    <?php
                                                    if ($listTarea[16] == '' || $listTarea[16] == null) {
                                                        $asignado = 'No proporcionado';
                                                    } else {
                                                        $asignado = $listTarea[16];
                                                    }
                                                    ?>

                                                    <div class="form-floating mb-3">
                                                        <input type="text" name="area" value="<?php echo $asignado; ?>" class="form-control" id="floatingInput" placeholder="..." disabled>
                                                        <label for="floatingInput">Asignado</label>
                                                    </div>

                                                    <div class="form-floating mb-3">
                                                        <input type="text" name="area" value="<?php echo $listTarea[18]; ?>" class="form-control" id="floatingInput" placeholder="..." disabled>
                                                        <label for="floatingInput">??rea donde se lleva a cabo la tarea/reclamo</label>
                                                    </div>

                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary btnCerrarModalEditar" data-bs-dismiss="modal">Cerrar</button>
                                                </div>
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

                                                <form action="../controlador/c_cancelarTarea.php" method="post" style="display: none;">

                                                    <div class="modal-body">

                                                        <p class="fs-6">Para cancelar la tarea debe completar lo siguiente</p>

                                                        <input type="hidden" name="id" value="<?php echo $listTarea[0]; ?>">

                                                        <div class="form-floating mb-3">
                                                            <textarea class="form-control" name="motivoCancelacion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required></textarea>
                                                            <label for="floatingTextarea">Motivo de la cancelaci??n</label>
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
                                                            <label for="floatingTextarea">Soluci??n</label>
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


                                    <!-- Modal Editar Tarea -->
                                    <div class="modal fade" id="modalEditarTarea<?php echo $listTarea[0]; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">Editar tarea N??<?php echo $listTarea[0]; ?></h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <form action="../controlador/c_editarTarea.php" method="post" style="display: none;">

                                                    <div class="modal-body">

                                                        <input type="hidden" name="nroArreglo" value="<?php echo $listTarea[0]; ?>">

                                                        <input type="hidden" name="areaUsuario" value="<?php echo $_SESSION['areaUsuario']; ?>">

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
                                                            <label for="floatingTextarea">Descripci??n</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <input type="text" name="ip" oninput="validarInputNumerico(this);" value="<?php echo $listTarea[4]; ?>" class="form-control" id="floatingInput" placeholder="ip">
                                                            <label for="floatingInput">IP</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <input type="text" name="nombreApellidoAfectado" value="<?php echo $listTarea[5]; ?>" class="form-control" id="floatingInput" placeholder="ejemplo">
                                                            <label for="floatingInput">Nombre y apellido del afectado/a (Opcional)</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <input type="tel" name="cel" oninput="validarInputNumerico(this);" value="<?php echo $listTarea[6]; ?>" class="form-control" id="floatingInput" placeholder="ejemplo">
                                                            <label for="floatingInput">Nro de celular (Opcional)</label>
                                                        </div>

                                                        <div class="form-floating mb-3">
                                                            <select class="form-select" name="selectDireccion" id="floatingSelect" aria-label="Floating label select example" required>
                                                                <option value="<?php echo $listTarea[13]; ?>" selected><?php echo $listTarea[14]; ?> (Actual)</option>
                                                                <?php
                                                                foreach ($listDirecciones as $direccion) {
                                                                ?>
                                                                    <option value="<?php echo $direccion[0]; ?>">
                                                                        <?php echo $direccion[1]; ?>
                                                                    </option>
                                                                <?php
                                                                }
                                                                ?>
                                                            </select>
                                                            <label for="floatingSelect">Seleccione la Direcci??n donde se desempe??a</label>
                                                        </div>


                                                        <?php
                                                        if ($listTarea[7] != '') {
                                                        ?>
                                                            <hr>
                                                            <div class="form-floating mb-3">
                                                                <textarea class="form-control" name="solucion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required><?php echo $listTarea[7]; ?></textarea>
                                                                <label for="floatingTextarea">Soluci??n</label>
                                                            </div>
                                                        <?php
                                                        }
                                                        ?>

                                                        <?php
                                                        if ($listTarea[10] != '') {
                                                        ?>
                                                            <div class="form-floating mb-3">
                                                                <textarea class="form-control" name="motivoCancelacion" placeholder="Leave a comment" id="floatingTextarea" style="height: 100px" required><?php echo $listTarea[10]; ?></textarea>
                                                                <label for="floatingTextarea">Motivo de la cancelaci??n</label>
                                                            </div>
                                                        <?php
                                                        }
                                                        ?>


                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                        <button type="submit" class="btn btn-success">Editar</button>
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
        <p class="fs-5">Para acceder a esta secci??n debe iniciar sesi??n <a href="../vista/login.php" class="link-primary">Click aqu??</a></p>
    </body>

    </html>

<?php
}
?>