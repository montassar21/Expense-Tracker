<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Expense</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <a class="navbar-brand b-3 fw-bold" href="/">Expense Tracker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="active btn btn-outline-dark p-1 ms-3 my-2 my-sm-0 bg-light">
        <a class="nav-link " href="${contextRoot }/expense">Add Expense</a>
      </li>
      <li class="active btn btn-outline-dark p-1 ms-3 my-2 my-sm-0 bg-light">
        <a class="nav-link" href="#">Login</a>
      </li>
      <li class="active btn btn-outline-dark p-1 ms-3 my-2 my-sm-0 bg-light">
        <a class="nav-link" href="#">Sign up</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search">
      <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
  <div class=" m-1 p-3 text-center bg-light">
    <h1 class="mb-1">Create New Expense</h1>
  </div>
	<form:form action="${contextRoot}/expense" method="post" modelAttribute="expense">
	<form:hidden path="id" />
  <div class="form-group m-5">
    <label for="exampleInputEmail1">Expense Name</label>
    <form:input class="form-control" path="expensename" placeholder="Enter expense name"/>
  </div>
  <div class="form-group m-5">
    <label for="note">Note</label>
    <form:textarea class="form-control" path="note" placeholder="Enter note ( optional)"/>
  </div>
  <div class="form-group m-5">
    <label for="amount">Amount</label>
<form:input class="form-control" path="amount" placeholder="Enter amount"/>
  </div>
  <button class="btn btn-primary ms-5" type="submit">Add Expense</button>
  
</form:form>
</body>
</html>