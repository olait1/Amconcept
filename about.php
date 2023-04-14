<?php
include_once("headerlink.php");
include_once("navbar.php");

?>
<div class="row  container-fluid">
<div class="col-md-12">
<h2 class="text-center mt-5">About Us</h2>
<hr>
<div  class="text-muted container">
<h4>Our Humble Beginnings</h4>
<p>Amconcept Media Concept, established since 2012 with the aim of a mobile
 audio-visual studio for live video coverage and production for all the events and occasions such as live programs, ceremonies, outings, seminars, conferences, crusade, documentaries, stage play, 
music concerts, cinematography, biography video etc., to make it all memorable.</p>
<h4>The Company Agency</h4>
<p>The company is seeking growth, funding and partnership from any agency
 in any area of Cinamatography, Web Development and Training to ensure the company has a great production, packaging, hiring and distribution of her own brand of Media Concept. The idea has been tested for the past six (6) years and it has received an exceedingly
 positive response from her customers..</p>
 <h4>Mision</h4>
<p>
    To be creative, and passionate for Cinematography, Web Development, and Media consultancy Capabilities.
    To fully engage in fundamental training in those areas to individual and organization with dedication,commitment, integrity and innovative using the latest technology acquired.
    To be highly focused, organized and motivated individual with high customer service mind set.
    To always seek to be ahead of competition through service delivery, using professional software which will give an edge over my competitors in the same field of media and unrivalled customer support in the industry.
</p>
<h4>Strength</h4>
<p>
Enabling our customers to make all their occasions memorable and their websites look great with high definition graphics within a clearly defined time period, by using our talented and hired staff with up to date skill in media production and web development.
Our customers are cut across all sectors of the body from individuals to corporate organization and churches that want to have a life changing memory of their seminars, events or occasions.

...Be Part Of Our Story!</p>



</div>
</div>
</div>


<div class="row container mx-auto my-5 text-muted text-center">


<div class="col-md-4 ">
<h5><i class="fa-solid fa-tv display-5 px-3"></i> Videography</h5>
<p>Live editing and streaming in HD.
 Full nonlinear editing to all videos with good audio-visual quality. 
 Cinematography. And all kind of video recordings</p>
</div>
<div class="col-md-4 ">
<h5><i class="fa-solid fa-code display-5 px-3"></i> Web Development</h5>
<p>Responsive Web Design and Development. 
E-Commerce Web/Application. Products Management System,
 Graphics design</p>
</div>
<div class="col-md-4 ">
<h5><i class="fa-solid fa-briefcase display-5 px-3"></i>Consulting</h5>
<p>Computer Repairs, Cinematography, Graphics, Web Development, Media Production, Training, etc</p>
</div>
</div>

<div class="row container mx-auto">
<div class="col-md-12 text-muted">


</div>
</div>

<div class="row container text-center mx-auto">
<h2 class="mt-3 mb-3">Team</h2>
<hr>
<h4 class="mt-3">...in collaboration with talented and 
trained personnel with up to date skills in their
 respective profession</h4>

<?php
include_once("conn.php");
$sql="SELECT * FROM team";
$query=mysqli_query($conn,$sql);
if(!$query){
echo "not selected ".mysqli_error($conn); 
}
while ($row=mysqli_fetch_assoc($query)) {
    # code...
  
?>
<div class="col-md-3 mt-5">
<img src="amconcept.jpg" class="img rounded-circle" width="150px" alt="" srcset="">
<p class="mt-3"><?php echo $row['surName']." ".$row['otherNames'];?> </p>
<small class="text-muted "><?php echo $row['jobTitle'];?></small>
</div>
<?php
  
}
?>
</div>
<?php
include_once("footer.php");
include_once("footerlink.php");
?>
