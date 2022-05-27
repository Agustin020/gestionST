<?php

require('../../modelo/m_conexionPage.php');
$link = conexion();
$dni = $_POST['dni'];

$html =
    '<table class="table table-responsive table-bordered table-hover" id="tablaAjax">
    <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">Motivo</th>
        <th scope="col">Descripción</th>
        <th scope="col">IP</th>
        <th scope="col">Estado</th>
        <th scope="col">Fecha Problema</th>
        <th scope="col">Área</th>
        <th scope="col">Acción</th>
        </tr>
    </thead>
    <tbody>';

$sql = "SELECT t.nroArreglo, m.motivos, t.descripcion, t.ip, e.nombre, t.fechaProblema, a.nombre, u.dni
        from tareas t, motivos m, estadotarea e, areas a, usuario u
        where t.id_motivos = m.id and t.estadoTarea_id = e.id and t.area_codigo = a.codigo and t.usuario_dni = u.dni and u.dni = '$dni'";

$result = mysqli_query($link, $sql);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_row($result)) {

        if ($row[4] == 'Pendiente') {
            $estado = '<span class="badge bg-secondary">' . $row[4] . '</span>';
        } else if ($row[4] == 'En Progreso') {
            $estado = '<span class="badge bg-primary">' . $row[4] . '</span>';
        } else if ($row[4] == 'Completo') {
            $estado = '<span class="badge bg-success">' . $row[4] . '</span>';
        }

        $date = date_create($row[5]);
        $fechaProblema = date_format($date, 'd/m/Y H:i:s');

        $html .= '<tr>
        <td>' . $row[0] . '</td>
        <td>' . $row[1] . '</td>
        <td>' . $row[2] . '</td>
        <td>' . $row[3] . '</td>
        <td>' . $estado . '</td>
        <td>' . $fechaProblema . '</td>
        <td>' . $row[6] . '</td>
        <td id="accion">
            <div class="btn-group" role="group">
                <button id="btnGroupDrop1" type="button" class="btn btn-outline-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    Acción
                </button>
                <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                    <li>
                        <a class="dropdown-item" href="index.php?accion=editarTarea&nroArreglo=' . $row[0] . '">
                            Editar
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="../controlador/c_eliminarTarea.php?nroArreglo=' . $row[0] . '">
                            Eliminar
                        </a>
                    </li>
                 </ul>
            </div>
        </td>
    </tr>';
    }
    $html .= '</tbody></table>';
    echo $html;
} else {
    $sqlNot = '<p class="text-center fs-5">No se han encontrado resultados</p>';
    echo $sqlNot;
}
