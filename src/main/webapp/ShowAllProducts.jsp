<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All Product</title>
<%@ include file="links.jsp"%>
<style>
body {
	background-image: url('Images/back2.jpg');
	background-size: 100%;
	background-repeat: no-repeat;
}
table {
height:100px;
font-size:20px;
}
.my-custom-scrollbar {
	position: relative;
	height: 600px;
	overflow: auto;
}

.table-wrapper-scroll-y {
	display: block;
}
.table{
--bs-table-striped-color:white;
--bs-table-bg:#004979;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-3">
				<%@ include file="Menu.jsp"%>
			</div>
			<div class="col-9">
				<div class="container-fluid">
					<div class="row">
						<h2 style="color: white;">Show All Products</h2>
					</div>
				</div>
				<div class="row">
					<form action="">
						<table cellpadding="22px">
							<tr>
								<td>Product Group*</td>
								<td><select id="cmbUserType" name="cmbProductGroup">
										<option value="">Select Product Group *</option>
										<option value=Student>Paint</option>
										<option value=Faculty>Tools</option>
										<option value=Faculty>Hardware</option>
										<option value=Faculty>Pipe&Cistern</option>
										<option value=Faculty>Sanitary</option>
										<option value=Faculty>Plumbing</option>
										<option value=Faculty>Bathroom</option>
										<option value=Faculty>Electrics</option>
										<option value=Faculty>Locks</option>
										<option value=Faculty>Woods</option>
								</select></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="row">
					<div class="table-wrapper-scroll-y my-custom-scrollbar">
						<table class="table table-bordered table-striped mb-0 "style="color:white;" >
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">First</th>
									<th scope="col">Last</th>
									<th scope="col">Handle</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Larry</td>
									<td>the Bird</td>
									<td>@twitter</td>
								</tr>
								<tr>
									<th scope="row">4</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row">5</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
								</tr>
								<tr>
									<th scope="row">6</th>
									<td>Larry</td>
									<td>the Bird</td>
									<td>@twitter</td>
								</tr>		
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
