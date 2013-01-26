<!doctype html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<title>CV</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<?php include("includes/top_bar.php"); ?>

		<div class="corps">
			<div class="menu">
				<ul class="tabs">
					<li><a href="#cv" class="lienMenu">CV</a></li>
					<li><a href="#lm" class="lienMenu">Lettre de motivation</a></li>
				</ul>
			</div>
			<div class="content">
				<div id="cv">
					<p>
						Thibault Campos <br>
						Hameau de Villeflond <br>
						77970 Bannost-Villegagnon <br>
						06.59.58.02.23 <br>
						<a href="mailto:campos.thibault@gmail.com">campos.thibault@gmail.com</a> <br>
						20 ans
					</p>
					<br>
					<p align="center" style="font-size: 18px; font-weight: bold;">Etudiant en 2ème année de BTS SIO Option développement</p>
					
					<table class="competence">
						<caption>Compétences informatiques</caption>
						<tr>
							<td>Langage de programmation</td>
							<td>Java, C#, PHP, Javascript, jQuery, Ajax, HTML-CSS, Python</td>
						</tr>
						<tr>
							<td>Outils de developpements</td>
							<td>Eclipse, Netbeans, Visual C# (2008, 2010), Notepad++, Sublime Text 2</td>
						</tr>
						<tr>
							<td>Système d'exploitation</td>
							<td>Windows (2000, xp, Vista, 7), Linux (Ubuntu, Debian)</td>
						</tr>
						<tr>
							<td>Bureautique</td>
							<td>Suite Office, Works, OpenOffice, LibreOffice, ...</td>
						</tr>
						<tr>
							<td>Matériel</td>
							<td>Assemblage de PC, Maintenance logiciel, Montage de réseaux</td>
						</tr>
						
						<tr>
							<td>Divers</td>
							<td>Configuration de petits réseaux</td>
						</tr>
					</table>
					
					<br>
					<br>

					<table class="competence">
						<caption>Formation</caption>
						<tr>
							<td>2012-2013</td>
							<td>Deuxième année de BTS SIO <br>Lycée René Descartes à Champs-sur-Marne</td>
						</tr>
						<tr>
							<td>2011-2012</td>
							<td>Première année de BTS SIO <br>Lycée René Descartes à Champs-sur-Marne</td>
						</tr>
						<tr>
							<td>2010-2011</td>
							<td>Bac Technologique STG (option Comptabilité et Finances d'Entreprises) Mention Assez Bien <br>Lycée Thibaut de Champagne à Provins</td>
						</tr>
					</table>

					<br>
					<br>

					<p class="titrecv">Langues étrangères</p>
					<p align="center">Anglais : Niveau Moyen <br>Espagnol : Notions</p>

					<br>
					<br>

					<p class="titrecv">Activités diverses</p>
					<p align= center>Informatique (matériel, logiciel, réseaux, jeux-vidéo) <br>Cinéma <br>Lecture (Science-fiction, Fantastique)</p>
					
				</div>

				<div id="lm">
					Salut je m'appelle thibault et je suis un monstre en developpement web
				</div>
			</div>
		</div>

		<?php include("includes/footer.php"); ?>
	</div>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="js/tabs.js"></script>
</body>
</html>