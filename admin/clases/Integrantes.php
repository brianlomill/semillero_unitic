<!--?php
    include 'Conexion.php';

class Integrantes extends Conexion
{
    public function Ingresar(
        $nombres,
        $apellidos,
        $email,
        $foto,
        $cvlac,
        $linkedin,
        $fecha_ingreso,
        $rol
    ) {
        $conexion = parent::conectar();
        $sql = "INSERT INTO integrantes (nombres, apellidos, email, foto, cvlac, linkedln, fecha_ingreso, roles_id ) 
            VALUES (?,?,?,?,?,?,?,?)";
        $query = $conexion->prepare($sql);
        $query->bind_param( $nombres,
        $apellidos,
        $email,
        $foto,
        $cvlac,
        $linkedin,
        $fecha_ingreso,
        $rol );

        return $query->execute();

    }
}
?>