<?php
if (isset($_SESSION['rol'])) {
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
                    padding: 15px;
                    margin-left: 180px;
                }

                td,
                th {
                    vertical-align: middle;
                }

                table #nroArreglo,
                table #accion {
                    text-align: center;
                }

                #fechaProblemaSection {
                    display: grid;
                    grid-template-columns: 1fr 1fr;
                    column-gap: 20px;
                }
            </style>

            <script>
                $(document).ready(function() {
                    $('#tablaDinamicaLoad').DataTable({
                        language: {
                            "url": "//cdn.datatables.net/plug-ins/1.11.5/i18n/es-ES.json"
                        }
                    })
                })

                var fechaProblemaInicio = $('input[name=fechaProblemaInicio]').val();
                var fechaProblemaFin = $('input[name=fechaProblemaFin]').val();

                function filtrarBusquedaFechasProblemas(valorOpcion) {
                    var opcion = valorOpcion.value;

                    if (opcion == '') {
                        $('#fechaProblemaSection').show();
                        $('#tPrincipal').hide();
                    } else {
                        filtrarBusquedaFechasProblemasAjax(opcion);
                        $('#fechaProblemaSection').hide();
                        $('#tPrincipal').show();
                    }
                }

                //AJAX
                function filtrarBusquedaFechasProblemasAjax(opcion) {
                    $.ajax({
                        type: 'POST',
                        url: 'ajax/buscarPorFecha.php',
                        data: 'opcionBusqueda=' + opcion,
                        success: function(r) {
                            alert('eea');
                            $('#tResultado').html(r);
                        }
                    })
                }
            </script>

        </head>

        <body>
            <section>

                <p class="fs-5">Lista de tareas de <?php echo $agente ?></p>
                <hr>

                <div id="filtroBusqueda">

                    <p class="fs-5">Filtros de búsqueda</p>

                    <div class="form-floating mb-3" style="width: 400px;">
                        <select class="form-select" onchange="filtrarBusquedaFechasProblemas(this);" id="floatingSelect" aria-label="Floating label select example">
                            <option value="" selected>Seleccione...</option>
                            <option value="1">Por rango de fechas de problemas</option>
                            <option value="2">Por rango de fechas de soluciones</option>
                            <option value="3">Por rango de fechas de sol</option>
                        </select>
                        <label for="floatingSelect">Seleccione la forma de buscar</label>
                    </div>

                    <div id="fechaProblemaSection" style="display: none;">
                        <div class="form-floating mb-3">
                            <input type="date" name="fechaProblemaInicio" class="form-control" id="floatingInput" placeholder="...">
                            <label for="floatingInput">Fecha del Problema. Desde</label>
                        </div>

                        <div class="form-floating mb-3">
                            <input type="date" name="fechaProblemaFin" class="form-control" id="floatingInput" placeholder="...">
                            <label for="floatingInput">Fecha del Problema. Hasta</label>
                        </div>
                    </div>

                </div>

                <div class="table-responsive-xxl" id="tPrincipal">
                    <table class="table table-responsive table-bordered table-hover" id="tablaDinamicaLoad">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Motivo</th>
                                <th scope="col">Descripción</th>
                                <th scope="col">IP</th>
                                <th scope="col">Afectado/a</th>
                                <th scope="col">Estado</th>
                                <th scope="col">Fecha Problema</th>
                                <th scope="col">Fecha Solución</th>
                                <th scope="col">Área</th>
                                <th scope="col">Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($listTareaAgente as $tarea) {
                            ?>
                                <tr>
                                    <td id="nroArreglo"><?php echo $tarea[0]; ?></td>
                                    <td><?php echo $tarea[1]; ?></td>
                                    <td><?php echo $tarea[2]; ?></td>
                                    <td><?php echo $tarea[3]; ?></td>
                                    <td><?php echo $tarea[4]; ?></td>
                                    <td>
                                        <?php
                                        if ($tarea[7] == 'Pendiente') {
                                            echo '<span class="badge bg-secondary">' . $tarea[7] . '</span>';
                                        } else if ($tarea[7] == 'En Progreso') {
                                            echo '<span class="badge bg-primary">' . $tarea[7] . '</span>';
                                        } else if ($tarea[7] == 'Completo') {
                                            echo '<span class="badge bg-success">' . $tarea[7] . '</span>';
                                        } else if ($tarea[7] == 'Cancelado') {
                                            echo '<span class="badge bg-danger">' . $tarea[7] . '</span>';
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?php
                                        $date = date_create($tarea[9]);
                                        $fechaProblema = date_format($date, 'd/m/Y H:i:s');
                                        echo $fechaProblema;
                                        ?>
                                    </td>
                                    <td>
                                        <?php
                                        if ($tarea[10] != '') {
                                            $date = date_create($tarea[10]);
                                            $fechaSolucion = date_format($date, 'd/m/Y H:i:s');
                                            echo $fechaSolucion;
                                        }
                                        ?>
                                    </td>
                                    <td><?php echo $tarea[11]; ?></td>

                                    <td id="accion">
                                        <div class="btn-group" role="group">
                                            <button id="btnGroupDrop1" type="button" class="btn btn-outline-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                Acción
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                                <li>
                                                    <a type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalInfoTarea<?php echo $tarea[0]; ?>">
                                                        Ver más info
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

                </div>

                <div class="table-responsive-xxl" id="tResultado">

                </div>

            </section>
        </body>

        </html>

<?php
    }
}
?>