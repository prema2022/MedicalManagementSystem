
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New User Registration</title>
    <link href="${pageContext.request.contextPath}/css/new_user.css" rel="stylesheet"> <!-- Link to the same CSS file -->
</head>
<body>
    <div class="container">
        <h2>New User Registration</h2>
        <form action="<%= request.getContextPath() %>/register" method="post">
    
            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" required><br>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required><br>

            <label for="gender">Gender:</label>
            <input type="text" id="gender" name="gender" required><br>
            

            <label for="blood">Blood Group:</label>
            <input type="text" id="blood" name="blood" required><br>

            <label for="contact">Contact Number:</label>
            <input type="tel" id="contact" name="contact" required><br>

            <label for="address">Address:</label>
            <textarea id="address" name="address" rows="4" required></textarea><br>

            <label for="aname">Attender Name:</label>
            <input type="text" id="aname" name="aname" required><br>

            <label for="acontact">Attender Contact Number:</label>
            <input type="tel" id="acontact" name="acontact" required><br>

            <button type="submit">Register</button>
        </form>
    </div>

    <script src="assets/js/main.js"></script> <!-- Link to your JS file -->

</body>
</html>