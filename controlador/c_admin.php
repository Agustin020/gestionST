<?php
class ControladorAdmin
{

    public function verEstadisticasContr($time)
    {
        echo ('<title>Estadísticas</title>');
        require('../modelo/m_estadisticas.php');
        $co = new ConsultasEstadisticas();

        if ($time == 'now') {
            $totalTareas = $co->contarTareasActual();
            $totalPendientes = $co->contarTotalPendientesActual();
            $totalEnProgreso = $co->contarTotalEnProgresoActual();
            $totalCompletas = $co->contarTotalCompletasActual();
            $totalCanceladas = $co->contarTotalCanceladasActual();
            $totalEliminadas = $co->contarTotalEliminadasActual();

            $totalRedes = $co->contarTotalRedesActual();
            $totalInfraestrucutra = $co->contarTotalInfraestructuraActual();
            $totalSTecnico = $co->contarTotalSTecnicoActual();
            $totalRequerimientos = $co->contarTotalRequerimientosActual();
            $totalFDigital = $co->contarTotalFDigitalActual();
            $totalPDigital = $co->contarTotalPDigitalActual();
            $totalCctv = $co->contarTotalCCTVActual();

            $totalMotivosRedes = $co->totalMotivosRedesActual();
            $totalMotivosInfr = $co->totalMotivosInfraestructuraActual();
            $totalMotivosSTecnico = $co->totalMotivosSTecnicoActual();
            $totalMotivosRequerimientos = $co->totalMotivosRequerimientosActual();
            $totalMotivosFDigital = $co->totalMotivosFDigitalActual();
            $totalMotivosPDigital = $co->totalMotivosPDigitalActual();
            $totalMotivosCCTV = $co->totalMotivosCCTVActual();
        }else if($time == 'month'){
            
        }

/*        
        $totalTareas = $co->contarTareas();
        $totalPendientes = $co->contarTotalPendientes();
        $totalEnProgreso = $co->contarTotalEnProgreso();
        $totalCompletas = $co->contarTotalCompletas();
        $totalCanceladas = $co->contarTotalCanceladas();
        $totalEliminadas = $co->contarTotalEliminadas();

        $totalRedes = $co->contarTotalRedes();
        $totalInfraestrucutra = $co->contarTotalInfraestructura();
        $totalSTecnico = $co->contarTotalSTecnico();
        $totalRequerimientos = $co->contarTotalRequerimientos();
        $totalFDigital = $co->contarTotalFDigital();
        $totalPDigital = $co->contarTotalPDigital();
        $totalCctv = $co->contarTotalCCTV();

        $totalMotivosRedes = $co->totalMotivosRedes();
        $totalMotivosInfr = $co->totalMotivosInfraestructura();
        $totalMotivosSTecnico = $co->totalMotivosSTecnico();
        $totalMotivosRequerimientos = $co->totalMotivosRequerimientos();
        $totalMotivosFDigital = $co->totalMotivosFDigital();
        $totalMotivosPDigital = $co->totalMotivosPDigital();
        $totalMotivosCCTV = $co->totalMotivosCCTV();*/

        require('libreriaEstilos.php');
        require('headerNav.php');
        require('estadisticas.php');
    }

    public function listarTareasEncargadoContr()
    {
        echo ('<title>Listado de Tareas - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listAreas = $co->listarAreas();
        $listMotivos = $co->listarMotivosProblemas();
        $listTareasEncargados = $co->listarTareasEncargados();
        $listDirecciones = $co->listarDirecciones();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listaTareas.php');
    }

    public function listarTareasAgenteContr()
    {
        echo ('<title>Listado de Tareas - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listTareasAgentes = $co->listarTareasAgentes($_SESSION['areaUsuario']);
        $listMotivos = $co->listarMotivosProblemasUsuario($_SESSION['dni']);
        $listDirecciones = $co->listarDirecciones();
        $listAgentes = $co->listarAgentes();
        $areaUsuario = $co->listarNombreAreaUsuario($_SESSION['dni']);
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listaTareas.php');
    }

    public function listarTareasAdminContr()
    {
        echo ('<title>Listado de Tareas - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listDatosAgentes = $co->listarAgentes();
        //Comprobar si esta en un Área el usuario, sino es Admin
        if (isset($_SESSION['areaUsuario'])) {
            if ($_SESSION['areaUsuario'] != null || $_SESSION['areaUsuario'] != '') {
                $listTareasAgentes = $co->listarTareasAgentes($_SESSION['areaUsuario']);
            }
        } else {
            $listTareasAgentes = $co->listarTareasAdmin();
        }

        $listMotivos = $co->listarMotivosProblemasUsuario($_SESSION['dni']);
        $listDirecciones = $co->listarDirecciones();
        $listAgentes = $co->listarAgentes();
        $listAreas = $co->listarAreas();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listarTareasAdmin.php');
    }

    public function listarTareasEliminadasContr()
    {
        echo ('<title>Listado de Tareas Eliminadas - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listTareasEliminadas = $co->listarTareasEliminadas();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listaTareasEliminadas.php');
    }

    public function listarAgentesContr()
    {
        echo ('<title>Listado de Agentes - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listEncAgentes = $co->listarEncargadosAgentes();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listaAgentes.php');
    }

    public function listarTareaAgenteContr($dni)
    {
        echo ('<title>Tareas de Agente - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listTareaAgente = $co->listarTareaAgente($dni);
        $listEstados = $co->listarEstadoTarea();
        $agente = $co->listarUserActual($dni);
        $areaUsuario = $co->listarNombreAreaUsuario($dni);
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listarTareaAgente.php');
    }

    public function listarDireccionesContr()
    {
        echo ('<title>Listado de Áreas - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listDirecciones = $co->listarDirecciones();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listaDirecciones.php');
    }


    public function listarUsuariosContr()
    {
        echo ('<title>Lista de Usuarios - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listUsuarios = $co->listarUsuarios();
        $listRoles = $co->listarRoles();
        $listAreas = $co->listarAreas();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('usuarios.php');
    }

    public function listarUsuariosBajaContr()
    {
        echo ('<title>Lista de Usuarios de baja - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listBajas = $co->listarBajasUsuarios();
        $listRoles = $co->listarRoles();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listarUsuariosBaja.php');
    }
}
