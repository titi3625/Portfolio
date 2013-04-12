$(function() {
	// fonction qui permet la redirection vers la categorie quand on clique sur celle ci dans un projet
	$(".categorie a").click(function() {
		var lien = $(this).attr('href');
		window.location.hash = lien;
		location.reload();
	});

});