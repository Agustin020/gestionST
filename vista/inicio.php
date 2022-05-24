<?php
session_start();
if (isset($_SESSION['username']) && isset($_SESSION['rol'])) {
    if ($_SESSION['rol'] == 1) {
?>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Inicio - Gestión ST</title>
            <?php require('libreriaEstilos.php'); ?>
        </head>

        <style>
            body {
                /* fallback for old browsers */
                background: #6a11cb;
                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));
                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
            }

            p {
                color: white;
            }

            section {
                margin-left: 180px;
                padding: 10px;
            }

            .cajas {
                display: grid;
                grid-template-columns: 1fr 1fr 1fr;
                column-gap: 20px;
            }

            .cajas .caja1 {
                display: flex;
                justify-content: space-between;
            }

            .cajas .principal {
                grid-column: 1/5;
                display: flex;
                justify-content: center;
            }

            .cajas .caja1 i {
                font-size: 70px;
                color: white;
            }

            .cajas .caja1:hover i {
                animation: pulse;
                animation-duration: 1.5s;
            }

            .cajas .caja1>* {
                margin: 10px 20px;
            }
        </style>


        <body>
            <?php require('headerNav.php'); ?>
            <section>
                <p class="fs-5">Bienvenido <?php echo $_SESSION['nombreApellido']; ?></p>

                <?php
                error_reporting(0);
                $datosAct = $_SESSION['datosAct'];
                if ($datosAct == true) {
                ?>
                    <script>
                        Swal.fire({
                            position: 'bottom-end',
                            icon: 'success',
                            title: 'Los datos han sido modificados',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    </script>
                <?php
                    unset($_SESSION['datosAct']);
                }
                ?>

                <?php
                require('../modelo/m_consultas.php');
                $co = new Consultas();

                $totalTareas = $co->contarTareas();
                $totalPendientes = $co->contarTareasPendientes();
                $totalEnProgreso = $co->contarTareasEnProgreso();
                $totalCompletas = $co->contarTareasCompletas();
                $totalCanceladas = $co->contarTareasCanceladas();
                $cantAgentes = $co->contarAgentes();
                ?>

                <div class="cajas">

                    <div class="principal">
                        <div class="card text-bg-dark mb-3 principal" style="max-width: auto;">
                            <div class="card-body caja1">
                                <div id="txtInfo">
                                    <h1 class="card-title"><?php echo $totalTareas; ?></h1>
                                    <p class="card-text">Total de tareas</p>
                                </div>
                                <i class="bi bi-clipboard-data"></i>
                            </div>
                        </div>
                    </div>

                    <div class="card text-bg-secondary mb-3" style="max-width: auto;">
                        <div class="card-body caja1">
                            <div id="txtInfo">
                                <h1 class="card-title"><?php echo $totalPendientes; ?></h1>
                                <p class="card-text">Total de tareas 'Pendientes'</p>
                            </div>
                            <i class="bi bi-list-task"></i>
                        </div>
                    </div>

                    <div class="card text-bg-primary mb-3" style="max-width: auto;">
                        <div class="card-body caja1">
                            <div id="txtInfo">
                                <h1 class="card-title"><?php echo $totalEnProgreso; ?></h1>
                                <p class="card-text">Total de tareas 'En progreso'</p>
                            </div>
                            <i class="bi bi-list-ul"></i>
                        </div>
                    </div>

                    <div class="card text-bg-success mb-3" style="max-width: auto;">
                        <div class="card-body caja1">
                            <div id="txtInfo">
                                <h1 class="card-title"><?php echo $totalCompletas; ?></h1>
                                <p class="card-text">Total de tareas 'Completas'</p>
                            </div>
                            <i class="bi bi-list-check"></i>
                        </div>
                    </div>

                    <div class="card text-bg-danger mb-3" style="max-width: auto;">
                        <div class="card-body caja1">
                            <div id="txtInfo">
                                <h1 class="card-title"><?php echo $totalCanceladas; ?></h1>
                                <p class="card-text">Total de tareas 'Canceladas'</p>
                            </div>
                            <i class="bi bi-clipboard-x"></i>
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
        <p class="fs-5">Para acceder a esta sección debe iniciar sesión <a href="login.php" class="link-primary">Click aquí</a></p>
    </body>

    </html>

<?php
}
?>