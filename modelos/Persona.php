<?php 
//Incluímos inicialmente la conexión a la base de datos
require "../configuraciones/Conexion.php";

Class Persona
{
	//Implementamos nuestro constructor
	public function __construct()
	{

	}

	//Implementamos un método para insertar registros
	public function insertar($tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email,$fecha_hora)
	{
		$sql="INSERT INTO persona (tipo_persona,nombre,tipo_documento,num_documento,direccion,telefono,email,fecha)
		VALUES ('$tipo_persona','$nombre','$tipo_documento','$num_documento','$direccion','$telefono','$email','$fecha_hora')";
		return ejecutarConsulta($sql);
	}

	//Implementamos un método para editar registros
	public function editar($idpersona,$tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email,$fecha_hora)
	{
		$sql="UPDATE persona SET tipo_persona='$tipo_persona',nombre='$nombre',tipo_documento='$tipo_documento',num_documento='$num_documento',direccion='$direccion',telefono='$telefono',email='$email', fecha='$fecha_hora' WHERE idpersona='$idpersona'";
		return ejecutarConsulta($sql);
	}

	//Implementamos un método para eliminar categorías
	public function eliminar($idpersona)
	{

		$clienteExiste = "SELECT * FROM venta v WHERE v.idcliente = '$idpersona'";

		$existeCliente = ejecutarConsulta($clienteExiste);

		$var = 0;

		while ($reg = $existeCliente->fetch_object()) {

			$var = $reg->idventa;
		}

		if($var > 0){

			$sql = 2;

		}else{
			
			$sql="DELETE FROM persona WHERE idpersona='$idpersona'";
			ejecutarConsulta($sql);
			$sql = 1;

		}

		return $sql;
	}

	//Implementamos un método para eliminar categorías
	public function eliminar2($idpersona)
	{

		$clienteExiste = "SELECT * FROM compra c WHERE c.idproveedor = '$idpersona'";

		$existeCliente = ejecutarConsulta($clienteExiste);

		$var = 0;

		while ($reg = $existeCliente->fetch_object()) {

			$var = $reg->idcompra;
		}

		if($var > 0){

			$sql = 2;

		}else{
			
			$sql="DELETE FROM persona WHERE idpersona='$idpersona'";
			ejecutarConsulta($sql);
			$sql = 1;

		}

		return $sql;
	}

	//Implementar un método para mostrar los datos de un registro a modificar
	public function mostrar($idpersona)
	{
		$sql="SELECT * FROM persona WHERE idpersona='$idpersona'";
		return ejecutarConsultaSimpleFila($sql);
	}

	//Implementar un método para listar los registros
	public function listarp()
	{
		$sql="SELECT * FROM persona WHERE tipo_persona='Proveedor'";
		return ejecutarConsulta($sql);		
	}

	//Implementar un método para listar los registros 
	public function listarc()
	{
		$sql="SELECT * FROM persona WHERE tipo_persona='Cliente'";
		return ejecutarConsulta($sql);		
	}

	public function listarc2($numero)
	{
		$sql="SELECT * FROM persona WHERE num_documento='$numero'";
		return ejecutarConsultaSimpleFila($sql);		
	}

	public function listarc3($numero)
	{
		$sql="SELECT * FROM persona WHERE num_documento='$numero' AND tipo_persona = 'Proveedor'";
		return ejecutarConsultaSimpleFila($sql);		
	}

	public function listarc4($numero)
	{
		$sql="SELECT * FROM persona WHERE idpersona='$numero'";
		return ejecutarConsultaSimpleFila($sql);		
	}

	//Implementar un método para listar los registros 
	public function listarv()
	{
		$sql="SELECT * FROM personal";
		return ejecutarConsulta($sql);		
	}

}

?>