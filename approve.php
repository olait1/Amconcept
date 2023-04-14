<?php
$id=$_POST['approve'];
echo $id;
include_once("conn.php");
$sql="SELECT * FROM articlesent  WHERE id=$id";
$query=mysqli_query($conn,$sql);
if ($query) {
    # code...
    while ($row=mysqli_fetch_assoc($query)) {
        # code...
   $Aname=$row['Aname'];
   $category=$row['category'];
   $heading=$row['heading'];
   $article=$row['article'];
   $hd_link=$row['hd_link'];
   $sql="SELECT CURDATE() as 'currentdate'";
   $query=mysqli_query($conn,$sql);
   $data= mysqli_fetch_assoc($query);
   $dates=$data['currentdate'];
$sql="INSERT INTO article VALUES('','$category','$heading','$article','$Aname','$dates','$hd_link')";
$query=mysqli_query($conn,$sql);
if ($query) {
    # code...
    echo "inserted";
}else{
    echo "not inserted".mysqli_error($conn);
}
$sql="DELETE FROM articlesent WHERE id= $id";
$query=mysqli_query($conn,$sql);
if($query){
    echo "deleted";
}else{
    echo "not delete";
}
}
}
header("location:admin.php");
?>