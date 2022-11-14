<?php
$conn= new mysqli("localhost","root","","virtmed");

if($conn->connect_errno)
{
    echo "No hay conexión:(".$conn->connect_errno.")".$conn->connect_error;

}
$medico=$_POST['medico'];
$tipo=$_POST['tipo'];
$fecha=$_POST['fecha'];
$sintomas=$_POST['sintomas'];


if(isset($_POST['cita']))

{
    $queryregistrar = "INSERT INTO cita(medico,tipo,fecha,sintomas) values ('$medico','$tipo','$fecha','$sintomas')";

    if(mysqli_query($conn,$queryregistrar))
    {
        echo "<script>alert('Cita agendada: <b>aqui va link de meet</b>');window.location='solicitud.html'</script>";

}else

{
    echo "Error: ".$queryregistrar."<br>".mysql_error($conn);
}

}

?>