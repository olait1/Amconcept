<?php
include_once('conn.php');
$id=$_POST['delete'];
echo $id;
$sql="DELETE FROM articlesent WHERE id= $id";
$query=mysqli_query($conn,$sql);
if($query){
    echo "deleted";
}else{
    echo "not delete";
}
header("location:admin.php");
?>