$(function() {

	switch (menu) {

	case 'Home':
		$('#home').addClass('nav-item active');
		break;
	case 'Blog':
		$('#blog').addClass('nav-item active');
		break;
	case 'Shop':
		$('#shop').addClass('nav-item active');
		break;
	case 'Services':
		$('#services').addClass('nav-item active');
		break;
	case 'Contact Us':
		$('#contact').addClass('nav-item active');
		break;
	default:
		$('#shop').addClass('nav-item active');
		$('#a_'+menu).addClass('active');
		break;
	}
})