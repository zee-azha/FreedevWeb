<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Freelancedev- Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
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

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="Admin.jsp">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3"> Admin </div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

     

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Menu
      </div>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="Admin.jsp">
          <i class="fas fa-fw fa-table"></i>
          <span>Project List</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="Approve.jsp">
          <i class="fas fa-fw fa-table"></i>
          <span>Project Process</span></a>
      </li>
<!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="Report.jsp">
          <i class="fas fa-fw fa-table"></i>
          <span>Project Report</span></a>
      </li>
       <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="Porto.jsp">
          <i class="fas fa-fw fa-table"></i>
          <span>Portofolio</span></a>
      </li>
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              
            </div>
          </form>

        

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Administrator</span>
                <img class="img-profile rounded-circle" src="assets/img/nav_logo.png"">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="Approve.jsp" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
			<div class="container-fluid">
			
				<!-- Page Heading -->
				<h1 class="h3 mb-4 text-gray-800">Project List</h1>
				
			<form class="user">
			<div class="form-group">
			<input type="text" class="form-control form-control-user" id="uid"
			placeholder="ID" readonly>
			</div>
			<div class="form-group">
			<input type="text" class="form-control form-control-user"
			id="name" placeholder="Name" readonly>
			</div>
			<div class="form-group">
			<input type="email" class="form-control form-control-user" id="email"
			placeholder="email" readonly>
			</div>
			<div class="form-group">
			<input type="text" class="form-control form-control-user" id="subject"
			placeholder="subject" readonly>
			</div>
			<div class="form-group">
			<textarea name="message" class="form-control form-control-user" id="description"
			placeholder="Descripton" readonly></textarea>
			</div>
			<div class="form-group">
			<select name="Status" id="status" class="form-control">
			<option value="Approve">Approve</option>
  			<option value="on process">on process</option>
  			<option value="revision">revision</option>
  			<option value="payment">payment</option>
  			
  			</select>
			</div>
			
			<input type="button" value="Update" onclick="update_proj();"
			class="btn btn-warning btn-user" />
			<input type="button" value="Done" onclick="done_proj();"
			class="btn btn-success btn-user" />
			<input type="button" value="Cancelled" onclick="delete_proj();"
			class="btn btn-danger btn-user" />
			<hr>
			</form>
				
				<div class="card shadow mb-4">
			<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">Information</h6>
			</div>
			<div class="card-body">
			<div class="table-responsive">
			<table id="tb_proj" class="table table-bordered" width="100%" cellspacing="0">
				
							<tr>
							<td>#ID</td>
							<td>Name</td>
							<td>Email</td>
							<td>Subject</td>
							<td>Description</td>
							<td>Status</td>
							</tr>
							</table>
				
						</div>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="index.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
 
  
  <script>
	var tbproject = document.getElementById('tb_proj');
	var databaseRef = firebase.database().ref('approve/');
	var databaseRef2 = firebase.database().ref('Report/');
	var rowIndex = 1;
	
	databaseRef.once('value', function(snapshot) {
		snapshot.forEach(function(childSnapshot) {
	var childKey = childSnapshot.key;
	var childData = childSnapshot.val();
	
	var row = tbproject.insertRow(rowIndex);
	var cellId = row.insertCell(0);
	var cellName = row.insertCell(1);
	var cellEmail = row.insertCell(2);
	var cellSubject = row.insertCell(3);
	var cellDescription = row.insertCell(4);
	var cellStatus = row.insertCell(5);
	cellId.appendChild(document.createTextNode(childKey));
	cellName.appendChild(document.createTextNode(childData.name));
	cellEmail.appendChild(document.createTextNode(childData.email));
	cellSubject.appendChild(document.createTextNode(childData.subject));
	cellDescription.appendChild(document.createTextNode(childData.description));
	cellStatus.appendChild(document.createTextNode(childData.status));
	rowIndex = rowIndex + 1;
	});
		
		var table = document.getElementById("tb_proj");
		var rows = table.getElementsByTagName("tr");
		for (i = 0; i < rows.length; i++) {
			var currentRow = table.rows[i];
			var createClickHandler = function(row) {
			return function() {
				var cell1 = row.getElementsByTagName("td")[0];
				var cell2 = row.getElementsByTagName("td")[1];
				var cell3 = row.getElementsByTagName("td")[2];
				var cell4 = row.getElementsByTagName("td")[3];
				var cell5 = row.getElementsByTagName("td")[4];
				var cell6 = row.getElementsByTagName("td")[5];
				var id = cell1.innerHTML;
				var name = cell2.innerHTML;
				var email = cell3.innerHTML;
				var subject = cell4.innerHTML;
				var description = cell5.innerHTML;
				var status = cell6.innerHTML;
				document.getElementById('uid').value = id;
				document.getElementById('name').value = name;
				document.getElementById('email').value = email;
				document.getElementById('subject').value = subject;
				document.getElementById('description').value = description;
				document.getElementById('status').value = status;
			};
		};
		currentRow.onclick = createClickHandler(currentRow);
	 	}
	});

	function update_proj(){
		var email = document.getElementById('email').value;
		var subject = document.getElementById('subject').value;
		var name = document.getElementById('name').value;
		var uid = document.getElementById('uid').value;
		var status = document.getElementById('status').value;
		var description = document.getElementById('description').value;
		
		if (uid != "" &&name != "" && email!="" !=""&&subject !=""&& description !=""&&subject != "" ) {
		var data = {
				name: name, 
				email: email, 
				subject: subject,
				description: description,
				status: status
				
		}
		
		var updates = {};
		updates['/approve/' + uid] = data;
		firebase.database().ref().update(updates);
		
		alert('Project request has update!');
		
		reload_page();}else{alert('You must insert all field!');}
		}
	function done_proj(){
		var email = document.getElementById('email').value;
		var subject = document.getElementById('subject').value;
		var name = document.getElementById('name').value;
		var uid = document.getElementById('uid').value;
		
		var description = document.getElementById('description').value;
		
		if (name != "" && email!="" !=""&&subject !=""&& description !="") {
		var data = {
				name: name, 
				email: email, 
				subject: subject,
				description: description,
				status: "Done"
				
		}
		
		var updates = {}; updates['/Report/' + uid] = data; firebase.database().ref().update(updates);
		
		alert('Project request has Finished!');
		delete1_proj();
		reload_page();}else{alert('You must insert all field!');}
		
		}
	
	function delete_proj(){
	var uid = document.getElementById('uid').value;
	
	firebase.database().ref().child('/approve/' + uid).remove();
	alert('project request deleted!');
	reload_page();
	}
	function delete1_proj(){
		var uid = document.getElementById('uid').value;
		
		firebase.database().ref().child('/approve/' + uid).remove();
		
		reload_page();
		}
	
	function reload_page(){
	window.location.reload()
	document.getElementById('uid').value = "";
	document.getElementById('name').value = "";
	document.getElementById('email').value = "";
	document.getElementById('subject').value ="";
	document.getElementById('description').value ="";
	document.getElementById('status').value = "";
	}
	
	</script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
