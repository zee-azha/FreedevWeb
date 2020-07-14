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
  <title>Freelancer.id | Request Project</title>
  <!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.3/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.15.1/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.15.1/firebase-firestone.js"></script> 
<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.15.3/firebase-analytics.js"></script>

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

<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="840346732275-m3ck7dkekhej81ghvo6h0r8kaem1u10l.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>	
</head>
<body >


<!-- Side Bar -->
  <input type="checkbox" id="check">
  <div class="sidebar">
    <ul>
      <li><a href="index.jsp">Home</a></li>
      <li><a href="request.jsp">Request Project</a></li>
    </ul>
  </div>


  <!-- Header Menu -->
  <header>
    <div class="container1">
    <h1><a href="index.jsp">Freelancer.id</a></h1>
    <ul>
      <li><a href="index.jsp">Home</a></li>
      <li><a href="request.jsp">Request Project</a></li>
      <li><a href="javascript:signOut()" id="signout">signout</a></li>
      <li><div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" id="signin"></div></li>
      
    </ul>

    <!-- Menu Mobile -->
    <label for="check" class="mobile-menu"><i class="fas fa-bars fa-2x" style="color : #fff;"></i></label>
    </div>
  </header>

<!-- Request Project -->
<section id="request">
    <div class="container">
      <div class="wrapper">
  <div class="contact-form">
    <div class="input-fields">
      <h2 style="color : #c5ecfd; ">Request Project</h2>
      <form >
        <div class="form-group" >
      <input type="text"  id="name" name="name" class="input" placeholder="Name"  required="" readonly>
      
    </div>
    <div class="form-group" >
      <input type="email" id="email" name="email" class="input"  placeholder="Please sign in first" readonly required="required" data-validation-required-message="Please enter your email address." pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Your Email Format is Wrong">
      
    </div>
    <div class="form-group">
      <input type="text" id="subject" name="subject" class="input" placeholder="Subject" required="">
      
      </div>
    <div class="form-group">
      
      <textarea name="message" id="message" cols="30" rows="7"   placeholder="Description" class="input" required=""></textarea>
      </div>
      </form> 
    <input type="button" value="save" onclick="save_proj();" class="btn"></div>
    
    </div>
    
		     
     
  
  </div>
</div>  
    
  </section>
  <!--import -->
<script  src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/angular.min.js"></script>
<script>
document.getElementById("signin").style.display = "block";
document.getElementById("signout").style.display = "none";

function onSignIn(googleUser) {
// Useful data for your client-side scripts:
var profile = googleUser.getBasicProfile();
document.getElementById("name").value = profile.getName();
document.getElementById("email").value = profile.getEmail();
document.getElementById("signin").style.display = "none";
document.getElementById("signout").style.display = "block";
}
function signOut() {
	document.getElementById("signin").style.display = "block";
	document.getElementById("signout").style.display = "none";
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
    	auth2.disconnect();
    	document.getElementById("email").value ="";
    	document.getElementById("name").value ="";
    	
    
    
    });
  }
</script>
<script>
var databaseRef = firebase.database().ref('project/');
function save_proj(){
	
	var name = document.getElementById('name').value;
	var email = document.getElementById('email').value;
	var subject = document.getElementById('subject').value;
	var description = document.getElementById('message').value;
	var status = "waiting";
	if (name != "" && email!="" && subject !=""&& message !="") {

	var uid = firebase.database().ref().child('project').push().key;
	var data = { 
			name: name, 
			email: email, 
			subject: subject,
			description: description,
			status: status
			
			}
	var updates = {}; updates['/project/' + uid] = data; firebase.database().ref().update(updates);
	alert('project has been send! we will contact your email if we approve the project'); reload_page(); 
		}else{alert('You must insert all field!');}}
	function reload_page(){ 
		window.location.reload(); 
		document.getElementById('name').value="";
		document.getElementById('email').value="";
		document.getElementById('subject').value="";
		document.getElementById('message').value="";}
</script>

</body>
</html>