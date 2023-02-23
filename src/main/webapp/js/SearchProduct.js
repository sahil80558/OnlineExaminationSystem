$(document).ready(function() {
	// Send Search Text to the server
	$("#searchbyname").keyup(function() {
		let searchText = $(this).val();
		let selectedOption = $('#cmbProductGroup option:selected');
		let productType = selectedOption.val();

		if (productType === "") {
			$("#show-list1").html("<a href=" + '"' + "#" + '"' + " class=" + '"' + "list-group-item list-group-item-action border-1" + '"' + ">" + "Please Select Product Type" + "</a>");
			return;
		}
		if (searchText != "") {
			$.ajax({
				url: "SearchByNameController",
				method: "GET",
				data: {
					query: searchText,
					productType: productType
				},
				success: function(response) {
					$("#show-list1").html(response);
				},
			});
		} else {
			$("#show-list1").html("");
		}
	});
	// Search by Id
	$("#searchbyid").keyup(function() {
		let searchText = $(this).val();
		let selectedOption = $('#cmbProductGroup option:selected');
		let productType = selectedOption.val();
		if (productType === "") {
			$("#show-list2").html("<a href=" + '"' + "#" + '"' + " class=" + '"' + "list-group-item list-group-item-action border-1" + '"' + ">" + "Please Select Product Type" + "</a>");
		}
		if (searchText != "") {
			$.ajax({
				url: "SearchByNameController",
				method: "GET",
				data: {
					searchId: searchText,
					productType: productType
				},
				success: function(response) {
					$("#show-list2").html(response);
				},
			});
		} else {
			$("#show-list2").html("");
		}
	});
	// Set searched text in input field on click of search button
//	$(document).on("click", "a", function() {
//		$("#searchbyname").val($(this).text());
//		$("#show-list").html("");
//	});
	$(function(){
      function yourfunction(event) {
            alert('some anchor clicked');
            return false;
      }
      $('#a2').click(yourfunction);
});
});