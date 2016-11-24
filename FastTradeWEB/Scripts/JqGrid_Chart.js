$(document).ready(function () {
    if($('#tagid'))
    {
        var tagId = $('#tagId').data('tagid');

        $("#jqg").jqGrid({
            url: "GetReviewByTag?TagId=" + tagId,
            datatype: "json",
            colNames: ['№ п.п.', 'Год', 'Месяц', 'День', 'День недели', 'Час', 'Мин.', 'Сек.', 'Мсек.', 'Кол.'],
            colModel: [
            { name: 'Number', index: 'Number', width: 100, align: 'center', sortable: false, sorttype: 'int' },
            { name: 'Year', index: 'Year', width: 100, stype: 'text', sortable: false, align: 'center' },
            { name: 'MonthName', index: 'MonthName', width: 100, stype: 'text', sortable: false, align: 'center' },
            { name: 'Day', index: 'Day', width: 100, stype: 'text', sortable: false, align: 'center' },
            { name: 'DayOfWeek', index: 'DayOfWeek', width: 100, stype: 'text', sortable: false, align: 'center' },
            { name: 'Hour', index: 'Hour', width: 100, stype: 'text', sortable: false, align: 'center' },
            { name: 'Minute', index: 'Minute', width: 100, stype: 'text', sortable: false, align: 'center' },
            { name: 'Sec', index: 'NumberSec', width: 100, stype: 'text', sortable: false, align: 'center' },
            { name: 'Msec', index: 'Msec', width: 100, stype: 'text', sortable: false, align: 'center' },
            { name: 'Count', index: 'Count', width: 100, stype: 'int', sortable: false, align: 'center' },
            ],
            scroll: true,
            rowNum: 1000000, // число отображаемых строк
            height: "400",
            loadonce: true, // загрузка только один раз
            sortname: 'Number', // сортировка по умолчанию по столбцу Id
            sortorder: "asc", // порядок сортировки
            grouping: true,
            groupingView: {
                groupField: ['Year', 'MonthName', 'Day', 'Hour'],
                groupText: ['<b>{0} год - Запросов: {1}</b>', '<b>{0} - Запросов: {1}</b>', '<b>{0} число - Запросов: {1}</b>', '<b>Время(час): {0} - Запросов: {1}</b>'],
                groupCollapse: true
            },
            caption: "Подробная информация времени запроса"
        });

        };
        
});