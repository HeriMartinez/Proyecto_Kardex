<?php

    include('Conection.php');

    $nombre=$_POST['nombre'];
    $contraseña=$_POST['contraseña'];

    session_start();
    $_SESSION['nombre']=$nombre;

    $consulta="SELECT Nombre, Contraseña FROM user 
               where Nombre='$nombre' and Contraseña='$contraseña'";

    $resultado=mysqli_query($conexion,$consulta);

    $filas=mysqli_num_rows($resultado);

    if($filas){
        header("location:Menu.html");
    }else{
        
    }
    mysqli_free_result($resultado);
    mysqli_close($conexion);
?>