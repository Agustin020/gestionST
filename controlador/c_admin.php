<?php
class ControladorAdmin
{

    public function listarTareasEncargadoContr()
    {
        echo ('<title>Listado de Tareas - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listMotivos = $co->listarMotivosProblemas();
        $listTareasEncargados = $co->listarTareasEncargados();
        $listAreas = $co->listarAreas();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listaTareas.php');
    }

    public function listarTareasAgenteContr()
    {
        echo ('<title>Listado de Tareas - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listDatosAgentes = $co->listarAgentes();
        $listTareasAgentes = $co->listarTareasAgentes();
        $listMotivos = $co->listarMotivosProblemas();
        $listAreas = $co->listarAreas();
        $listAgentes = $co->listarAgentes();
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
        $listTareasAgentes = $co->listarTareasAgentes();
        $listMotivos = $co->listarMotivosProblemas();
        $listAreas = $co->listarAreas();
        $listAgentes = $co->listarAgentes();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listarTareasAdmin.php');
    }

    public function listarTareasEliminadasContr(){
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

    public function listarAreasContr()
    {
        echo ('<title>Listado de Áreas - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listAreas = $co->listarAreas();
        require('libreriaEstilos.php');
        require('headerNav.php');
        require('listaAreas.php');
    }
    

    public function listarUsuariosContr()
    {
        echo ('<title>Lista de Usuarios - Gestión ST</title>');
        require('../modelo/m_consultas.php');
        $co = new Consultas();
        $listUsuarios = $co->listarUsuarios();
        $listRoles = $co->listarRoles();
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
