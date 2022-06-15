
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>

	
<link rel="stylesheet" href="css/signup-style.css">
</head>
<body>

	<div id="container">
		<div class="signup">
			<form action="signupaction.jsp" method="post">

				<input type="text" name="name" placeholder="Enter Name" required>
				<input type="email" name="email" placeholder="Enter Email" required>
				<input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required> 
				<select name="securityQuestion" required>
					<option value="In what city were you born?">In what city
						were you born?</option>
					<option value="What high school did you attend?">What high
						school did you attend?</option>
					<option value="What was the make of your first car?">What
						was the make of your first car?</option>
					<option value="Where did you meet your spouse?">Where did
						you meet your spouse?</option>
					<option value="What high school did you attend?">What high
						school did you attend?</option>
					<option value="What is the name of your favorite pet?">What
						is the name of your favorite pet?</option>
				</select> 
				<input type="text" name="answer" placeholder="Enter Answer" required>
				<input type="password" name="password" placeholder="Enter Password" required>
				<input type="submit" value="signup">
			</form>

			<h2>
				<a href="login.jsp">Login</a>
			</h2>

		</div>

		<div class='whysign'>
		
		<%
		String msg=request.getParameter("msg");
		if("valid".equals(msg))
		{
		%>
		<h1>Successfully Registered!</h1>
		<% } %>
		
		<%
		if("invalid".equals(msg))
		{
		%>
			<h1>Some thing Went Wrong! Try Again !</h1>
		<% } %>

			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
		</div>


	</div>

</body>
</html>