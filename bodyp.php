<?php
include_once("conn.php");

if($_POST['sub']){
  $cat=$_POST['cat'];
  $heading=$_POST['header'];
  $Aname=$_POST['Aname'];
  $article=$_POST['article'];
  $hd_array=[];
  $hd=explode(" ",$heading);

for ($i=0; $i < count($hd); $i++) { 
  # code...
array_push($hd_array,$hd[$i][0]);

}
$hd_link=implode($hd_array);
print($hd_link);

if(empty($_POST['cat'])||empty($_POST['header'])||empty($_POST['article'])){
  echo"<p class='bg-danger'> Please fill the above space provided</p>";
}else{
$sql="INSERT  INTO articlesent VALUES('','$cat','$heading','$article','$Aname','$hd_link')";
$query=mysqli_query($conn,$sql);
if (!$query) {
  # code...
  echo"not inserted please contact the admin".mysqli_error($conn);
}
}
}
header("location:dashboard.php");
?>