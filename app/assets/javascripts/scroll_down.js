// Ссылки в nav
$(document).on('turbolinks:load', function(){
	$("#scroll_down_id").on("click","a", function (event) {
		// Отменяем стандартную обработку нажатия по ссылке
		event.preventDefault();

		// Забираем идентификатор бока с атрибута href
		var id  = $(this).attr('href'),

		// Узнаем высоту от начала страницы до блока на который ссылается якорь
			top = $(id).offset().top;

		// Анимируем переход на расстояние - top за 1000 мс
		$('body,html').animate({scrollTop: top}, 600);
	});
});

// Кнопка "ОСТАВИТЬ ЗАЯВКУ" в разделе "О Компании""
$(document).on('turbolinks:load', function(){
	$("#scroll_down_button").on("click","a", function (event) {
		// Отменяем стандартную обработку нажатия по ссылке
		event.preventDefault();

		// Забираем идентификатор бока с атрибута href
		var id  = $(this).attr('href'),

		// Узнаем высоту от начала страницы до блока на который ссылается якорь
			top = $(id).offset().top;

		// Анимируем переход на расстояние - top за 500 мс
		$('body,html').animate({scrollTop: top}, 600);
	});
});
