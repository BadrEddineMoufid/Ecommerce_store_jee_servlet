<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--
Generated by IDEA
User: Badr Eddine
-->
<!DOCTYPE html>
<html>
<head>
<title>Login page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<!-- JSTL is ehhhhhhhh sometimes like Thymeleaf is so simple anyway -->
<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

<header>
		<h1>
			Ecommerce Store
		</h1>
		<nav>
			<ul>
				<li><a href="Controller?page=index">Home</a></li>
				<c:choose>
					<c:when test="${session == null}">
						<li><a href="Controller?page=login">Login</a></li>
						<li><a href="Controller?page=sign-up">Sign-up</a></li>
					</c:when>
					<c:when test="${session != null}">
						<li><a href="Controller?page=logout" style="color: #F24638;">Logout</a></li>
						<li><a href="#">My Account</a></li>
					</c:when>
				</c:choose>
				<li><a href="Controller?page=showcart">cart(<c:out value="${x}"/>)</a></li>
			</ul>
		</nav>
	</header>
	<!--if you are wondering about the Wubba Lubba Dub Dub :( ?_? go Watch Rick and Morty now!!!!  -->
	<div class="signup-header">
	 	<h2>Login </h2>
	</div>

	 <form method="post" action="Controller">
	 
		 <input type="hidden" name="page" value="login-form">

			<!-- Display Validations errors Wabba Lubba -->
			<span style="color: #F24638; "><c:out value="${msg }"></c:out></span>

			<div class="signup-group">
				<label>Username</label>
				<input type="text" name="username" placeholder="Your Username" value="<c:out value="${username }"></c:out>">
			</div>
			<div class="signup-group">
				<label>Password</label>
				<input type="password" name="password" placeholder="Enter password">
			</div>
			<div class="signup-group">
				<button type="submit" name="login" class="signup-btn">Log in</button>
			</div>
			<p>
				New to Wubba Lubba Dub Dub? <a href="Controller?page=sign-up" style="color:#F24638;">Create Account</a>
			</p>
	 </form>
	<br><br><br>
	<footer style="position: fixed;bottom: 0;left: 0;width: 100%;">
		<div class="footer"> &copy; 2021 Copyright:
			<a href="Controller?page=index"> RickandMortyStore.com</a>
	    </div>
	</footer>


</body>
</html>