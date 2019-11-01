<?php
class Conectar{
    public static function conexion(){
        $conexion=new mysqli("remotemysql.com", "3VRMywvlVl", "kDuel4XImp", "3VRMywvlVl");
        $conexion->query("SET NAMES 'utf8'");
        return $conexion;
    }
}
?>
