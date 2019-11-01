<?php
class actividad_model{
    private $db;
    private $rol;
 
    public function __construct(){
        $this->db=Conectar::conexion();
        $this->actividad=array();
    }
    public function get_actividad(){
        $consulta=$this->db->query("select * from rol;");
        while($filas=$consulta->fetch_assoc()){
            $this->rol[]=$filas;
        }
        return $this->rol;
    }
}
?>

