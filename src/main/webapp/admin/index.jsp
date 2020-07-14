<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Freelancer.id | Admin Login Page</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<!-- Firebase App is always required and must be first -->
<script src="https://www.gstatic.com/firebasejs/7.15.3/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.15.1/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.15.1/firebase-firestone.js"></script> 
<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.15.3/firebase-analytics.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.3/firebase-auth.js"></script>
<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyAGI3LKcSidKCVm1wnasQIgsfaRwYAfgao",
    authDomain: "freelancedev.firebaseapp.com",
    databaseURL: "https://freelancedev.firebaseio.com",
    projectId: "freelancedev",
    storageBucket: "freelancedev.appspot.com",
    messagingSenderId: "840346732275",
    appId: "1:840346732275:web:eee46d652a0a7383d91986",
    measurementId: "G-C3DMJCCM22"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
</head>
<body>
	<div class="container">
		<div class="box-1"></div>
		<div class="box-2"></div>
		<div class="box-3"></div>
		<div class="bubbles">
			<div class="box-4"></div>
			<div class="box-5"></div>
			<div class="box-6"></div>
			<div class="box-7"></div>
		</div>
		<div class="box-8"></div>
		<form name="Login">
		<div class="box-login">
			<h1 style="text-align: center; font-family: sans-serif;">LOGIN</h1>
			<input type="text" placeholder="Username" id="email_field" required />
			<br><br>
			<input type="password" placeholder="Password" id="password_field" required />
			<br><br><br><br><br>
			<button type="button" onclick="login()">LOGIN HERE</button>
		</div>
		</form>
	</div>

	<script src="js/index.js"></script>

</body>
</html>