$(function() {
	$(".categorie a").click(function() {
		var lien = $(this).attr('href');
		window.location.hash = lien;
		location.reload();
	});
});