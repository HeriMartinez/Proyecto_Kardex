<?php
    include('Conection.php');

    if($_FILES['archivo']){
        $kardex = $_FILES['archivo']['name'];

        $ruta = "./documentos" . $kardex;

        $subirarchivo = move_uploaded_file($_FILES['archivo']['tmp_name'], $ruta);

        if($subirarchivo){
            $insertar = "INSERT INTO kardex (kardex) 
                        VALUES ('$ruta')";

            $resulado = mysqli_query($conexion, $insertar);

            if($resulado){
                header("location:Menu.html");
            }else{
                echo"<script>alert('Ocurrio un error')</script>";
            }
        }
    }
?>