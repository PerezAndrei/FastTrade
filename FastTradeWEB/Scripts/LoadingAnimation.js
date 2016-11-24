function startLoadingAnimation() // - функция запуска анимации
{
    // найдем элемент с изображением загрузки и уберем невидимость:
    var imgObj = $("#loadImg");
    imgObj.show();

    // вычислим в какие координаты нужно поместить изображение загрузки,
    // чтобы оно оказалось в серидине страницы:
    var centerY = $(window).scrollTop() + ($(window).height() + imgObj.height()) / 2;
    var centerX = $(window).scrollLeft() + ($(window).width() + imgObj.width()) / 2;

    // поменяем координаты изображения на нужные:
    imgObj.offset({ top: centerY, left: centerX });
}

function stopLoadingAnimation() // - функция останавливающая анимацию
{
    $("#loadImg").hide();
}