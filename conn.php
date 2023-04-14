<?php

$conn=mysqli_connect("localhost","root","","amconcept");
if(!$conn){
    echo "connected".mysqli_connect_error($sql);
}

?>