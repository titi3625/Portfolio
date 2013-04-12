<!doctype html>
<html lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Portfolio</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/styleProjet.css">
	<link rel="stylesheet" href="css/lightbox.css">
</head>
<body>
	<div class="container">

		<?php
			include('includes/top_bar.php');
			include('includes/connexion.php');
		?>

		<div class="corps">
			<div class="menu">
				<ul class="tabs">
					<li id="menu1">
						<a href="#competences" class="active">Situations obligatoires</a>
						<ul>
							<li><a href="referentiel.php?page=1">Production d'une solution logicielle et d'infrastructure</a></li>
							<li><a href="referentiel.php?page=2">Prise en charge d'incidents et de demandes d'assistance</a></li>
							<li><a href="referentiel.php?page=3">Elaboration de documents relatifs à la production</a></li>
							<li><a href="referentiel.php?page=4">Mise en place d'un dispositif de veille technologique</a></li>
						</ul>
					</li>
				</ul>
			</div>

			<div class="content">
			<?php
			if(isset($_GET['page'])) {
				switch ($_GET['page']) {
					case '1':
						include('includes/competence/competence1.php');
						break;
					case '2':
						include('includes/competence/competence2.php');
						break;
					case '3':
						include('includes/competence/competence3.php');
						break;
					case '4':
						include('includes/competence/competence4.php');
						break;
					default:
						break;
				}
			}
			else {
				echo "Cette page regroupe tout ce qui concerne les activités du référentiel du BTS SIO.";
			}
			?>	
			</div>
		</div>
		<?php include("includes/footer.php"); ?>
	</div>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<!-- <script src="js/tabs.js"></script> -->
	<script src="js/lightbox.js"></script>
	<!-- <script src="js/tabs2.js"></script> -->
</body>
</html>