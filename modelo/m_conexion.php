<?php
class Conexion
{

    protected $link;

    public function Conexion()
    {
        try {
            $this->link = new mysqli('localhost','root','','gestionst','3306');
        } catch (Exception $e) {
            die('Error' . $e->getMessage());
        }
        return $this->link;
    }
}
