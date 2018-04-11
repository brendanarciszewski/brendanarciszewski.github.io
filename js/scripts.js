$(document).ready(function () {
	$("a.show-hidden").on("click", function () {
		if ($(this).next().hasClass("hide")) {
			$(this).next().removeClass("hide");
		} else {
			$(this).next().addClass("hide");
		}
	});
});