<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Prescription</title>
    
    <style type="text/css">
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f8fd;
            color: #444;
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }

        /* Container for the form */
        .container {
            width: 100%;
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            border: 2px solid #4caf50; /* Green border */
            text-align: center;
        }

        /* Form Title */
        .container h2 {
            font-size: 24px;
            font-weight: 600;
            color: #800080;
            margin-bottom: 20px;
        }

        /* Input fields and buttons styling */
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: 500;
            color: #2c3e50;
            text-align: left;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input:focus {
            outline: none;
            border-color: #4caf50;
        }

        /* Button styling */
        button {
            display: inline-block;
            background-color: #4caf50; /* Green color */
            color: #fff;
            padding: 12px 20px;
            font-size: 16px;
            font-weight: 500;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }

        button:hover {
            background-color: #388e3c; /* Darker green on hover */
        }

        /* Error message styling */
        p.error {
            color: red;
            font-size: 14px;
        }

        /* Responsive styling */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
                margin: 20px;
            }

            input[type="text"], button {
                font-size: 14px;
            }

            h2 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Search Prescription</h2>
        <form action="<%= request.getContextPath() %>/EprescriptionServlet" method="post">
            <label for="pid">Enter Patient ID:</label>
            <input type="text" id="pid" name="pid" required>
            <button type="submit">Search</button>
        </form>
        
        <!-- Error Message -->
        <% if (request.getAttribute("errorMessage") != null) { %>
            <p class="error"><%= request.getAttribute("errorMessage") %></p>
        <% } %>
    </div>
</body>
</html>
