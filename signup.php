<?php
  include 'header.php';
?>
<!DOCTYPE html>
<html>s
<title>Signup</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"  type="text/css" href="signup.css">
<link href='https://fonts.googleapis.com/css?family=Quicksand:400,700' rel='stylesheet'>
<head>
<style>
body{

  font-family: 'Quicksand', sans-serif;
}
</style>

  </head>
<body>
<div class="w3-container">
  <h1 style="font-family: 'Quicksand', sans-serif;">Sign Up</h1><br>
  <div class="w3-panel w3-card-4" style="background: lightblue;font-family: 'Quicksand', sans-serif;"><br>
    <form method="post" action="includes/signup_inc.php">
    	<span style="font-size: 20px;">Username :</span><input type="text" name="username" placeholder="Username" required onfocus="this.value=''" autofocus="autofocus"
       autocomplete="off"><br>
    	<span style="font-size: 20px;">Password :</span><input type="password" id="P1" name="password" placeholder="Password" required onfocus="this.value=''" autocomplete="off"><br>
    	<span style="font-size: 20px;">Confirm Password :</span><input type="password" id="P2" name="re-type_password" placeholder="Confirm Password" required onblur="check()" onfocus="this.value=''" autocomplete="off"><br>
    	<span style="font-size: 20px;">Email :</span><input type="email" name="email" placeholder="Email" required onfocus="this.value=''" autocomplete="off">
      <br><br>
    	<button name="signupbtn">Sign Up</button><br>
    </form>
  </div>
</div>
<script type="text/javascript">
	function check() {
		var P1=document.getElementById('P1').value;
		var P2=document.getElementById('P2').value;
		if (P1!=P2) {
			alert("please check the passwords");
		}
	}
</script>
</body>
</html>
