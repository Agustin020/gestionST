<?php
require_once('m_conexion.php');

class Consultas extends Conexion
{

    public function autenticarUsuario($usuario, $pass)
    {
        try {
            $contador = 0;
            $link = parent::conexionBD();
            $sql = "SELECT * from usuario where usuario = '$usuario' or correo = '$usuario'";
            $result = mysqli_query($link, $sql);
            while ($registro = mysqli_fetch_row($result)) {
                if (password_verify($pass, $registro[5])) {
                    $contador++;
                }
            }
            if ($contador > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }

    public function listarDniUserActual($user)
    {
        try {
            $link = parent::conexionBD();
            $sql = "select u.dni from usuario u where u.usuario = '$user'";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $dni = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $dni;
    }

    public function listarUserActual($dni)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT concat(u.nombre, ' ', u.apellido) from usuario u where u.dni = '$dni'";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $userActual = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $userActual;
    }

    public function verificarTipoUsuario($usuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT * FROM tipousuario WHERE idrol IN (SELECT idRol2 FROM usuario WHERE usuario = '$usuario' OR correo = '$usuario')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $id = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $id;
    }

    public function verificarAreaUsuario($usuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT a.codigo from areas a where a.codigo in (select u.codigoArea2 from usuario u where u.usuario = '$usuario')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $areaUsuario = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $areaUsuario;
    }


    public function mostrarDatosUsuario($usuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT concat(u.nombre, ' ', u.apellido) FROM usuario u WHERE u.usuario = '$usuario' OR u.correo = '$usuario'";
            $result = mysqli_query($link, $sql);
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $nombreApellido = $row[0];
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $nombreApellido;
    }

    //Gestionar Usuario
    public function listarDatosPersonales($usuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT * FROM usuario WHERE usuario = '$usuario' OR correo = '$usuario'";
            $result = mysqli_query($link, $sql);
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $datosPersonales[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $datosPersonales;
    }

    public function editarDatosUsuario($dni, $nombre, $apellido, $correo, $user, $pass, $userAnterior)
    {
        try {
            if ($pass == null || $pass == '') {
                $sql = "UPDATE usuario SET dni = '$dni', nombre = '$nombre', apellido = '$apellido', correo = '$correo', usuario = '$user'
                        WHERE usuario = '$userAnterior'";
            } else {
                $passFuerte = password_hash($pass, PASSWORD_DEFAULT);
                $sql = "UPDATE usuario SET dni = '$dni', nombre = '$nombre', apellido = '$apellido', correo = '$correo', usuario = '$user', contrase??a = '$passFuerte' 
                        WHERE usuario = '$userAnterior'";
            }
            $link = parent::conexionBD();
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
    }

    public function listarTareasEncargados()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT t.nroArreglo, t.id_motivos, m.motivos, t.descripcion, t.ip, t.nombreApellidoAfectado, t.celular, t.solucion, t.estadoTarea_id, e.nombre, t.motivoCancelacion,
                    t.fechaProblema, t.fechaSolucion, t.direccion_codigo, d.nombre, a.codigo, a.nombre 
                    from tareas t, motivos m, estadotarea e, direcciones d, areas a 
                    where t.id_motivos = m.id and t.estadoTarea_id = e.id and t.direccion_codigo = d.codigo
                    and t.codigoArea3 = a.codigo
                    and t.estadoTarea_id != 5";
            $result = mysqli_query($link, $sql);
            $listTareasEncargados = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listTareasEncargados[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listTareasEncargados;
    }

    public function listarAreas()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT * from areas a";
            $result = mysqli_query($link, $sql);
            $listAreas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listAreas[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listAreas;
    }

    public function listarMotivosProblemas()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT * from motivos";
            $result = mysqli_query($link, $sql);
            $listMotivos = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listMotivos[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listMotivos;
    }

    public function listarMotivosProblemasUsuario($dni)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT m.id, m.motivos from motivos m where m.codigoArea in 
                    (select a.codigo from areas a where a.codigo in 
                    (select u.codigoArea2 from usuario u where u.dni = '$dni'))";
            $result = mysqli_query($link, $sql);
            $listMotivos = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listMotivos[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listMotivos;
    }


    public function agregarTareaEncargado($selectMotivos, $descripcion, $ip, $nombreApellido, $cel, $direccion, $selectArea)
    {
        try {
            $link = parent::conexionBD();
            $sql = "INSERT into tareas(id_motivos, descripcion, ip, nombreApellidoAfectado, celular, estadoTarea_id, fechaProblema, direccion_codigo, usuario_dni, codigoArea3, fechaCreada)
                    values('$selectMotivos', '$descripcion', '$ip', '$nombreApellido', '$cel', '1', NOW(), '$direccion', '0', '$selectArea', curdate())";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error:' . $e->getMessage());
        }
    }

    public function editarTareaEncargado($selectMotivo, $descripcion, $ip, $nombreApellido, $cel, $codDireccion, $motivoCancelacion, $solucion, $selectArea, $nroArreglo)
    {
        try {

            if ($motivoCancelacion != '' && $solucion == '') {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', descripcion = '$descripcion', ip = '$ip', 
                        nombreApellidoAfectado = '$nombreApellido', celular = '$cel', estadoTarea_id = '4', 
                        direccion_codigo = '$codDireccion', motivoCancelacion = '$motivoCancelacion', codigoArea3 = '$selectArea' where nroArreglo = '$nroArreglo'";
            } else if ($solucion != '' && $motivoCancelacion == '') {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', descripcion = '$descripcion', ip = '$ip', 
                        nombreApellidoAfectado = '$nombreApellido', celular = '$cel', estadoTarea_id = '3', solucion = '$solucion',
                        direccion_codigo = '$codDireccion', codigoArea3 = '$selectArea' where nroArreglo = '$nroArreglo'";
            } else {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', descripcion = '$descripcion', ip = '$ip',
                        nombreApellidoAfectado = '$nombreApellido', celular = '$cel',
                        direccion_codigo = '$codDireccion', codigoArea3 = '$selectArea' where nroArreglo = '$nroArreglo'";
            }

            $link = parent::conexionBD();
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error:' . $e->getMessage());
        }
    }


    //AGENTES
    public function listarEstadoTarea()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT * FROM estadotarea";
            $result = mysqli_query($link, $sql);
            $listEstado = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listEstado[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listEstado;
    }

    public function editarTareaAgente($selectMotivo, $descripcion, $ip, $nombreApellido, $celular, $codDireccion, $motivoCancelacion, $solucion, $selectArea, $nroArreglo)
    {
        try {

            if ($motivoCancelacion != '' && $solucion == '') {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', nombreApellidoAfectado = '$nombreApellido', celular = '$celular', descripcion = '$descripcion', ip = '$ip', 
                        estadoTarea_id = '4', direccion_codigo = '$codDireccion', motivoCancelacion = '$motivoCancelacion', codigoArea3 = '$selectArea' where nroArreglo = '$nroArreglo'";
            } else if ($solucion != '' && $motivoCancelacion == '') {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', nombreApellidoAfectado = '$nombreApellido', celular = '$celular', descripcion = '$descripcion', ip = '$ip', 
                        estadoTarea_id = '3', solucion = '$solucion', direccion_codigo = '$codDireccion', codigoArea3 = '$selectArea' where nroArreglo = '$nroArreglo'";
            } else {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', nombreApellidoAfectado = '$nombreApellido', celular = '$celular', descripcion = '$descripcion', ip = '$ip', 
                        direccion_codigo = '$codDireccion', codigoArea3 = '$selectArea' where nroArreglo = '$nroArreglo'";
            }

            $link = parent::conexionBD();
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }

    public function eliminarTarea($motivoEliminacion, $nroArreglo)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE tareas set estadoTarea_id = 5, motivoEliminacion = '$motivoEliminacion', fechaEliminado = NOW() where nroArreglo = '$nroArreglo'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }


    //AGENTE
    public function agregarAgente($dni, $nombre, $apellido, $correo, $user, $pass)
    {
        try {
            $passFuerte = password_hash($pass, PASSWORD_DEFAULT);
            $link = parent::conexionBD();
            $sql = "INSERT INTO usuario VALUES ('$dni', '$nombre', '$apellido', '$correo', '$user', '$passFuerte', '1')";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }


    //PAGE ADMIN
    public function listarAgentes()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT u.dni, concat(u.nombre, ' ', u.apellido) as nombre_apellido
                    from usuario u, tipousuario t where u.idRol2 = 2 and u.idRol2 = t.idrol order by t.nombre";
            $result = mysqli_query($link, $sql);
            $listEmpleados = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listEmpleados[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listEmpleados;
    }

    public function listarMotivosReq(){
        try {
            $link = parent::conexionBD();
            $sql = "SELECT m.id, m.motivos, a.codigo, a.nombre from motivos m, areas a
                    where m.codigoArea = a.codigo";
            $result = mysqli_query($link, $sql);
            $listMotivos = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listMotivos[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listMotivos;
    }

    public function agregarNuevoMotivo($motivo, $codArea){
        try {
            $link = parent::conexionBD();
            $sql = "INSERT into motivos(motivos, codigoArea) values ('$motivo', $codArea)";
            $result = mysqli_query($link, $sql);
            if($result){
                return true;
            }else{
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }

    public function editarMotivo($motivo, $codArea, $id){
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE motivos set motivos = '$motivo', codigoArea = '$codArea' where id = '$id'";
            $result = mysqli_query($link, $sql);
            if($result){
                return true;
            }else{
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }

    public function listarTareaAgente($dni)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT t.nroArreglo, m.motivos, t.descripcion, t.ip, t.nombreApellidoAfectado, t.celular, t.solucion, e.nombre, t.motivoCancelacion, 
                    t.fechaProblema, t.fechaSolucion, d.nombre, concat(u.nombre, ' ', u.apellido) as nombreApellido, t.motivoEliminacion
                    from tareas t, motivos m, estadotarea e, direcciones d, usuario u 
                    where t.id_motivos = m.id and t.estadoTarea_id = e.id and t.direccion_codigo = d.codigo and t.usuario_dni = u.dni and u.dni = '$dni' and t.estadoTarea_id < 5";
            $result = mysqli_query($link, $sql);
            $listTareaAgente = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listTareaAgente[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listTareaAgente;
    }

    //Verificar nombre del ??rea donde se desempe??a el agente
    public function listarNombreAreaUsuario($dni)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT a.nombre from areas a where a.codigo in (select u.codigoArea2 from usuario u where u.dni = '$dni')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $areaActual = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $areaActual;
    }



    //INICIO 
    public function contarDirecciones()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT COUNT(*) FROM direcciones";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $cantDirecciones = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $cantDirecciones;
    }


    //PAGE ListarTareasAgente
    public function listarTareasAgentes($areaUsuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT t.nroArreglo, m.id, m.motivos, t.descripcion, t.ip, t.nombreApellidoAfectado, t.celular, t.solucion, e.id, e.nombre, t.motivoCancelacion, 
                    t.fechaProblema, t.fechaSolucion, d.codigo, d.nombre, u.dni, concat(u.nombre, ' ', u.apellido) as nombre_apellido, a.codigo, a.nombre
                    from tareas t, motivos m, estadotarea e, direcciones d, usuario u, areas a 
                    where t.id_motivos = m.id and t.estadoTarea_id = e.id and t.direccion_codigo = d.codigo and t.usuario_dni = u.dni 
                    and t.codigoArea3 = a.codigo and t.estadoTarea_id != 5 and codigoArea3 = '$areaUsuario'";
            $result = mysqli_query($link, $sql);
            $listTareas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listTareas[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $listTareas;
    }



    public function listarTareasAdmin()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT t.nroArreglo, m.id, m.motivos, t.descripcion, t.ip, t.nombreApellidoAfectado, t.celular, t.solucion, e.id, e.nombre, t.motivoCancelacion, 
                    t.fechaProblema, t.fechaSolucion, d.codigo, d.nombre, u.dni, concat(u.nombre, ' ', u.apellido) as nombre_apellido, a.codigo, a.nombre
                    from tareas t, motivos m, estadotarea e, direcciones d, usuario u, areas a 
                    where t.id_motivos = m.id and t.estadoTarea_id = e.id and t.direccion_codigo = d.codigo and t.usuario_dni = u.dni 
                    and t.codigoArea3 = a.codigo and t.estadoTarea_id != 5";
            $result = mysqli_query($link, $sql);
            $listTareas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listTareas[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $listTareas;
    }

    //PAGE ADMIN: LISTAR TAREAS ELIMINADAS

    public function listarTareasEliminadas()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT t.nroArreglo, m.motivos, t.descripcion, t.ip, t.nombreApellidoAfectado, t.celular, t.solucion, e.nombre, t.motivoCancelacion, 
                    t.fechaProblema, t.fechaSolucion, d.nombre, concat(u.nombre, ' ', u.apellido) as nombreApellido, t.motivoEliminacion, t.fechaEliminado
                    from tareas t, motivos m, estadotarea e, direcciones d, usuario u 
                    where t.id_motivos = m.id and t.estadoTarea_id = e.id and t.direccion_codigo = d.codigo and t.usuario_dni = u.dni and t.estadoTarea_id = 5";
            $result = mysqli_query($link, $sql);
            $listTareasEliminadas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listTareasEliminadas[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $listTareasEliminadas;
    }



    //TOMAR TAREA
    public function tomarTareaAgente($dni, $nroArreglo)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE tareas set usuario_dni = '$dni', estadoTarea_id = '2' where nroArreglo = '$nroArreglo'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }

    //QUITAR ASIGNADO A UNA TAREA

    public function quitarAgenteAsignado($nroArreglo)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE tareas set usuario_dni = '0', estadoTarea_id = '1' where nroArreglo = '$nroArreglo'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }

    //TERMINAR TAREA
    public function terminarTareaAgente($solucion, $nroArreglo)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE tareas set solucion = '$solucion', fechaSolucion = now(), estadoTarea_id = 3 where nroArreglo = '$nroArreglo'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }

    //CANCELAR TAREA AGENTE

    public function cancelarTareaAgente($motivoCancelacion, $nroArreglo)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE tareas set motivoCancelacion = '$motivoCancelacion', estadoTarea_id = 4 where nroArreglo = '$nroArreglo'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }

    //AGREGAR NUEVA TAREA
    public function agregarTarea($selectMotivos, $descripcion, $ip, $nombreApellido, $celular, $direccion, $areaUsuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "INSERT into tareas(id_motivos, descripcion, ip, nombreApellidoAfectado, celular, estadoTarea_id, fechaProblema, direccion_codigo, usuario_dni, codigoArea3, fechaCreada)
                    values('$selectMotivos', '$descripcion', '$ip', '$nombreApellido', '$celular', '1', NOW(), '$direccion', '0', '$areaUsuario', curdate())";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error:' . $e->getMessage());
        }
    }


    public function listarEncargadosAgentes()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT u.dni, u.nombre, u.apellido, u.correo, u.usuario, t.nombre, a.nombre 
                    from usuario u, tipousuario t, areas a
                    where u.idRol2 = t.idrol and t.idrol != 1 and t.idrol != 3 and u.codigoArea2 = a.codigo";
            $result = mysqli_query($link, $sql);
            $listEncAgentes = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listEncAgentes[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listEncAgentes;
    }


    public function editarAgente($dni, $nombre, $apellido, $correo, $user, $dniAnterior)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE usuario SET dni = '$dni', nombre = '$nombre', apellido = '$apellido', correo = '$correo', usuario = '$user' WHERE dni = '$dniAnterior'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }

    public function bajaAgente($dni, $motivoBaja)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE usuario set idRol2 = null, motivoBaja = '$motivoBaja' where dni = '$dni'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
    }


    //Departemento
    public function listarDirecciones()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT * FROM direcciones";
            $result = mysqli_query($link, $sql);
            $listDirecciones = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listDirecciones[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $listDirecciones;
    }

    public function agregarDireccion($codigo, $nombre, $descripcion)
    {
        try {
            $link = parent::conexionBD();
            $sql = "INSERT INTO direcciones VALUES ('$codigo', '$nombre', '$descripcion')";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
    }

    public function listarDireccionesCodigo($codigo)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT * FROM direcciones WHERE codigo = '$codigo'";
            $result = mysqli_query($link, $sql);
            $listDirecciones = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listDirecciones[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
        return $listDirecciones;
    }

    public function editarDireccion($codigo, $direccion, $descripcion, $codigoDireccionAnterior)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE direcciones SET codigo = '$codigo', nombre = '$direccion', descripcion = '$descripcion' WHERE codigo = '$codigoDireccionAnterior'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
    }

    public function eliminarDireccion($codigo)
    {
        try {
            $link = parent::conexionBD();
            $sql = "DELETE FROM direcciones WHERE codigo = '$codigo'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
    }

    //USUARIO
    public function listarUsuarios()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT u.dni, u.nombre, u.apellido, u.correo, u.usuario, tu.nombre 
                    FROM usuario AS u, tipousuario AS tu
                    WHERE u.idRol2 = tu.idRol order by tu.nombre";
            $result = mysqli_query($link, $sql);
            $listUsuarios = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listUsuarios[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
        return $listUsuarios;
    }

    public function listarRoles()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT * FROM tipousuario";
            $result = mysqli_query($link, $sql);
            $listRoles = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listRoles[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
        return $listRoles;
    }

    public function listarBajasUsuarios()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT u.dni, u.nombre, u.apellido, u.correo, u.motivoBaja from usuario u where u.idRol2 is null and u.dni != 0";
            $result = mysqli_query($link, $sql);
            $listBajas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listBajas[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
        return $listBajas;
    }

    public function altaUsuario($idRol, $dni)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE usuario set idRol2 = '$idRol', motivoBaja = null where dni = '$dni'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
    }

    public function agregarUsuario($tipoUsuario, $codArea, $dni, $nombre, $apellido, $correo, $user, $pass)
    {
        try {
            $passFuerte = password_hash($pass, PASSWORD_DEFAULT);
            $link = parent::conexionBD();

            if ($codArea == '' || $codArea == null) {
                $sql = "INSERT into usuario(dni, nombre, apellido, correo, usuario, contrase??a, idRol2) 
                    values ('$dni', '$nombre', '$apellido', '$correo', '$user', '$passFuerte', '$tipoUsuario')";
            } else {
                $sql = "INSERT into usuario(dni, nombre, apellido, correo, usuario, contrase??a, idRol2, codigoArea2) 
                    values ('$dni', '$nombre', '$apellido', '$correo', '$user', '$passFuerte', '$tipoUsuario', $codArea)";
            }

            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
    }

    public function asignarRolUsuario($idRol, $dni)
    {
        try {
            $link = parent::conexionBD();
            $sql = "UPDATE usuario SET idRol2 = '$idRol' WHERE dni = '$dni'";
            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
    }

    public function quitarTareaAdmin($dni)
    {
        try {
            $link = parent::conexionBD();

            $sql = "UPDATE tareas SET usuario_dni = '0' WHERE usuario_dni = '$dni' AND estadoTarea_id = 1 OR estadoTarea_id = 2";

            $result = mysqli_query($link, $sql);
            if ($result == true) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
    }



    //QUERY INICIO.PHP

    public function contarTareasCompletasUser($user)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas t 
                    where estadoTarea_id in (SELECT id from estadotarea e where nombre = 'Completo') 
                    and usuario_dni in (SELECT dni from usuario u where usuario = '$user' OR correo = '$user')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroCompletas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroCompletas;
    }

    public function contarTotalTareasAreas($areaUsuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas t where t.codigoArea3 
                    in (select a.codigo from areas a where a.codigo = '$areaUsuario')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroTotal = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroTotal;
    }

    public function contarTareasPendientesArea($areaUsuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas t where estadoTarea_id in (select id from estadotarea e where nombre = 'Pendiente')
                    and t.codigoArea3 in (select a.codigo from areas a where a.codigo = '$areaUsuario')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroCompletas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroCompletas;
    }

    public function contarTareasCompletasArea($areaUsuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas t where estadoTarea_id in (select e.id from estadotarea e where nombre = 'Completo') 
                    and t.codigoArea3 in (select a.codigo from areas a where a.codigo = '$areaUsuario')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroCompletas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroCompletas;
    }

    public function contarTareasEnProgresoArea($areaUsuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas t where estadoTarea_id in (select id from estadotarea e where nombre = 'En Progreso')
                    and t.codigoArea3 in (select a.codigo from areas a where a.codigo = '$areaUsuario')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroCompletas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroCompletas;
    }

    public function contarTareasCanceladasArea($areaUsuario)
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas t where estadoTarea_id in (select id from estadotarea e where nombre = 'Cancelado')
                    and t.codigoArea3 in (select a.codigo from areas a where a.codigo = '$areaUsuario')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroCanceladas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroCanceladas;
    }

    //Tareas en General
    /*public function contarTotalTareas()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroTotal = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroTotal;
    }*/

    public function contarTareasPendientes()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas where estadoTarea_id in (select id from estadotarea e where nombre = 'Pendiente')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroCompletas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroCompletas;
    }

    public function contarTareasEnProgreso()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas where estadoTarea_id in (select id from estadotarea e where nombre = 'En Progreso')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroCompletas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroCompletas;
    }

    public function contarTareasCompletas()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas where estadoTarea_id in (select id from estadotarea e where nombre = 'Completo')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroCompletas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroCompletas;
    }

    public function contarTareasCanceladas()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas where estadoTarea_id in (select id from estadotarea e where nombre = 'Cancelado')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroCanceladas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroCanceladas;
    }

    public function contarTareasEliminadas()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from tareas where estadoTarea_id in (select id from estadotarea e where nombre = 'Eliminado')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroEliminadas = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroEliminadas;
    }

    //Contar Usuarios
    public function contarTotalUsuarios()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from usuario u where u.dni != 0";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $totalUsuarios = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $totalUsuarios;
    }

    public function contarAdmin()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from usuario u where u.idRol2 = 3";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $totalAdmin = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $totalAdmin;
    }

    public function contarSupervisores()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from usuario u where u.idRol2 in (select t.idrol from tipousuario t where t.nombre = 'Supervisor')";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $totalSuperv = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $totalSuperv;
    }

    public function contarAgentes()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from usuario u where u.idRol2 = 2";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $totalAgentes = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $totalAgentes;
    }

    public function contarEncargados()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT count(*) from usuario u where u.idRol2 = 1";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $totalEncargados = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $totalEncargados;
    }

    public function fechaActual()
    {
        try {
            $link = parent::conexionBD();
            $sql = "SELECT CURDATE()";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $fechaActual = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $fechaActual;
    }
}
