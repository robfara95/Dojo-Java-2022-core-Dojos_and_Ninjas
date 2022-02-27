<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Display Ninjas/Dojos</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />	
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>	
</head>
<body>
<!--- ... --->
<div class="container">
	<h1><c:out value="${dojo.name}"/> Location Ninja</h1>
	<table class="table">
	    <thead class="thead-dark">
	        <tr>
	            <th>First Name</th>
	            <th>Last Name</th>
	            <th>age</th>
	        </tr>
	     </thead>
	     <tbody>
	        <c:forEach var="ninja" items="${dojo.ninjas}">
	    		<tr>
	    	  		<td><c:out value="${ninja.firstName}"></c:out></td>
	    	  		<td><c:out value="${ninja.lastName}"></c:out></td>
	    	  		<td><c:out value="${ninja.age}"></c:out></td>
	    		</tr>
	    	</c:forEach>	    
	     </tbody>
	</table>
	
	
	<div>
		<a href="/dojos/new">Add Dojo</a>
		<a href="/ninjas/new">Add Ninja</a>
		
	</div>
</div>
</body>
</html>