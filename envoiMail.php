<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php

if(isset($_POST) && isset($_POST['nom']) && isset($_POST['mail']) && isset($_POST['message'])) {
	extract($_POST);
	
	if(!empty($nom) && !empty($mail) && !empty($message)) {
		if (!preg_match("#^[a-z0-9._-]+@(hotmail|live|msn).[a-z]{2,4}$#", $mail))
		{
			$passage_ligne = "\r\n";
		}
		else
		{
			$passage_ligne = "\n";
		}

		$message = str_replace("\'", "'", $message);
		$destinataire = "campos.thibault@gmail.com";
		$sujet = "Formulaire de contact";

		$msg = "Nom : ".$nom.$passage_ligne."Email : ".$mail.$passage_ligne."Message : ".$message;

		//=====Création du header de l'e-mail
		// $header = "From: \"".$nom."\"<".$mail.">".$passage_ligne;
		// $header .= "Reply-to: \"".$nom."\"<".$mail.">".$passage_ligne;
		// $header .= "MIME-Version: 1.0".$passage_ligne;
		// $header .= "Content-Type: multipart/alternative;".$passage_ligne." boundary=\"$boundary\"".$passage_ligne;
		//==========

		mail($destinataire,$sujet,$msg,$header);

		header('location: contact.php');
	}
	else {
		echo "Vous n'avez pas rempli tout les champs";
	}
}

?>