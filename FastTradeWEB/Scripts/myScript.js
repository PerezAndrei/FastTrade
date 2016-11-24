
$(document).ready(function () {
    
    //фильтр по регионам
    $('#filter_region').change(function () {
        window.setTimeout(get_all_filters, 10);
    });
       
    //работа с меню kind

    $('#nav_kind').click(function (e) {
        e.preventDefault();
        var id = 0;
        $('#nav_kind label').each(function () {
            id++;
            var kind = $(this).attr('id',id);
        });
        window.setTimeout(newId_kind, 0);
        window.setTimeout(get_all_filters, 10);
    });

    function newId_kind() {
        $('#nav_kind').find('label[class *=active]').attr('id', 'filter_kind');
    };
    
    //работа с меню category

    $('#nav_category').click(function () {
        var id = 20;
        $('#nav_category label').each(function () {
            id++;
            var category = $(this).attr('id', id);
        });
        window.setTimeout(newId_category, 0);
        window.setTimeout(get_all_filters, 10);
    });

    function newId_category() {
        $('#nav_category').find('label[class *=active]').attr('id', 'filter_category');
    };

    //фильтр по тэгам
    $('#boxTags button').click(function () {
        //Добавляем данные по запросу тэга
        var tagId = $(this).data('tag-id');
        incrementCountReviewTag(tagId);
        var id = 40;
        $('#boxTags button').each(function () {
            id++;
            $(this).attr('id', id);
            if ($(this).hasClass('active'))
            {
                $(this).toggleClass('active');
            }
        })
        $(this).attr('id', 'filter_tag')
        $(this).toggleClass('active');
        window.setTimeout(get_all_filters, 5);
        var tagName = $(this).data('tag-name');
        $('#searchByTag').text(tagName);
    })

    // получение фильтров

    function get_all_filters() {
        var category = $('#filter_category').data('category-id');
        var kind = $('#filter_kind').data('kind-id');
        //var region = $('#filter_region').selectpicker('val');
        var region = $('#filter_region option:selected').data('id-region');
        var tag = $('#filter_tag').data('tag-id');
        var url = "/User/GetAds";

        $.get(url, { categoryId: category, kindId: kind, regionID: region, tagId: tag }, onAjaxSucces);

        startLoadingAnimation();

        function onAjaxSucces (data) {
                stopLoadingAnimation();
                $('#content').html(data);
        }
    };

    function startLoadingAnimation() // - функция запуска анимации
    {
        // найдем элемент с изображением загрузки и уберем невидимость:
        var imgObj = $("#loadImg");
        imgObj.show();
 
        // вычислим в какие координаты нужно поместить изображение загрузки,
        // чтобы оно оказалось в серидине страницы:
        var centerY = $(window).scrollTop() + ($(window).height() + imgObj.height())/2;
        var centerX = $(window).scrollLeft() + ($(window).width() + imgObj.width())/2;
 
        // поменяем координаты изображения на нужные:
        imgObj.offset({ top: centerY, left: centerX });
    }
 
    function stopLoadingAnimation() // - функция останавливающая анимацию
    {
        $("#loadImg").hide();
    }

    // Отмена редактировния личных данных
    $('#CancelEditPersonalData').click(function (e) {
        e.preventDefault();
        var url = "/Manage/PersonalData";
        $.get(url, cancelEditPD);
        startLoadingAnimation();
        function cancelEditPD(data) {
            stopLoadingAnimation();
            $('#manageContent').html(data);
        }
    });

    // Добавление тэга
    $('#addTag').click(function (e) {
        e.preventDefault();
        var elems = $('.TagItem')
        var lastElem = elems.last()
        var i = parseInt(lastElem.attr('data')) + 1
        var k = elems.length;
        var htmlTag = "<div class='TagItem row' id='item' data='"+i+"'><div class='col-xs-4'><p>" +
                "<input class='form-control ui-autocomplete-input' data='"+i+"' data-autocomplete-source='/Manage/AutocompleteSearch' id='Tags_"+i+"_TagName' name='Tags["+k+"].TagName' type='text' placeholder='Имя тэга' autocomplete='off' value>" +
                "<span class='field-validation-valid text-danger' data-valmsg-for='Tags[" + k + "].TagName' data-valmsg-replace='true'></span>" +
                "</p></div><div class='col-xs-4'><button class='btn btn-sm btn-danger' id='delTag' data='"+i+"'>Удалить</button></div></div>"
        $('.TagList').append(htmlTag);
        $(function () {
            $("[data-autocomplete-source]").each(function () {
                var target = $(this);
                target.autocomplete({ source: target.attr("data-autocomplete-source") });
            });
        });
    })

    //Удаление тэга
    $('.TagList').on("click", ".btn-danger", function (e) {
        e.preventDefault();
        var i = $(this).attr('data')
        $("div .TagItem[data=" + i + "]").remove()

        var elems = $("input",$('.TagList'))
        var k = 0;
        elems.each(function (index, elem) {
            var nameValue = $(elem).attr('name');
            $(elem).removeAttr('name');
            $(elem).attr('name', 'Tags['+k+'].TagName')
            var nameValue = $(elem).attr('name');
            k++;
        });
    })

    function incrementCountReviewTag(tagId)
    {
        var url = "/User/IncrementCountReviewTag";
        $.get(url, { TagId: tagId });
    }

    $('#refreshTags').click(function (e) {
        e.preventDefault();
        var url = "/User/RefreshTags";
        $.get(url, onAjaxSuccesTags);

        startLoadingAnimation();

        function onAjaxSuccesTags(data) {
            stopLoadingAnimation();
            $('#spoilerTags').html(data);
        }
    })

    //Autocomplete
    $(function () {
        $("[data-autocomplete-source]").each(function () {
            var target = $(this);
            target.autocomplete({ source: target.attr("data-autocomplete-source") });
        });
    });

    // Статистика по тэгам
    $('#tagForStatistics button').click(function (e) {
        e.preventDefault();
        //Добавляем данные по запросу тэга
        var tagId = $(this).data('tag-id');
        $(this).toggleClass('active');
        statisticsForTag(tagId);
    })

    function statisticsForTag(tagId) {
        
        var url = "/User/StatisticsForTag";

        $.get(url, { TagId: tagId }, onAjaxSucces);

        startLoadingAnimation();

        function onAjaxSucces(data) {
            stopLoadingAnimation();
            $('#statisticsForTag').html(data);
        }
    };
});
