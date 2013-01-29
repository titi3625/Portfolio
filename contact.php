<!doctype html>
<html lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Contact</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<?php include("includes/top_bar.php"); ?>

		<div class="corps">
			<div class="menu">
				<ul class="tabs">
					<li><a href="#contact" class="lienMenu">Contact</a></li>
				</ul>
			</div>
			<div class="content">
				<div id="contact">
					<p align="center">Vous pouvez me contacter grâce à ce formulaire : </p>
					<form class="contact" action="envoiMail.php" method="post">
						<table>
							<tr>
								<td><label for="nom">Nom : </label></td>
								<td><input type="text" name="nom" id="nom" pattern="[A-Za-Z]{2,20}" required></td>
								<div class="erreurNom"></div>
							</tr>
							<tr>
								<td><label for="mail">Email : </label></td>
								<td><input type="email" name="mail" id="mail" required></td>
								<div class="erreurMail"></div>
							</tr>
							<tr>
								<td><label for="message">Message : </label></td>
								<td><textarea name="message" id="message" cols="30" rows="10" pattern="{1,1000}"required></textarea></td>
								<div class="erreurMess"></div>
							</tr>
							<tr>
								
								<td align="center" colspan="2"><input type="submit" value="Envoyer" id="envoyer"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>

		<?php include("includes/footer.php"); ?>
	</div>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="js/tabs.js"></script>
</body>
</html>