<!DOCTYPE html>
<html>
<title>Signup</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"  type="text/css" href="profile.css">
<link rel="stylesheet" type="text/css" href="header.css">
<link href='https://fonts.googleapis.com/css?family=Bubblegum Sans' rel='stylesheet'>
<body>
	<header>
		<h1 style="font-size:50px; color:white;font-style: normal;">Ground Water Gaurdian</h1>
		<div>
  
  <a href="index.php" style="text-decoration: none;float: right;color: white;padding-right: 3px;font-size: 30px;font-weight: bolder;margin-top: 2.5%;margin-right: 1%;">&#8592 Home</a>
</div>
	

</header>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <script>
    $('.menu-toggle').click(function(){
      $('.site-nav').toggleClass('site-nav--open',500);
      $(this).toggleClass("open");
    });
  </script>
		<h2 align="center"><b>INDUSTRY DETAILS</b></h2><br>
		<table>
			<tr>
	<?php
		include 'includes/db.php';
		$sql="SELECT * FROM users order by level_fall desc";
		$result=mysqli_query($conn,$sql);
		?>
			<table border=2 cellpadding="10" style="display: table;margin: 0 auto;">
				<tr>
					<th style="font-size: 20px;color:white;">Industry Id</th>
					<th style="font-size: 20px;color:white">Industry Name</th>
					<th style="font-size: 20px;color:white">Annual Water Draft</th>
					<th style="font-size: 20px;color:white">Pre Monsoon Water Level</th>
					<th style="font-size: 20px;color:white">Post Monsoon Water Level</th>
					<th style="font-size: 20px;color:white">Rise in Water Level</th>
					<th style="font-size: 20px;color:white">Fall in Water Level</th>
				</tr>
			<?php while ($row=mysqli_fetch_assoc($result)){?>
				<tr>
					<td style="font-size: 15px;color:white"><?php echo $row['id'];?></td>
					<td style="font-size: 15px;color:white"><?php echo $row['username'];?></td>
					<td style="font-size: 15px;color:white"><?php echo $row['draft'];?></td>
					<td style="font-size: 15px;color:white"><?php echo $row['level_pre_mon'];?></td>
					<td style="font-size: 15px;color:white"><?php echo $row['level_post_mon'];?></td>
					<td style="font-size: 15px;color:white"><?php echo $row['leve_rise'];?></td>
					<td style="font-size: 15px;color:white"><?php echo $row['level_fall'];?></td>
				</tr>
				<?php } ?>
			</table>
			<br><br>
		
			<br><br>

			<?php
		include 'includes/db.php';
		$sql="SELECT * FROM users order by draft desc ";
		$result=mysqli_query($conn,$sql);
		?>
				<h2 align="center"><b>HIGH GROUND WATER CONSUMING INDUSTRIES</b></h2><br>
				<table border=2 cellpadding="10" style="display: table;margin: 0 auto;">
					<tr>
						<th style="font-size: 20px;color:white">Industry Id</th>
						<th style="font-size: 20px;color:white">Industry Name</th>
						<th style="font-size: 20px;color:white">Annual Water Draft</th>
					</tr>
					<?php
						while ($row=mysqli_fetch_assoc($result)) {
							if($row['draft']>=7500){?>
							<tr>
								<td style="font-size: 15px;color:white"><?php echo $row['id'];?></td>
								<td style="font-size: 15px;color:white"><?php echo $row['username'];?></td>
								<td style="font-size: 15px;color:white"><?php echo $row['draft'];?></td>
							</tr>
					<?php	}


				}?>
					
				</table>
		<br><br>
		<?ph
</body>
</html>