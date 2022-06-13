<?php

    include('Conection.php');

    $nombre = $_POST['nombre'];
    $edad = $_POST['edad'];
    $peso = $_POST['peso'];
    $altura = $_POST['altura'];
    $alergias = $_POST['alergias'];
    $sangre = $_POST['sangre'];
    $cita = $_POST['cita'];

    $insertar = "INSERT INTO cita (Nombre,Edad,Peso,Altura,Alergias,Tipo_sangre,Cita)
                VALUES ('$nombre','$edad','$peso','$altura','$alergias','$sangre','$cita')";

    $guardar = mysqli_query($conexion, $insertar);

    if($guardar){
        header("location:Menu.html");
    }else{
       
    }           
?>