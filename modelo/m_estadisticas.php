<?php
require_once('../modelo/m_conexion.php');

class ConsultasEstadisticas extends Conexion
{
    public function contarTareasActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT COUNT(*) FROM tareas t where t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $cantTareas = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $cantTareas;
    }

    public function contarTotalPendientesActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e where t.estadoTarea_id = e.id and e.nombre = 'Pendiente' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalTareasPendientes = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasPendientes[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasPendientes;
    }

    public function contarTotalEnProgresoActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e where t.estadoTarea_id = e.id and e.nombre = 'En progreso' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalTareasEnProgreso = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasEnProgreso[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasEnProgreso;
    }

    public function contarTotalCompletasActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e where t.estadoTarea_id = e.id and e.nombre = 'Completo' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalTareasCompletas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasCompletas[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasCompletas;
    }

    public function contarTotalCanceladasActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e where t.estadoTarea_id = e.id and e.nombre = 'Cancelado' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalTareasCanceladas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasCanceladas[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasCanceladas;
    }

    public function contarTotalEliminadasActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e where t.estadoTarea_id = e.id and e.nombre = 'Eliminado' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalTareasEliminadas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasEliminadas[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasEliminadas;
    }

    //TOTAL POR AREAS------------------------------------------
    public function contarTotalRedesActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a where t.codigoArea3 = a.codigo and a.codigo = '1' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalRedes = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalRedes[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalRedes;
    }

    public function contarTotalInfraestructuraActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a where t.codigoArea3 = a.codigo and a.codigo = '2' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalInfraestructura = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalInfraestructura[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalInfraestructura;
    }

    public function contarTotalSTecnicoActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a where t.codigoArea3 = a.codigo and a.codigo = '3' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalSTecnico = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalSTecnico[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalSTecnico;
    }

    public function contarTotalRequerimientosActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a where t.codigoArea3 = a.codigo and a.codigo = '4' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalRequerimientos = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalRequerimientos[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalRequerimientos;
    }

    public function contarTotalFDigitalActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a where t.codigoArea3 = a.codigo and a.codigo = '5' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalFDigital = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalFDigital[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalFDigital;
    }

    public function contarTotalPDigitalActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a where t.codigoArea3 = a.codigo and a.codigo = '6' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalPDigital = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalPDigital[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalPDigital;
    }

    public function contarTotalCCTVActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a where t.codigoArea3 = a.codigo and a.codigo = '7' and t.fechaCreada = curdate()";
            $result = mysqli_query($link, $sql);
            $totalCCTV = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalCCTV[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalCCTV;
    }


    //Motivos---------------------------------------------------------------------------------------

    public function totalMotivosRedesActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 1 and t.fechaCreada = curdate() group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosRedes = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosRedes[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosRedes;
    }

    public function totalMotivosInfraestructuraActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 2 and t.fechaCreada = curdate() group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosInfr = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosInfr[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosInfr;
    }

    public function totalMotivosSTecnicoActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 3 and t.fechaCreada = curdate() group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosSTecnico = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosSTecnico[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosSTecnico;
    }

    public function totalMotivosRequerimientosActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 4 and t.fechaCreada = curdate() group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosRequerimientos = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosRequerimientos[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosRequerimientos;
    }

    public function totalMotivosFDigitalActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 5 and t.fechaCreada = curdate() group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosFDigital = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosFDigital[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosFDigital;
    }

    public function totalMotivosPDigitalActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 6 and t.fechaCreada = curdate() group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosPDigital = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosPDigital[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosPDigital;
    }

    public function totalMotivosCCTVActual()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 7 and t.fechaCreada = curdate() group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosCCTV = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosCCTV[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosCCTV;
    }

    //--------------------POR MES-----------------------------
    public function contarTareasxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT COUNT(*) FROM tareas t where t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $cantTareas = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $cantTareas;
    }

    public function contarTotalPendientesxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e 
                    where t.estadoTarea_id = e.id and e.nombre = 'Pendiente' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalTareasPendientes = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasPendientes[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasPendientes;
    }

    public function contarTotalEnProgresoxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e 
                    where t.estadoTarea_id = e.id and e.nombre = 'En Progreso' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalTareasEnProgreso = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasEnProgreso[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasEnProgreso;
    }

    public function contarTotalCompletasxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e 
                    where t.estadoTarea_id = e.id and e.nombre = 'Completo' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalTareasCompletas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasCompletas[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasCompletas;
    }

    public function contarTotalCanceladasxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e 
                    where t.estadoTarea_id = e.id and e.nombre = 'Cancelado' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalTareasCanceladas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasCanceladas[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasCanceladas;
    }

    public function contarTotalEliminadasxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), e.nombre from tareas t, estadotarea e 
                    where t.estadoTarea_id = e.id and e.nombre = 'Eliminado' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalTareasEliminadas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalTareasEliminadas[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalTareasEliminadas;
    }

    //TOTAL POR AREAS------------------------------------------
    public function contarTotalRedesxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a 
                    where t.codigoArea3 = a.codigo and a.codigo = '1' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalRedes = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalRedes[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalRedes;
    }

    public function contarTotalInfraestructuraxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a 
                    where t.codigoArea3 = a.codigo and a.codigo = '2' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalInfraestructura = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalInfraestructura[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalInfraestructura;
    }

    public function contarTotalSTecnicoxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a 
                    where t.codigoArea3 = a.codigo and a.codigo = '3' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalSTecnico = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalSTecnico[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalSTecnico;
    }

    public function contarTotalRequerimientosxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a 
                    where t.codigoArea3 = a.codigo and a.codigo = '4' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalRequerimientos = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalRequerimientos[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalRequerimientos;
    }

    public function contarTotalFDigitalxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a 
                    where t.codigoArea3 = a.codigo and a.codigo = '5' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalFDigital = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalFDigital[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalFDigital;
    }

    public function contarTotalPDigitalxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a 
                    where t.codigoArea3 = a.codigo and a.codigo = '6' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalPDigital = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalPDigital[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalPDigital;
    }

    public function contarTotalCCTVxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*), a.nombre from tareas t, areas a 
                    where t.codigoArea3 = a.codigo and a.codigo = '7' and t.fechaCreada between '$inicio' and '$fin'";
            $result = mysqli_query($link, $sql);
            $totalCCTV = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $totalCCTV[$i] = $row;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $totalCCTV;
    }


    //Motivos---------------------------------------------------------------------------------------

    public function totalMotivosRedesxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 1 
                    and t.fechaCreada between '$inicio' and '$fin' group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosRedes = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosRedes[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosRedes;
    }

    public function totalMotivosInfraestructuraxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 2 
                    and t.fechaCreada between '$inicio' and '$fin' group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosInfr = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosInfr[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosInfr;
    }

    public function totalMotivosSTecnicoxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 3 
                    and t.fechaCreada between '$inicio' and '$fin' group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosSTecnico = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosSTecnico[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosSTecnico;
    }

    public function totalMotivosRequerimientosxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 4 
                    and t.fechaCreada between '$inicio' and '$fin' group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosRequerimientos = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosRequerimientos[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosRequerimientos;
    }

    public function totalMotivosFDigitalxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 5 
                    and t.fechaCreada between '$inicio' and '$fin' group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosFDigital = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosFDigital[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosFDigital;
    }

    public function totalMotivosPDigitalxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 6 
                    and t.fechaCreada between '$inicio' and '$fin' group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosPDigital = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosPDigital[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosPDigital;
    }

    public function totalMotivosCCTVxFechas($inicio, $fin)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(t.nroArreglo), m.motivos from tareas t, motivos m, areas a 
                    where t.id_motivos = m.id and t.codigoArea3 = a.codigo and a.codigo = 7 
                    and t.fechaCreada between '$inicio' and '$fin' group by m.motivos";
            $result = mysqli_query($link, $sql);
            $motivosCCTV = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $motivosCCTV[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $motivosCCTV;
    }
}
