<?php
require('m_conexion.php');

class Consultas extends Conexion
{

    public function autenticarUsuario($usuario, $pass)
    {
        try {
            $contador = 0;
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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

    public function verificarTipoUsuario($usuario)
    {
        try {
            $link = parent::Conexion();
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


    //Boton Usuario
    public function mostrarDatosUsuario($usuario)
    {
        try {
            $link = parent::Conexion();
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

    public function editarDatosUsuario($dni, $nombre, $apellido, $correo, $user, $pass, $userAnterior)
    {
        try {
            if ($pass == null || $pass == '') {
                $sql = "UPDATE usuario SET dni = '$dni', nombre = '$nombre', apellido = '$apellido', correo = '$correo', usuario = '$user'
                        WHERE usuario = '$userAnterior'";
            } else {
                $passFuerte = password_hash($pass, PASSWORD_DEFAULT);
                $sql = "UPDATE usuario SET dni = '$dni', nombre = '$nombre', apellido = '$apellido', correo = '$correo', usuario = '$user', contraseña = '$passFuerte' 
                        WHERE usuario = '$userAnterior'";
            }
            $link = parent::Conexion();
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
            $link = parent::Conexion();
            $sql = "SELECT t.nroArreglo, t.id_motivos, m.motivos, t.descripcion, t.ip, t.nombreApellidoAfectado, t.celular, t.solucion, t.estadoTarea_id, e.nombre, t.motivoCancelacion,
                    t.fechaProblema, t.fechaSolucion, t.area_codigo, a.nombre
                    from tareas t, motivos m, estadotarea e, areas a
                    where t.id_motivos = m.id and t.estadoTarea_id = e.id and t.area_codigo = a.codigo";
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

    public function listarMotivosProblemas()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT * FROM motivos";
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


    public function agregarTareaEncargado($selectMotivos, $descripcion, $ip, $nombreApellido, $cel, $area)
    {
        try {
            $link = parent::Conexion();
            $sql = "INSERT into tareas(id_motivos, descripcion, ip, nombreApellidoAfectado, celular, estadoTarea_id, fechaProblema, area_codigo, usuario_dni)
                    values('$selectMotivos', '$descripcion', '$ip', '$nombreApellido', '$cel', '1', NOW(), '$area', '0')";
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

    public function editarTareaEncargado($selectMotivo, $descripcion, $ip, $nombreApellido, $cel, $codArea, $motivoCancelacion, $solucion, $nroArreglo)
    {
        try {

            if ($motivoCancelacion != '' && $solucion == '') {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', descripcion = '$descripcion', ip = '$ip', 
                        nombreApellidoAfectado = '$nombreApellido', celular = '$cel', estadoTarea_id = '4', 
                        area_codigo = '$codArea', motivoCancelacion = '$motivoCancelacion' where nroArreglo = '$nroArreglo'";
            } else if ($solucion != '' && $motivoCancelacion == '') {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', descripcion = '$descripcion', ip = '$ip', 
                        nombreApellidoAfectado = '$nombreApellido', celular = '$cel', estadoTarea_id = '3', solucion = '$solucion',
                        area_codigo = '$codArea' where nroArreglo = '$nroArreglo'";
            } else {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', descripcion = '$descripcion', ip = '$ip',
                        nombreApellidoAfectado = '$nombreApellido', celular = '$cel',
                        area_codigo = '$codArea' where nroArreglo = '$nroArreglo'";
            }

            $link = parent::Conexion();
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
            $link = parent::Conexion();
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

    public function editarTareaAgente($selectMotivo, $descripcion, $ip, $codArea, $motivoCancelacion, $solucion, $nroArreglo)
    {
        try {

            if ($motivoCancelacion != '' && $solucion == '') {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', descripcion = '$descripcion', ip = '$ip', estadoTarea_id = '4', 
                        area_codigo = '$codArea', motivoCancelacion = '$motivoCancelacion' where nroArreglo = '$nroArreglo'";
            } else if ($solucion != '' && $motivoCancelacion == '') {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', descripcion = '$descripcion', ip = '$ip', estadoTarea_id = '3', solucion = '$solucion',
                        area_codigo = '$codArea' where nroArreglo = '$nroArreglo'";
            } else {
                $sql = "UPDATE tareas set id_motivos = '$selectMotivo', descripcion = '$descripcion', ip = '$ip', 
                        area_codigo = '$codArea' where nroArreglo = '$nroArreglo'";
            }

            $link = parent::Conexion();
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

    public function eliminarTarea($id)
    {
        try {
            $link = parent::Conexion();
            $sql = "DELETE FROM tareas WHERE nroArreglo = '$id'";
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
            $link = parent::Conexion();
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

    public function listarAgentes()
    {
        try {
            $link = parent::Conexion();
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

    //INICIO 

    public function contarAreas()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT COUNT(*) FROM areas";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $cantAreas = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $cantAreas;
    }

    public function contarTareas()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT COUNT(*) FROM tareas";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $cantTareas = $row[0];
            }
        } catch (Exception $e) {
            $e->getMessage();
        }
        return $cantTareas;
    }



    //PAGE ListarTareasAgente
    public function listarTareasAgentes()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT t.nroArreglo, m.id, m.motivos, t.descripcion, t.ip, t.nombreApellidoAfectado, t.celular, t.solucion, e.id, e.nombre, t.motivoCancelacion, 
                    t.fechaProblema, t.fechaSolucion, a.codigo, a.nombre, u.dni, concat(u.nombre, ' ', u.apellido) as nombre_apellido
                    from tareas t, motivos m, estadotarea e, areas a, usuario u 
                    where t.id_motivos = m.id and t.estadoTarea_id = e.id and t.area_codigo = a.codigo and t.usuario_dni = u.dni";
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

    //TOMAR TAREA
    public function tomarTareaAgente($dni, $nroArreglo)
    {
        try {
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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
    public function agregarTareaAgente($selectMotivos, $descripcion, $ip, $nombreApellido, $celular, $area)
    {
        try {
            $link = parent::Conexion();
            $sql = "INSERT into tareas(id_motivos, descripcion, ip, nombreApellidoAfectado, celular, estadoTarea_id, fechaProblema, area_codigo, usuario_dni) 
                    values ('$selectMotivos', '$descripcion', '$ip', '$nombreApellido', '$celular', '1', NOW(), '$area', '0')";
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
            $link = parent::Conexion();
            $sql = "SELECT u.dni, u.nombre, u.apellido, u.correo, u.usuario, t.nombre 
                    from usuario u, tipousuario t
                    where u.idRol2 = t.idrol and t.idrol < 3 order by t.idrol";
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
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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
    public function listarAreas()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT * FROM areas";
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

    public function agregarArea($codigo, $area, $descripcion)
    {
        try {
            $link = parent::Conexion();
            $sql = "INSERT INTO areas VALUES ('$codigo', '$area', '$descripcion')";
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

    public function listarAreasCodigo($codigo)
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT * FROM areas WHERE codigo = '$codigo'";
            $result = mysqli_query($link, $sql);
            $listAreas = [];
            $i = 0;
            while ($row = mysqli_fetch_row($result)) {
                $listAreas[$i] = $row;
                $i++;
            }
        } catch (Exception $e) {
            die('Error ' . $e->getMessage());
        }
        return $listAreas;
    }

    public function editarArea($codigo, $area, $descripcion, $codigoAreaAnterior)
    {
        try {
            $link = parent::Conexion();
            $sql = "UPDATE areas SET codigo = '$codigo', nombre = '$area', descripcion = '$descripcion' WHERE codigo = '$codigoAreaAnterior'";
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

    public function eliminarArea($codigo)
    {
        try {
            $link = parent::Conexion();
            $sql = "DELETE FROM areas WHERE codigo = '$codigo'";
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
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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

    public function agregarUsuario($tipoUsuario, $dni, $nombre, $apellido, $correo, $user, $pass)
    {
        try {
            $passFuerte = password_hash($pass, PASSWORD_DEFAULT);
            $link = parent::Conexion();
            $sql = "INSERT into usuario(dni, nombre, apellido, correo, usuario, contraseña, idRol2) 
                    values ('$dni', '$nombre', '$apellido', '$correo', '$user', '$passFuerte', '$tipoUsuario')";
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
            $link = parent::Conexion();
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

    public function quitarTareaAdmin($idRol, $dni)
    {
        try {
            $link = parent::Conexion();
            if ($idRol == 3) {
                $sql = "UPDATE tareas SET usuario_dni = '0' WHERE usuario_dni = '$dni' AND estadoTarea_id = 1 OR estadoTarea_id = 2";
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



    //QUERY INICIO.PHP

    public function contarTareasCompletasUser($user)
    {
        try {
            $link = parent::Conexion();
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


    //Tareas en General

    public function contarTotalTareas()
    {
        try {
            $link = parent::Conexion();
            $sql = "SELECT count(*) from tareas";
            $result = mysqli_query($link, $sql);
            while ($row = mysqli_fetch_row($result)) {
                $nroTotal = $row[0];
            }
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
        return $nroTotal;
    }

    public function contarTareasPendientes()
    {
        try {
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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

    //Contar Usuarios
    public function contarTotalUsuarios()
    {
        try {
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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

    public function contarAgentes()
    {
        try {
            $link = parent::Conexion();
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
            $link = parent::Conexion();
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
}
