<?php
$conn= new mysqli("localhost","root","","virtmed");

if($conn->connect_errno)
{
    echo "No hay conexión:(".$conn->connect_errno.")".$conn->connect_error;

}
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];

session_start();

$_SESSION['usuario']=$usuario;

$consulta="SELECT * FROM registro WHERE usuario='$usuario' and contraseña='$contraseña'";
$resultado= mysqli_query($conn,$consulta);


$filas=mysqli_num_rows($resultado);


if ($usuario=='usuario' and $contraseña == 'contraseña')
header("location:index.html");

else include("index.html");
 { 
   
   ?>
    <?php

}
mysqli_free_result($resultado);
mysqli_close($conn);