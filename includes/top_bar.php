<?php
	$path = $_SERVER['PHP_SELF']; // $path = /home/httpd/html/index.php
	$file = basename ($path); // recupère seulement le nom de la page courante

	switch ($file) {
		case 'index.php':
			echo ("<div class=\"top_bar\">
						<p class=\"titre\"><a href=\"index.php\">Mon Portfolio</a></p>
						<ul class=\"menu_top\">
							<li><a href=\"index.php\"  class=\"active1\">Accueil</a></li>
							<li><a href=\"cv.php\">CV</a></li> 
							<li><a href=\"portfolio.php\" >Portfolio</a></li>
							<li><a href=\"contact.php\" >Contact</a></li>
						</ul>	
					</div>");
			break;

		case 'cv.php':
			echo ("<div class=\"top_bar\">
						<p class=\"titre\"><a href=\"index.php\">Mon Portfolio</a></p>
						<ul class=\"menu_top\">
							<li><a href=\"index.php\">Accueil</a></li>
							<li><a href=\"cv.php\" class=\"active1\">CV</a></li> 
							<li><a href=\"portfolio.php\" >Portfolio</a></li>
							<li><a href=\"contact.php\" >Contact</a></li>
						</ul>	
					</div>");
			break;

		case 'portfolio.php':
			echo ("<div class=\"top_bar\">
						<p class=\"titre\"><a href=\"index.php\">Mon Portfolio</a></p>
						<ul class=\"menu_top\">
							<li><a href=\"index.php\">Accueil</a></li>
							<li><a href=\"cv.php\" >CV</a></li> 
							<li><a href=\"portfolio.php\" class=\"active1\">Portfolio</a></li>
							<li><a href=\"contact.php\" >Contact</a></li>
						</ul>	
					</div>");
			break;

		case 'contact.php':
			echo ("<div class=\"top_bar\">
						<p class=\"titre\"><a href=\"index.php\">Mon Portfolio</a></p>
						<ul class=\"menu_top\">
							<li><a href=\"index.php\">Accueil</a></li>
							<li><a href=\"cv.php\" >CV</a></li> 
							<li><a href=\"portfolio.php\">Portfolio</a></li>
							<li><a href=\"contact.php\" class=\"active1\">Contact</a></li>
						</ul>	
					</div>");
			break;
		default:
			alert("Le menu ne s'est pas chargé correctement");
			break;
	}
?>
