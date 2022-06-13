<?php

    include('Conection.php');

    $nombre = $_POST['nombre'];
    $apellidos = $_POST['apellidos'];
    $edad = $_POST['edad'];
    $sexo = $_POST['sexo'];
    $email = $_POST['email'];
    $contraseña = $_POST['contraseña'];

    $insertar = "INSERT INTO user (Nombre,Apellidos,Edad,Sexo,Email,Contraseña)
                VALUES ('$nombre','$apellidos','$edad','$sexo','$email','$contraseña')";

    $guardar = mysqli_query($conexion, $insertar);

    if($guardar){
        header("location:Login.html");
    }else{
       echo "Ah ocurrido un error";
    }           
?>