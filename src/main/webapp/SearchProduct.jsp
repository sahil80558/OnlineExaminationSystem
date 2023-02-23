<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Product</title>
<%@ include file="links.jsp"%>
<style>
body {
	background-image: url('Images/back2.jpg');
	background-size: 100%;
	background-repeat: no-repeat;
}

table {
	height: 200px;
}
element.style{
height:40px
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
				<center>
					<div class="container-fluid">
						<div class="row">
							<h2 style="color: white;">Search Product</h2>
						</div>
					</div>
					<div class="row">
						<form action="">
							<table cellpadding="22px">
								<tr>
									<td>Product Group*</td>
									<td><select id="cmbProductGroup" name="cmbProductGroup">
											<option value="">Select Product Group *</option>
											<option value="paint">Paint</option>
											<option value="tools">Tools</option>
											<option value="hardware">Hardware</option>
											<option value="pipe">Pipe and Cistern</option>
											<option value="sanitary">Sanitary</option>
											<option value="plumbing">Plumbing</option>
											<option value="bathroom">Bathroom</option>
											<option value="electric">Electrics</option>
											<option value="locks">Locks</option>
											<option value="woods">Woods</option>
									</select></td>
								</tr>
								<tr>
									<td>Product Code</td>
									<td><input type="text" placeholder="Product Code"
										id="searchbyid" name="productCode" required></td>
								</tr>
								<tr>
									<td>Product Name</td>
									<td><input type="text" placeholder="Product Name"
										name="productName" name="searchbyname" id="searchbyname"
										required></td>
								</tr>
								<tr>
									<td align="center" colspan="2"><input class="B"
										name="search" id="search" type="submit" value="Search"></td>
								</tr>
							</table>
						</form>
						<div class="col-md-6"
							style="position: relative; margin-top: -96px; margin-left: 598px; height:40px;">
							<div class="list-group" id="show-list1"></div>
						</div>
						<div class="col-md-5"
							style="position: relative; margin-top: -169px; margin-left: 598px; height:40px;">
							<div class="list-group" id="show-list2"></div>
						</div>
					</div>
				</center>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>
	<script src="js/SearchProduct.js"></script>
</body>
</html>
