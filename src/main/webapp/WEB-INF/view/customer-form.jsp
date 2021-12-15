<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer registration form</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body class="container">
	<h1 style="background-color: #00e600; color: white; text-align: center"
		class="my-2 p-3">Customer Relationship Management</h1>
	<br>
	<h3
		style="background-color: #66ff66; color: white; width: 220px; padding: 0 12px; border-radius: 6px;">
		Save Customer</h3>
	<form:form action="/CRM/customers/save" method="POST"
		modelAttribute="customer">

		<!-- Add hidden form field to handle update -->
		<input type="hidden" name="customerId" value="${customer.customerId}" />

		<div class="form-group row">
			<label for="firstName" class="col-sm-2 col-form-label">First
				Name:</label> <input type="text" name="firstName"
				value="${customer.firstName}" class="form-control mb-2 col-sm-4"
				placeholder="First Name">
		</div>

		<div class="form-group row">
			<label for="lastName" class="col-sm-2 col-form-label">Last
				Name:</label> <input type="text" name="lastName"
				value="${customer.lastName}" class="form-control mb-2 col-sm-4"
				placeholder="Last Name">
		</div>

		<div class="form-group row">
			<label for="email" class="col-sm-2 col-form-label">Email:</label> <input
				type="text" name="email" value="${customer.email}"
				class="form-control mb-2 col-sm-4" placeholder="Email">
		</div>

		<button type="submit" class="btn btn-info col-2">Save</button>

	</form:form>
	<br>
	<a href="/CRM/customers/list">Back to List</a>

</body>
</html>