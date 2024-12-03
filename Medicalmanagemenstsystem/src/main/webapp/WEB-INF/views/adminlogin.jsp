<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title> 
    <style type="text/css">
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f8fd;
            color: #444;
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }

        /* Centering the form container */
        .container {
            width: 100%;
            max-width: 500px;
            margin: 50px auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            border: 2px solid #4caf50; /* Green border */
            text-align: center;
        }

        h1 {
            text-align: center;
            font-size: 30px;
            font-weight: 600;
            color: #800080;
            margin-bottom: 20px;
        }

        h3 {
            font-size: 20px;
            color: #800080;
            margin-bottom: 10px;
        }

        p {
            color: #6c757d;
            margin-bottom: 20px;
        }

        /* Input fields styling */
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            margin: 10px 0;
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
            background-color: #4caf50; /* Green button */
            color: white;
            padding: 14px 20px;
            font-size: 16px;
            font-weight: 500;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }

        button:hover {
            background-color: #388e3c; /* Darker green */
        }

        /* Subcontainer styling */
        .subcontainer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }

        /* Remember Me and Forgot Password */
        label {
            color: #2c3e50;
        }

        .forgotpsd a {
            color: #4caf50;
            text-decoration: none;
        }

        .forgotpsd a:hover {
            text-decoration: underline;
        }

        /* Register section */
        .register {
            color: #2c3e50;
            margin-top: 20px;
        }

        .register a {
            color: #4caf50;
            text-decoration: none;
        }

        .register a:hover {
            text-decoration: underline;
        }

        /* Responsive styling */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
                margin: 20px;
            }

            input[type="text"], input[type="password"], button {
                font-size: 14px;
            }

            h1 {
                font-size: 26px;
            }

            h3 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

    <h1>Admin Login </h1>

    <div class="container">
        <form action="<%= request.getContextPath() %>/login" method="post">
            <!-- Headings for the form -->
            <h3>Sign in</h3>
            <p>Sign in with your username and password</p>

            <!-- Username -->
            <label for="username">Your username</label>
            <input type="text" placeholder="Enter Username" name="username" required>

            <!-- Password -->
            <label for="pswrd">Your password</label>
            <input type="password" placeholder="Enter Password" name="pswrd" required>

            <!-- Sub container for the checkbox and forgot password link -->
            <div class="subcontainer">
                <label>
                  <input type="checkbox" checked="checked" name="remember"> Remember me
                </label>
                <p class="forgotpsd"><a href="#">Forgot Password?</a></p>
            </div>

            <!-- Submit button -->
            <button type="submit">Login</button>

            <!-- Sign up link -->
            <p class="register">Not a member? <a href="<%= request.getContextPath() %>/staffregister">Register here!</a></p>
        </form>
    </div>

<script type="text/javascript">
    var status= document.getElementById("status").value;
    if(status == "failed"){
        swal("Sorry", "Wrong Username or Password", "error");
    }
</script>

</body>
</html>
