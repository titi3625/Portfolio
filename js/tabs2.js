$(function() {
	$('#menu1 ul').each(function() {
		
		// récupère la liste des onglets
		var $active, $content, $links = $(this).find('a');
		console.log($active);
		// Si la barre d'adresse contient le nom d'un des onglets on utilise celui-ci
		// sinon on utilise le premier onglet de la liste
		$active = $($links.filter('[href="'+window.location.hash+'"]')[0] || $links[0]);
		$active.addClass('active2');
		$content = $($active.attr('href'));

		// Cache les contenus des onglets inactifs
		$links.not($active).each(function() {
			$($(this).attr('href')).hide();
		});

		// recupère l'évènement du clic
		$(this).on('click', 'a', function(e) {
			// désactive les anciens onglets
			$active.removeClass('active2');
			$content.hide();

			// met à jour les variables avec les nouveaux liens et contenus
			$active = $(this);
			$content = $($(this).attr('href'));

			// active l'onglet
			$active.addClass('active2');
			$content.show();

			// Prevent the anchor's default click action (???)
			//e.preventDefault();
		});
	});
});