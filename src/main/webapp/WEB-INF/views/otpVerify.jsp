<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            display: flex;
            margin: 0;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f9f9f9;
        }
        .container {
            display: flex;
            background: white;
            width: 80%;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.05);
            overflow: hidden;
            padding: 20px;
        }
        .left {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f4f4f4;
            padding: 20px;
        }
        .right {
            flex: 1;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        h2 {
            margin-bottom: 10px;
            font-size: 20px;
        }
        p {
            font-size: 14px;
            color: #666;
            margin-bottom: 10px;
        }
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #4CAF50;
            border-radius: 5px;
        }
        .otp-container {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }
        .otp-container input {
            width: 40px;
            height: 40px;
            text-align: center;
            font-size: 18px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #6c5ce7;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #6c5ce7;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="left">
        <img src="assets/img/svg/loginimage.svg" alt="Illustration" width="200">
    </div>
    <div class="right">
        <h2>Forgot Password</h2>
        <p>Enter the email address tied to your account, we would help you reset your password</p>
            <input type="email" id="email" placeholder="Enter your email" disabled>
        <p>Enter the OTP</p>
        <div class="otp-container">
            <input type="text" maxlength="1">
            <input type="text" maxlength="1">
            <input type="text" maxlength="1">
            <input type="text" maxlength="1">
        </div>
        <button  id="reset-btn" onclick="window.location.href='reset-pass'">Reset Password</button>
        <!-- <button onclick="window.location.href='otp.html'">Send Link</button> -->




        <a href="/">You remember your password? Login</a>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        document.getElementById("email").value = ""; // Ensures email field is always blank when page loads

        // Add event listener to the button
        document.getElementById("reset-btn").addEventListener("click", function() {
            const email = document.getElementById("email").value;

            if (email.trim() === "") {
                alert("Please enter your email");
            } else {
                alert("OTP has been sent to " + email);
            }
        });
    });
</script>
</body>
</html>
