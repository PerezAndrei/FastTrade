$(document).ready(function () {
    $('#uploadImage').on('click', function (e) {
        e.preventDefault();
        var files = document.getElementById('uploadFile').files;
        if (files.length > 0) {
            if (window.FormData !== undefined) {
                var data = new FormData();
                for (var x = 0; x < files.length; x++) {
                    data.append("file" + x, files[x]);
                }
                var url = "/Manage/UploadImage";
                $.ajax({
                    type: "POST",
                    beforeSend: startLoadingAnimation(),
                    url: url,
                    contentType: false,
                    processData: false,
                    data: data,
                    success: function (result) {
                        stopLoadingAnimation();
                        $('#uploadFile').attr('disabled',true);
                        $('#uploadImage').attr('disabled','disabled');
                        $('#statusUploading').html(result);
                    },
                    error: function (xhr, status, p3) {
                        alert(xhr.responseText);
                    }
                });
            } else {
                alert("Браузер не поддерживает загрузку файлов HTML5!");
            }
        }
    });

    function disabled()
    {
        $('#uploadFile').attr('disabled');
        $('#uploadImage').attr('disabled');
    }

    $('#uploadImageForEdit').click(function (e) {
        e.preventDefault;
        var files = document.getElementById('uploadFileForEdit').files;
        if (files.length > 0) {
            if (window.FormData !== undefined) {
                var data = new FormData();
                for (var x = 0; x < files.length; x++) {
                    data.append("file" + x, files[x]);
                }
                var adId = $('#uploadImageForEdit').data('id-ad');
                var url = "/Manage/UploadImageForEdit?AdId="+adId;
                $.ajax({
                    type: "POST",
                    beforeSend: startLoadingAnimation(),
                    url: url,
                    contentType: false,
                    processData: false,
                    data: data,
                    success: function (result) {
                        stopLoadingAnimation();
                        $('#imagesDelete').html(result);
                    },
                    error: function (xhr, status, p3) {
                        alert(xhr.responseText);
                    }
                });
            } else {
                alert("Браузер не поддерживает загрузку файлов HTML5!");
            }
        }
    })

})