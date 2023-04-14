<?php
 include_once("conn.php");
include_once("headerlink.php");
?>
<link rel="stylesheet" href="style.css">
<?php
include_once("navbar.php");

?>

<div class="row container  mt-5" style="background:#ccc; width:50%; margin:0 auto; padding:10px;  margin-bottom:50px; ">
<!-- <div class="col-md-6">
  
<form action="" class=" mt-5">
<h2 class="text-center ">Team</h2>
  <div class="form-group">
    <label for="surname" >Surname:</label>
    <input type="text" name="surname" class="form-control">
  </div>
  <div class="form-group">
    <label for="oname" >Othername:</label>
    <input type="text" name="oname" class="form-control">
  </div>
  <div class="form-group">
    <label for="phone" >Phone:</label>
    <input type="text" name="phone" class="form-control">
  </div>
  <div class="form-group">
    <label for="email">E-mail:</label>
    <input type="text" name="email" class="form-control" >
  </div>
  <div class="form-group">
    <label for="job">Job Tittle:</label>
    <input type="text" name="email" class="form-control" >
  </div>
  <div class="form-group">
    <label for="email">Facebook:</label>
    <input type="text" name="fbook" class="form-control" >
  </div>
  <div class="form-group">
    <label for="twitter">Twitter:</label>
    <input type="text" name="twitter" class="form-control" >
  </div>
  <div class="form-group">
  <label for="Article">Article:</label>
  <textarea class="form-control" rows="5" ></textarea>
</div>  -->
  <!-- <button type="submit" name="subteam" class="btn btn-primary">Submit</button>
</form> 
</div> --> 

<div class="col-md-6 pb-5 " style="margin:auto;">

<form action="bodyp.php" class=" mt-5" method="POST">
<h2 class="text-center ">Article</h2>
  <div class="form-group">
    <label for="category" >Category:</label>
    <input type="text" name="cat" class="form-control">
  </div>

  <div class="form-group">
    <label for="Heading">Heading:</label>
    <input type="text" name="header" class="form-control" >
  </div>
  <div class="form-group">
    <label for="category" >Author Name :</label>
    <input type="text" name="Aname" class="form-control">
  </div>
  <div class="form-group">
  <label for="Article">Article:</label>
  <textarea class="form-control" name="article" rows="5" ></textarea>
</div> 
  <input type="submit" name="sub" value="Submit" onclick="sent();" class="btn btn-primary">
</form> 
</div>

</div>

<?php

include_once("footerlink.php");?>

<script>
function sent(){
  alert("Content has been sent to the admin for approval !!! \nThanks.");
}
</script>