<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url('assets/img/authenticate.jpg'); /* Replace with your desired GIF URL */
            background-size: cover;
            background-position: centre;
            background-repeat: no-repeat;
        }

        .container {
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h3 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #000000;
        }

        .login-box {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .login-box input {
            width: 80%;
            padding: 12px;
            margin: 10px 0px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-box button {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-box button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="container">
        <h3>User Login</h3>
        <div class="login-box">
            <form onsubmit="redirectToHome(event)">
                USERNAME: <input type="text" placeholder="Enter Username" name="uname" required><br>
                PASSWORD: <input type="password" placeholder="Enter password" name="pswd" required><br>
                <button type="submit">Login</button>
            </form>
        </div>
    </div>

    <script>
        function redirectToHome(event) {
            event.preventDefault(); // Prevent form from submitting to server
            // Add validation/authentication logic if needed
            window.location.href = "index.html"; // Redirect to home page
        }
    </script>

</body>
</html>
