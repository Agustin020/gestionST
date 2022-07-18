<?php
class Conexion
{

    protected $link;

    public function conexionBD()
    {
        try {
            $this->link = new mysqli('localhost', 'agustin', 'software1234', 'gestionst', '3306');
        } catch (Exception $e) {
            die('Error' . $e->getMessage());
        }
        return $this->link;
    }
}
