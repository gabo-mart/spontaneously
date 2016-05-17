$(document).ready( function() {
	console.log('document');
	$(window).scroll(function(){
		console.log('window');
    if ($(this).scrollTop() > 50) {
        $('#row').slideDown('slow');
    } else {
        $('#row').slideUp('slow');
    }
	});
});

