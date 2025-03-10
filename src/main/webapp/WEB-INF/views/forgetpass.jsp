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
            font-family: 'Segoe UI', sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #f0f2f5;
        }

        .container {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            color: #1a1a1a;
            margin-bottom: 1rem;
            font-size: 1.5rem;
            text-align: center;
        }

        .instructions {
            color: #606060;
            margin-bottom: 1.5rem;
            text-align: center;
            line-height: 1.5;
        }

        .input-group {
            margin-bottom: 1.5rem;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        input:focus {
            outline: none;
            border-color: #1877f2;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #1877f2;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button:hover {
            background: #166fe5;
        }

        .error-message {
            color: #ff4d4f;
            font-size: 0.875rem;
            margin-top: 0.5rem;
            display: none;
        }

        @media (max-width: 480px) {
            .container {
                margin: 1rem;
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Forgot Password</h1>
    <p class="instructions">Enter the email address tied to your account, we would help you reset your password</p>

    <div class="input-group">
        <input type="email" id="email" placeholder="Email" required>
        <div class="error-message" id="error-message">Please enter a valid email address</div>
    </div>

    <button onclick="handleSendLink()">Send Link</button>


</div>

<script>
    function validateEmail(email) {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(String(email).toLowerCase());
    }

    function handleSendLink() {
        const email = document.getElementById('email').value;
        const errorMessage = document.getElementById('error-message');

        if (!validateEmail(email)) {
            errorMessage.style.display = 'block';
            document.getElementById('email').style.borderColor = '#ff4d4f';
            return;
        }

        // Simulate API call
        errorMessage.style.display = 'none';
        document.getElementById('email').style.borderColor = '#ddd';

        alert('Password reset link has been sent to your email!');
        document.getElementById('email').value = '';

        window.location.href = 'otpverify.html';

    }

    // Add enter key support
    document.getElementById('email').addEventListener('keypress', function(e) {
        if (e.key === 'Enter') {
            handleSendLink();
        }
    });
</script>
</body>
</html>
