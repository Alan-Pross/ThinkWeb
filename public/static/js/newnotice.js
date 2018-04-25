  !$(document).ready(function () {
            var ready = 0;
            var everypage = 5;
            $("#news").click(function () {
                $("#firstPage").show();
                $("#secondPage").hide();
            });
            $("#notice").click(function () {
                $("#firstPage").hide();
                $("#secondPage").show();
            });
        });