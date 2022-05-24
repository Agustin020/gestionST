<?php
    class ControladorAgente{
        
        public function listarTareasContr($user){
            require('../modelo/m_consultas.php');
            $co = new Consultas();
            echo '<title>Lista de Tareas - Gestión ST</title>';
            $listaTareas = $co->listarTareasAgentes();
            $listEstadoTarea = $co->listarEstadoTarea();
            $listAreas = $co->listarAreas();
            $agenteActual = $co->listarAgenteActual($user);
            require('libreriaEstilos.php');
            require('headerNav.php');
            require('listaTareas.php');
        }


        public function listarAreasContr(){
            require('../modelo/m_consultas.php');
            $co = new Consultas();
            echo '<title>Áreas - Gestión ST</title>';
            $listAreas = $co->listarAreas();
            require('libreriaEstilos.php');
            require('headerNav.php');
            require('listaAreasAg.php');
        }
    }
