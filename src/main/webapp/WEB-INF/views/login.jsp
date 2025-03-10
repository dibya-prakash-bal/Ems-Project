<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Eduvance Sign In</title>
	<link rel="stylesheet" href="assets/css/styleslogin.css">
</head>
<body>
<div class="container">
	<div class="left-side">
		<img src="assets/img/svg/loginimage.svg" alt="Eduvance Illustration">
	</div>
	<div class="right-side">
		<h1>Sign in to EvoStaff</h1>
		<p class="tagline">Education Reimagined.</p>

		<form id="loginForm">
			<div class="form-group">
				<label for="email">Email</label>
				<input type="email" id="email" name="email" placeholder="Email">
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" id="password" name="password" placeholder="Password">
			</div>

			<div class="form-group remember-forgot">
				<label class="remember-me">
					<input type="checkbox" id="remember" name="remember">RememberMe
				</label>
				<a href="ForgetPass">Forgot Password?</a>
			</div>

			<button type="submit" class="sign-in-button">Sign in</button>
		</form>

		<div class="or-login-with">
			<hr>
			<span>Or login with</span>
			<hr>
		</div>

		<div class="social-login">
			<button class="google-button">
				<i class="fab fa-google"></i> Google
			</button>
		</div>
	</div>
</div>

<script src="assets/js/scriptlogin.js"></script>
<script src="https://kit.fontawesome.com/your-font-awesome-kit.js" crossorigin="anonymous"></script>
</body>
</html>
