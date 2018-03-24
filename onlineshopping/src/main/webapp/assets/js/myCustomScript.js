$(function() {

	switch (menu) {

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
		$('#home').addClass('nav-item active');
		break;
	}
})