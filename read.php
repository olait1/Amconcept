<?php
include_once("headerlink.php");
include_once("navbar.php");
include_once("conn.php");
$id=$_GET['hd'];

?>

<?php

?>

<div class="row container mt-5 position-relative mx-auto" style="width:100%;">
<?php

$sql="SELECT * FROM article where hd_link='$id'";
$query=mysqli_query($conn,$sql);
if($query){
    while ($row=mysqli_fetch_assoc($query)) {
        # code
?>
<div class="col-md-12 " >

<h2 class="text-uppercase text-center mt-5 h3-md">
<article>
<?php
  echo $row['heading'];
  ?></h2>

<div id="content" class="text-muted">
<?php
echo $row['article'];
?>
</article>
<br>
<small >written by <i><?php echo $row['Aname']."  " . $row['date'];?></i></small>

</div>

</div>


<?php
   }
}else{
    echo "not selected ".mysqli_error($conn); 
}
?>
</div>
<?php
include_once("footer.php");
include_once("footerlink.php");
?>