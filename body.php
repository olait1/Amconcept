
<div class="row container text-center mx-auto mt-5">
<div class="col-md-12">
<h2>WELCOME TO AMConcept</h2>
<p class="text-muted     text-justify">
AMConcept's mission is to help less content creators to have their thoughts, ideas and concepts being published rather than social media.
Post opinions about the technology, Politics,  Lifestyle, etc
Though having no journalism background, and no publishing experience; nevertheless, young self developers can make their self being recognized, since we believe freedom of expression is essential for human progress, and that free societies are better off when more people can effectively express themselves with write up.

We are a small team of web developers and video makers that works together to build lives in a way that our contents inspire, encourage and equip for success; we do this by building a community of readers, and web visitors.</p>
</p>
</div>
</div>
<div class="row mt-5 container-fluid text-center mx-auto " style="width:100%;">
<div class="col-md-2 cat-body mb-5 " style="margin-left:-2em;">
<h3 class="text-uppercase b">category</h3>
   <?php
 include_once("conn.php");

 $sql="SELECT * FROM articlecategories ";
 $query=mysqli_query($conn,$sql);
 if ($query) {
     # code...
 while ($row=mysqli_fetch_assoc($query)) {
     # code...

   ?>
   <a href="cat.php?cat=<?php echo  $row['catName'];?>"  name="cat" value="<?php echo $row['catName'];
       ?>" class="cat text-uppercase  nav-link my-3 ">
       <?php echo $row['catName'];
$catName=$row['catName'];
       ?></a>
 <?php
 
  }
}
 ?>
</div>
<div class="col-md-9 col-md-ml-5 cont" >
<div class="row">
<?php
    if (isset($_POST['read'])) {
        # code...
        $read=$_POST['read'];
        header("location:read.php?hd=$read");
    }
    $ca ="";
    if(!isset($_GET['cat'] )){
        $ca=null;
    }else{
        $ca=$_GET['cat'];
    }
    $num_article_per_page=8;
    $sql="SELECT * FROM article";
    $query=mysqli_query($conn,$sql);
    $total_num_of_article=mysqli_num_rows($query);
    $num_pages= ceil($total_num_of_article/ $num_article_per_page);
    $sqlc="SELECT * FROM article where category='$ca'";
    $queryc=mysqli_query($conn,$sqlc);
    $totalc_num_of_article=mysqli_num_rows($queryc);
$num_pagesc= ceil($totalc_num_of_article/ $num_article_per_page);
if (!isset($_GET['page'])) {
    # code...
    $page=1;
}else{
    $page=$_GET['page'];
}
$start_fetch=($page-1) * $num_article_per_page;
    if ($ca===null || $ca ==="ALL") {
        # code...
    
        $sql="SELECT * FROM article   ORDER BY date DESC LIMIT $start_fetch , $num_article_per_page ";
        $query=mysqli_query($conn,$sql);
    }else{
    $sql="SELECT * FROM article  WHERE category='$ca'  ORDER BY date DESC LIMIT $start_fetch , $num_article_per_page ";
        $query=mysqli_query($conn,$sql);
      
    }
  
    if($query){
while ($row=mysqli_fetch_assoc($query)) {
    # code...

    ?>
    <div class="col-md-3 ">
      
    <div class="card shadow mb-5" style="height:350px;">
        <div class="card-header">
        <h5 class=" text-uppercase font-weight-bold px-4 py-2"><?php 
       echo $row['category'];
       ?></h5>
        </div>
  <div class="card-body p-3">
  <h2 class="text-uppercase h3"> <?php echo $row['heading']; ?></h2>
<p>
    <article class="text-muted ">
    <?php
    $art= $row['article'];
    echo mb_strimwidth($art, 0, 90, "...");
    ?>
    </article>
    </p>

  </div>
  <form action="" method="post">
  <div class="card-footer">
      <button class="btn btn-info btn-md" name="read" value="<?php 


 echo $row['hd_link'];
    
    
    ?>" type="submit">Read more</button>
  </div>
  </form>
</div>
    </div>
    <?php
    
}
}else{
    echo"wrong insert".mysqli_error($conn);
}
?>
<div class="row">
<div class="col-md-12">
<?php
   if ($ca===null || $ca ==="ALL") {
    # code...
    ?>
      <nav aria-label="Page navigation example">
  <ul class="pagination"><?php
for ($i=0; $i < $num_pages; $i++) { 
    # code...
    ?>
    <li class="page-item"><a class="page-link"  href="index.php?page=<?php echo $i+1;?>">  <?php echo $i+1;?></a></li>
    <?php
}
?> 
 </ul>
</nav>
<?php
   }
   
   else{  ?>
    <nav aria-label="Page navigation example">
<ul class="pagination">
    <?php
for ($i=0; $i < $num_pagesc; $i++) { 
  # code...

  ?>
  <form action="" method="post">
<input type="hidden" name="link">
  <li class="page-item">
  <a class="page-link"  href="index.php?page=<?php echo $i+1;?>">
   <button type="submit" class="btn text-info" name="link" style="background:transparent;"> 
  <?php echo $i+1;?>
  </button></a>
  </li>
 
  </form>

  <?php
  $cat =$_GET['cat'];
  if (isset($_POST['link'])) {
      # code...
      $sql="SELECT * FROM article  WHERE category='$ca' ORDER BY date DESC LIMIT $start_fetch , $num_article_per_page ";
      $query=mysqli_query($conn,$sql);
  }
}
?> 
</ul>
</nav>
    <?php

   }
?>
</div>
</div>

</div>

</div>
</div>