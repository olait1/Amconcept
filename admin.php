
<?php
include_once("headerlink.php");
?>
<style>
body {
  font-family: "Lato", sans-serif;
  transition: background-color .5s;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<body>
<?php
include_once("conn.php");
$sql="SELECT * FROM articlesent";
$query=mysqli_query($conn,$sql);
if (mysqli_num_rows($query)>0) {
    # code...
  
?>
<p class="p-4 text-capitalize" style="background:#0f0;">you are having new article to approve!!!</p>
<?php
}else{
  
?>
<p class="p-4 text-capitalize" style="background:#f00;">you are not having new article to approve!!!</p>
<?php
}
?>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="index.php">Home</a>
  <a href="dashboard.php">Dashboard</a>
  <a href="about.php">About Us</a>
  <a href="javascript:void(0)" onclick="article();">Unaprrove article 
  <span class="bg-danger p-2" style="background:red; border-radius:50%;,color:#fff;">
  <?php

$sql="SELECT count(*) as total FROM articlesent";
$query=mysqli_query($conn,$sql);
$data= mysqli_fetch_assoc($query);
echo $data['total'];
  ?>
  
  </span></a>
</div>
<div id="main">
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>
</div>

<div style="overflow-x:auto; display:none;" id="articleTable" >
  <table >

    <tr>
      <th>Category</th>
      <th>Heading</th>
      <th>Article</th>
      <th>Author</th>
      <th>hd</th>
      <th>Action</th>
     
    </tr>
    <?php
  $sql="SELECT * FROM articlesent";
  $query=mysqli_query($conn,$sql);
  if ($query) {
      # code...
      while($row=mysqli_fetch_assoc($query)){

    
  ?>
    <tr>
      <td><?php echo $row['category'];?></td>
      <td><?php echo $row['heading'];?></td>
      <td class="text-justify"><?php echo $row['article'];?></td>
      <td><?php echo $row['Aname'];?></td>
      <td><?php echo $row['hd_link'];?></td>
      <td>
      <form action="approve.php" method="post">
      <button class="btn btn-info" type="submit" name="approve" value="<?php
      echo $row['id'];
      ?>">Approve</button>
      </form>
      <form action="delete.php"  method="post">
      <button class="btn btn-danger" name="delete"  value="<?php
      echo $row['id'];
      ?>">Delete</button>
      </form>
      </td>
     
    </tr>
   <?php
     }
    }
    ?>
  </table>
</div>

<script>
function article(){
    document.getElementById("articleTable").style.display="";
}
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
</script>
   
</body>


</html> 
