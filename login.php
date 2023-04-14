<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Article | Web Development | video Production</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="amconcept.jpg" type="image/x-icon">
    <link rel="stylesheet" type="text/css" media="screen" href="style.css" />
    <script src="main.js"></script>
    <style>
    #container{
        border-radius:50%;
        background: #fff;
        box-shadow:2px 2px 2px 2px #222;
    }
  #form{
      width:300px;
      height:300px;
      margin:auto;
      margin-top:90px;

  }
  label{
      font-size:16px;
      color:#222;
  }
  input{
width:100%;
margin:10px 0;
height:30px;
border:#ccc;
padding:5px;
font-size:16px;
border-style:solid;
border-width:2px;
border-radius:10px;
box-shadow:inset 4px 4px 4px #ccc;
outline:none;
padding-left:15px;
color:#444;
  }
  input[type=submit]{
width:100%;
height:50px;
cursor:pointer;
color:#fff;
    background:#00f;
    box-shadow:none;
    padding-left:0;
  }
  #container{
      margin:50px auto;
  }

    </style>
</head>
<?php
  $err="";
 if (isset($_POST["login"])) {
     # code...
     $uname=trim(strtolower($_POST["uname"]));
     $pwd=$_POST["pwd"];
     if (empty($uname)) {
         # code...
         $err= "please fill the above field";
     }
     include_once("conn.php");
     $sql="SELECT * FROM articleadmin where email='$uname'";
     $query=mysqli_query($conn,$sql);
     if($query){
         while ($row=mysqli_fetch_assoc($query)) {
             # code...
             if ($uname===$row['email'] && $pwd===$row['password']) {
                # code...
               header("LOCATION:dashboard.php");
            }else{
     $err="wrong password";
            }
         }
     }else{
         $err="not successfully selected".mysqli_error($conn);
     }
     
 }
 ?>
<body>
    <div id="container">
    <div id="form">
    <form action="" method="post" autocomplete="off">
    <label for="uname">E-mail </label>
<input type="text" name="uname" id="uname">
<label for="pwd">Password</label>
<input type="password" name="pwd" id="pwd">

<input type="submit" value="Login" name="login">
</form>
<p style="color:red;"><?php
 echo $err; ?></p>
 </div>

 </div>



</body>
</html>