<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!--
Generated by IDEA
User: Badr Eddine
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Add Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<header>
    <h1>
        Welcome admin
    </h1>
    <nav>
        <ul>
            <li><a href="admin?page=index">Admin Home</a></li>
            <li><a href="admin?page=addproduct">Add Product</a></li>

        </ul>
    </nav>
</header>

<div class="signup-header">
    <h2>Add Product</h2>
</div>

<form method="post" action="admin" enctype="multipart/form-data">
    <!--using a hidden input field to differentiate between
        post request in admin controller this is used throughout
        out the project
    -->
    <input type="hidden" name="page" value="add_product">

    <div class="signup-group">
        <label>Name</label>
        <input type="text" name="name" placeholder="product name goes here" required>
    </div>
    <div class="signup-group">
        <label>Price</label>
        <input type="text" name="price" placeholder="product price" required>
    </div>
    <div class="signup-group">
        <label>Category</label>
        <select name="category" required>
            <option value="clothing">clothing</option>
            <option value="mobiles">mobiles</option>
            <option value="home decor">home decor</option>
            <option value="laptops">laptops</option>
        </select>
    </div>

    <div class="signup-group">
        <label>Featured</label>
        <input type="text" name="featured" placeholder="yes/no" required>
    </div>
    <div class="signup-group">
        <label> Select an image to upload</label>
        <input type="file" name="file" accept="image/*" required>
        <br>
    </div>
    <div class="signup-group">
        <input type="submit" value="Process">
    </div>
</form>


</body>
</html>