<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>New Ninja</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />	
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>	
</head>
<body>
	<div class="container">
		<h1>New Ninja</h1>		
		                                  
		<form:form method="POST" action="/ninjas/new" class="col-6" modelAttribute="ninja">
				<form:label path="dojo">Name: </form:label>
			    <form:select path="dojo">
			        <c:forEach var="oneDojo" items="${dojos}">
			            <!--- Each option VALUE is the id of the person --->
			            <div class="form-group form-row form-inline input-group flex-nowrap">
			            
			            <form:option value="${oneDojo.id}" path="person">
			            <!--- This is what shows to the user as the option --->
			            	<div class="form-control col-sm-10">
			                	<c:out value="${oneDojo.name}"/>
			               	</div>
			            </form:option>
			            </div>
			        </c:forEach>
			    </form:select>


				<div class="form-group form-row form-inline input-group flex-nowrap">
					<form:label path="firstName" class="col-form-label col-sm-2" >First Name:</form:label>					
					<form:input type="text" path="firstName" class="form-control col-sm-10" />	
					<form:errors path="firstName" class="text-danger error-space" />			
				</div>
				<div class="form-group form-row form-inline input-group flex-nowrap">
					<form:label path="lastName" class="col-form-label col-sm-2" >Last Name:</form:label>					
					<form:input type="text" path="lastName" class="form-control col-sm-10" />	
					<form:errors path="lastName" class="text-danger error-space" />			
				</div>		
				<div class="form-group form-row form-inline input-group flex-nowrap">
					<form:label path="age" class="col-form-label col-sm-2" >Age:</form:label>					
					<form:input type="number" path="age" class="form-control col-sm-10" />	
					<form:errors path="age" class="text-danger error-space" />			
				</div>
		
				<input type="submit" value="Create" class="btn btn-primary">					
		</form:form>
		
		<h3><c:out value="${message}"/></h3>
	
	</div>
</body>
</html>