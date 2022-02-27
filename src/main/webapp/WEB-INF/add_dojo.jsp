<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>New Dojo</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />	
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>	
</head>
<body>
	<div class="container">
		<h1>New Dojo</h1>		
		<form:form method="POST" action="/dojos/new" class="col-6" modelAttribute="dojo">
				<div class="form-group form-row form-inline input-group flex-nowrap">
					<form:label path="name" class="col-form-label col-sm-2" >Name:</form:label>					
					<form:input type="text" path="name" class="form-control col-sm-10" />	
					<form:errors path="name" class="text-danger error-space" />			
				</div>
		
				<input type="submit" value="Create" class="btn btn-primary">					
		</form:form>
		
		<h3><c:out value="${message}"/></h3>
	
	</div>
</body>
</html>