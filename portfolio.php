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
					<li><a href="#tous">Tout les projets</a></li>
					<li><a href="#java">Java</a></li>
					<li><a href="#csharp">C#.NET</a></li>
					<li><a href="#web">Web</a></li>
				</ul>
			</div>

			<div id="tous">
				<?php
				$reponse = $bdd->query('SELECT id_projet, nom_projet, description_projet, image_projet, duree_projet, situation_projet, activite_projet, competences_projet FROM projet NATURAL JOIN posseder NATURAL JOIN categorie GROUP BY id_projet;');
				while($ligne = $reponse->fetch())
				{
					$reponseCat = $bdd->query('SELECT nom_categorie, balise_categorie FROM categorie NATURAL JOIN posseder WHERE posseder.id_projet = "'.$ligne["id_projet"].'";');
				?>
				<div class="content">
					<div class="projet">
						<p class="nom_projet"><?php echo $ligne['nom_projet']; ?><a href=""></a>
							<?php 
							while($ligneCat = $reponseCat->fetch())
							{
								echo '<span class="categorie">';
								echo '<a href="#'.$ligneCat['balise_categorie'].'" onclick="clickCategorie();">'.$ligneCat['nom_categorie'].'</a>';
								echo '</span>';
							}
							?>
						</p> 
						<hr> <!-- Barre de séparation avec le titre -->
						<p class="contenu_projet">
							<p align="center">
								<a href="<?php echo $ligne['image_projet']; ?>" rel="lightbox" title="Projet GSB Admin">
									<img src="<?php echo $ligne['image_projet']; ?>" alt="Image projet" width="600px">
								</a>
							</p>

							<p align="justify"><?php echo $ligne['description_projet']; ?></p>

							<p>Durée : <?php echo $ligne['duree_projet']; ?> semaine(s)</p>
							
							<p>
								Situation(s) obligatoire(s) : <br>
								<?php echo $ligne['situation_projet']; ?>
							</p>

							<p>
								Activité du référentiel : <br>
								<?php echo $ligne['activite_projet']; ?>
							</p>

							<p>
								Compétences du référentiel : <br>
								<?php echo $ligne['competences_projet']; ?>
							</p>
						</p>
					</div>
				</div>
				
				<?php 
				} 
				$reponse->closeCursor(); 
				?>
			</div>

			<div id="java">
				<?php
					$reponse = $bdd->query('SELECT id_projet, nom_projet, description_projet, image_projet, duree_projet, situation_projet, activite_projet, competences_projet FROM projet NATURAL JOIN posseder NATURAL JOIN categorie WHERE nom_categorie = "Java";');
					while($ligne = $reponse->fetch())
					{
						$reponseCat = $bdd->query('SELECT nom_categorie, balise_categorie FROM categorie NATURAL JOIN posseder WHERE posseder.id_projet = "'.$ligne["id_projet"].'";');
				?>
				<div class="content">
					<div class="projet">
						<p class="nom_projet"><?php echo $ligne['nom_projet']; ?><a href=""></a>
							<?php 
							while($ligneCat = $reponseCat->fetch())
							{
								echo '<span class="categorie">';
								echo '<a href="#'.$ligneCat['balise_categorie'].'" onclick="clickCategorie();">'.$ligneCat['nom_categorie'].'</a>';
								echo '</span>';
							}
							?>
						</p> 
						<hr> <!-- Barre de séparation avec le titre -->
						<p class="contenu_projet">
							<p align="center">
								<a href="<?php echo $ligne['image_projet']; ?>" rel="lightbox" title="Projet GSB Admin">
									<img src="<?php echo $ligne['image_projet']; ?>" alt="Image projet" width="600px">
								</a>
							</p>

							<p align="justify"><?php echo $ligne['description_projet']; ?></p>

							<p>Durée : <?php echo $ligne['duree_projet']; ?> semaine(s)</p>
							
							<p>
								Situation(s) obligatoire(s) : <br>
								<?php echo $ligne['situation_projet']; ?>
							</p>

							<p>
								Activité du référentiel : <br>
								<?php echo $ligne['activite_projet']; ?>
							</p>

							<p>
								Compétences du référentiel : <br>
								<?php echo $ligne['competences_projet']; ?>
							</p>
						</p>
					</div>
				</div>
				
				<?php 
				} 
				$reponse->closeCursor(); 
				?>
			</div>

			<div id="csharp">
				<?php
					$reponse = $bdd->query('SELECT id_projet, nom_projet, description_projet, image_projet, duree_projet, situation_projet, activite_projet, competences_projet FROM projet NATURAL JOIN posseder NATURAL JOIN categorie WHERE nom_categorie = "C#.NET";');
					while($ligne = $reponse->fetch())
					{
						$reponseCat = $bdd->query('SELECT nom_categorie, balise_categorie FROM categorie NATURAL JOIN posseder WHERE posseder.id_projet = "'.$ligne["id_projet"].'";');
				?>
				<div class="content">
					<div class="projet">
						<p class="nom_projet"><?php echo $ligne['nom_projet']; ?><a href=""></a>
							<?php 
							while($ligneCat = $reponseCat->fetch())
							{
								echo '<span class="categorie">';
								echo '<a href="#'.$ligneCat['balise_categorie'].'">'.$ligneCat['nom_categorie'].'</a>';
								echo '</span>';
							}
							?>
						</p> 
						<hr> <!-- Barre de séparation avec le titre -->
						<p class="contenu_projet">
							<p align="center">
								<a href="<?php echo $ligne['image_projet']; ?>" rel="lightbox" title="Projet GSB Admin">
									<img src="<?php echo $ligne['image_projet']; ?>" alt="Image projet" width="600px">
								</a>
							</p>

							<p align="justify"><?php echo $ligne['description_projet']; ?></p>

							<p>Durée : <?php echo $ligne['duree_projet']; ?> semaine(s)</p>
							
							<p>
								Situation(s) obligatoire(s) : <br>
								<?php echo $ligne['situation_projet']; ?>
							</p>

							<p>
								Activité du référentiel : <br>
								<?php echo $ligne['activite_projet']; ?>
							</p>

							<p>
								Compétences du référentiel : <br>
								<?php echo $ligne['competences_projet']; ?>
							</p>
						</p>
					</div>
				</div>
				
				<?php 
				} 
				$reponse->closeCursor(); 
				?>
			</div>

			<div id="web">
				<?php
					$reponse = $bdd->query('SELECT id_projet, nom_projet, description_projet, image_projet, duree_projet, situation_projet, activite_projet, competences_projet FROM projet NATURAL JOIN posseder NATURAL JOIN categorie WHERE nom_categorie = "Web";');
					while($ligne = $reponse->fetch())
					{
						$reponseCat = $bdd->query('SELECT nom_categorie, balise_categorie FROM categorie NATURAL JOIN posseder WHERE posseder.id_projet = "'.$ligne["id_projet"].'";');
				?>
				<div class="content">
					<div class="projet">
						<p class="nom_projet"><?php echo $ligne['nom_projet']; ?><a href=""></a>
							<?php 
							while($ligneCat = $reponseCat->fetch())
							{
								echo '<span class="categorie">';
								echo '<a href="#'.$ligneCat['balise_categorie'].'" onclick="clickCategorie();">'.$ligneCat['nom_categorie'].'</a>';
								echo '</span>';
							}
							?>
						</p> 
						<hr> <!-- Barre de séparation avec le titre -->
						<p class="contenu_projet">
							<p align="center">
								<a href="<?php echo $ligne['image_projet']; ?>" rel="lightbox" title="Projet GSB Admin">
									<img src="<?php echo $ligne['image_projet']; ?>" alt="Image projet" width="600px">
								</a>
							</p>

							<p align="justify"><?php echo $ligne['description_projet']; ?></p>

							<p>Durée : <?php echo $ligne['duree_projet']; ?> semaine(s)</p>
							
							<p>
								Situation(s) obligatoire(s) : <br>
								<?php echo $ligne['situation_projet']; ?>
							</p>

							<p>
								Activité du référentiel : <br>
								<?php echo $ligne['activite_projet']; ?>
							</p>

							<p>
								Compétences du référentiel : <br>
								<?php echo $ligne['competences_projet']; ?>
							</p>
						</p>
					</div>
				</div>
				
				<?php 
				} 
				$reponse->closeCursor(); 
				?>
			</div>

			

		</div>
		<?php include("includes/footer.php"); ?>
	</div>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="js/tabs.js"></script>
	<script src="js/lightbox.js"></script>
	<script src="js/categorie.js"></script>
</body>
</html>