<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="CSS/style.css">
	
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
	<title>Freelancer.id</title>

<script type="text/javascript" src="<c:url value=js/jquery-3.4.1.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
   
	
</head>
<body>

	<!-- Side Bar -->
	<input type="checkbox" id="check">
	<div class="sidebar">
		<ul>
			<li><a href="#about">About</a></li>
			<li><a href="#skills">Skills</a></li>
			<li><a href="#portofolio">Example Project</a></li>
			<li><a href="#contact">Contact</a></li>
			<li><a href="request.jsp">Request Project</a></li>
			<li><a href="maps.jsp">Office Location</a></li>
		</ul>
	</div>


	<!-- Header Menu -->
	<header>
		<div class="container1">
		<h1><a href="#">Freelancer.id</a></h1>
		<ul>
			<li><a href="#about">About</a></li>
			<li><a href="#skills">Skills</a></li>
			<li><a href="#portofolio">Example Project</a></li>
			<li><a href="#contact">Contact</a></li>
			<li><a href="request.jsp">Request Project</a></li>
			<li><a href="maps.jsp">Office Location</a></li>
		</ul>

		<!-- Menu Mobile -->
		<label for="check" class="mobile-menu"><i class="fas fa-bars fa-2x" style="color : #fff;"></i></label>
		</div>
	</header>

	<!-- Banner -->
	<section class="banner">
		<div class="container">
			<div class="banner-left">
			<img src="img/logo.png" alt="">
			<h2>Hello...<br>
				We are a programmer at Freelance dot dev <span class="efek-ngetik"></span></h2>
			<p>Enjoy the web</p>
			</div>
		</div>
	</section>

	<!-- About -->
	<section id="about">
		<div class="container">
			<h3>About</h3>
			<p>	This website was created by Adib Alfaini and Faiz Azhary on May 8, 2020. This website aims to accept projects that are within our capabilities. For more information, see the page on this website. Enjoy ~</p>
			<br>
			
		</div>
	</section>

	<!-- Skills -->
	<section id="skills">
		<div class="container">
			<h3>Skills</h3>

			<h4>HTML</h4>
			<div class="bar">
				<span class="nilai html">80%</span>
			</div>

			<h4>CSS</h4>
			<div class="bar">
				<span class="nilai css">90%</span>
			</div>

			<h4>JavaScript</h4>
			<div class="bar">
				<span class="nilai js">80%</span>
			</div>

			<h4>PHP</h4>
			<div class="bar">
				<span class="nilai php">75%</span>
			</div>

			<h4>Java</h4>
			<div class="bar">
				<span class="nilai java">70%</span>
			</div>
		
		<h4>Mobile</h4>
		<div class="bar">
			<span class="nilai Android">90%</span>
		</div>
	</div>
	</section>

	<!-- Portofolio -->
	<section id="portofolio">
		<div class="container">
			<h3>Example Project</h3>
			<div class="col-4" id="telkomsel">
			
					<img src="img/telkomsel.jpg" alt="telkomsel.jpg"  >
			<p><b>Website Telkomsel</b> </p>
				
			</div>
			<div class="col-4" id="dana">
			
					<img src="img/Dana.jpg" alt="Dana.jpg">
					<p><b>Dana mobile apps</b> </p>
				
			</div>
</div>
		
	</section>
	
	<!--Client-->
	
	<section id="Client">
		<div class="container">
			<h3>Our client</h3>
			<div class="col-2">
			<img src="img/telkomsel.png" alt="telkomsel.jpg" >
			
			</div>
			<div class="col-2">
			<img src="img/dana.png" alt="Dana.jpg" >		
			
			</div>
			<div class="col-2">
			<img src="img/Pertamina.png" alt="Pertamina.jpg" >
			
		</div>
		<div class="col-2">
		<img src="img/ciputra.png" alt="ciputra.jpg" >
		
	</div>
	</div>
	</section>
	

		<!-- Contact -->
		<section id="contact">

			<div class="container">
				<h3>Contact</h3>
				<div class="col-3">
					<h4>Address</h4>
					<p>Engineering Center, Fakultas Teknik Universitas Indonesia, Depok, Jawa Barat</p>
				</div>
	
				<div class="col-3">
					<h4>Email</h4>
					<p>Rianrobi2@gmail.com</p>
				</div>
	
				<div class="col-3">
					<h4>Telphone</h4>
					<p>(021) 5952 1234 2314</p>
				</div>
			</div>	
		</section>
	<!-- Footer -->
	<footer>
		<div class="container">
			<small>Copyright &copy; 2020 | Adib Alfaini & Faiz Azhari.</small>
		</div>
	</footer>

	

			
	

</body>
</html>