<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRM</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body class="container">
	<h1 style="background-color: #00e600; color: white; text-align: center"
		class="my-2 p-3">Customer Relationship Management</h1>

	<!-- Add button -->
	<a href="/CRM/customers/add" class="btn btn-primary btn-sm mb-3">
		Add Customer</a>

	<table class="table table-bordered table-hover">
		<thead class="thead-light">
			<tr>
				<th style="text-align: center">First Name</th>
				<th style="text-align: center">Last Name</th>
				<th style="text-align: center">Email</th>
				<th style="text-align: center">Action</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customers}" var="customer">
				<tr>
					<td>${customer.firstName }</td>
					<td>${customer.lastName}</td>
					<td>${customer.email }</td>
					<td style="text-align: center">
						<!-- Add "update" button/link --> <a
						href="/CRM/customers/update?customerId=${customer.customerId}"
						class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
						<a href="/CRM/customers/delete?customerId=${customer.customerId}"
						class="btn btn-danger btn-sm"
						onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">
							Delete </a>
					</td>
				</tr>

			</c:forEach>
		</tbody>
	</table>
</body>
</html>