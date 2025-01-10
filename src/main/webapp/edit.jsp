<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Service - arpalink</title>
</head>
<body>
    <h1>Edit Service Information</h1>
    <form action="updateService" method="post">
        <label for="serviceName">Service Name:</label>
        <input type="text" id="serviceName" name="serviceName" required><br>
        
        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea><br>
        
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" required><br>
        
        <input type="submit" value="Update Service">
    </form>
</body>
</html>