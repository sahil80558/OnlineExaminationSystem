<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Create Invoice</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="https://unpkg.com/purecss@2.0.6/build/pure-min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="license"
	href="https://www.opensource.org/licenses/mit-license/">
<link rel="stylesheet" href="CSS/styleMenu.css" type="text/css" />
<style>
body {
	font-family: "Open Sans", sans-serif;
	line-height: 1.25;
	background-color: cyan;
}

.billDetails {
	background-color: #f5ce64;
	color: white;
	width: 100%;
}

td {
	text-align: left;
}

#formItem label {
	text-align: left;
	line-height: 150%;
	font-size: .85em;
}

h3 {
	color: black;
}

#invoiceHeading {
	text-align: center;
}

.products {
	background-color: #09f;
	color: white;
	box-shadow: 10px 10px 10px black;
	margin-top: 25px;
	width: 100%;
}

.col-9 {
	width: 79%;
}

.col-3 {
	width: 21%;
}
</style>
<!-- <link rel="stylesheet" href="CSS/bill.css"> -->
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-3">
				<%@ include file="Menu.jsp"%>
			</div>
			<div class="col-9">
				<h3 id="invoiceHeading"
					style="background-color: powderblue; color: red;">Invoice</h3>
				<table cellpadding="10px" class="billDetails">
					<colgroup>
						<col span="1" style="width: 15%;">
						<col span="1" style="width: 15%;">
						<col span="1" style="width: 30%;">
						<col span="1" style="width: 30%;">
					</colgroup>
					<tbody>
						<tr>
							<td><h3>Bill No.</h3></td>
							<td><h3>12345</h3></td>
							<td><h3>Customer Name</h3></td>
							<td><input type="text" name="customerName" id="customerName"></td>
						</tr>
						<tr>
							<td><h3>Mobile No.</h3></td>
							<td><input type="number"></td>
							<td style="color: black;"><h3>Date:</h3> <lable
									style="color:black;">30</lable style="color:black;">-<lable style="color:black;">12</lable>-<lable
									style="color:black;">2023</lable></td>
							<td style="color: black;"><h3>Time:</h3> <lable
									style="color:black;">30</lable style="color:black;">-<lable style="color:black;">12</lable>-<lable
									style="color:black;">20</lable></td>
						</tr>
						<tr>
							<td><h3>Address</h3></td>
							<td><input type="text" name="address"></td>
							<td><h3>Payment Mode</h3></td>
							<td><select id="cmbPaymentMode" name="cmbPaymentMode">
									<option value="">Select Payment Mode *</option>
									<option value=Student>Cash</option>
									<option value=Faculty>Card</option>
									<option value=Faculty>Online</option>
									<option value=Faculty>Unpaid</option>
							</select></td>
						</tr>
						<tr>
							<td><h3>GST No.</h3></td>
							<td><input type="text"></td>
							<td><h3>Sold By:</h3></td>
							<td><h3>Agarwal Hardware</h3></td>
						</tr>
					</tbody>
				</table>
				<hr>
				<br>
				<h3>Product Details</h3>
				<table id="products" class="products" cellpadding="10px">
					<tbody>
						<tr>
							<th>S.No</th>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Sub Total</th>
						</tr>
						<!-- 						<tr> -->
						<!-- 							<td><input type="text" name="productId"></td> -->
						<!-- 							<td><input type="text" name="productName"></td> -->
						<!-- 							<td><input type="text" name="productQuantity"></td> -->
						<!-- 							<td><input type="text" name="productPrice"></td> -->
						<!-- 							<td><input type="text" name="productTotalAmount"></td> -->
						<!-- 						</tr> -->
					</tbody>
				</table>
				<div class="container mt-5">
					<button type="button" class="btn btn-primary"
						data-bs-toggle="modal" data-bs-target="#myModal">Add
						Product</button>
					<div class="modal" id="myModal">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">Search Product</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
								</div>
								<div class="modal-body">
									<form>
										<div class="mb-3">
											<select id="cmbUserType" name="cmbProductGroup">
												<option value="">Select Product Group *</option>
												<option value=Student>Paint</option>
												<option value=Faculty>Tools</option>
												<option value=Faculty>Hardware</option>
												<option value=Faculty>Pipe and Tanks</option>
												<option value=Faculty>Sanitary</option>
												<option value=Faculty>Plumbing</option>
												<option value=Faculty>Bathroom</option>
												<option value=Faculty>Electrics</option>
												<option value=Faculty>Locks</option>
												<option value=Faculty>Woods</option>
											</select>
										</div>
										<div class="mb-3">
											<label class="form-label required">Product Id</label> <input
												type="email" class="form-control">
										</div>
										<div class="mb-3">
											<label class="form-label required">Product Name </label> <input
												type="email" class="form-control">
										</div>
									</form>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary">Add</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br> <br> <br>
				<h3>Taxes:</h3>
				<h3>Total:</h3>
				<br> <br> <br> <br> <a onclick="window.print();"><button
						class="button right-button">Print</button></a> <br> <br> <br>
				<br>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>