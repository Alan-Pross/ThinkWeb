!$(document).ready(function () {
            var ready = 0;//页面下标数
            var numPage = 2;//每个页面的显示数量
            var allPage = Math.ceil($("#secondPage p").size() / numPage);//总页面数
            $("#allPage").text(function (i, origText) {
                return allPage;
            });
            $("#currentPage").text(function (i, origText) {
                return 1;
            });
            $("#secondPage p").slice(ready + numPage).hide();
            $("#up").click(function () {
                if (ready > 0) {
                    ready = ready - numPage;
                    $("#secondPage p").slice(ready, ready + numPage).show();
                    $("#secondPage p").slice(0, ready).hide();
                    $("#secondPage p").slice(ready + numPage).hide();
                    if ($("#currentPage").text() > 0) {
                        $("#currentPage").text(function (i, origText) {
                            return parseInt(origText) - 1;
                        });
                    }
                }
            });
            $("#down").click(function () {
                if ((ready < $("#secondPage p").size() - numPage)) {
                    ready = ready + numPage;
                    $("#secondPage p").slice(ready, ready + numPage).show();
                    $("#secondPage p").slice(0, ready).hide();
                    $("#secondPage p").slice(ready + numPage).hide();
                    if ($("#currentPage").text() < allPage + 1) {
                        $("#currentPage").text(function (i, origText) {
                            return parseInt(origText) + 1;
                        });
                    }
                }
            });
            $("#begin").click(function () {
                $("#secondPage p").slice(0, numPage).show();
                $("#secondPage p").slice(numPage).hide();
                ready = 0;
                $("#currentPage").text(function (i, origText) {
                    return 1;
                });
            });
            $("#end").click(function () {
                var end = $("#secondPage p").size() % numPage;
                $("#secondPage p").slice(-end).show();
                $("#secondPage p").slice(0, -end).hide();
                ready = $("#secondPage p").size() - end;
                $("#currentPage").text(function (i, origText) {
                    return allPage;
                });
            });
            $("#submit").click(function () {
                var number=parseInt($("#nPage").val());
                if(number>0&&number<allPage+1){
                $("#secondPage p").slice((number-1)*numPage,number*numPage).show();
                $("#secondPage p").slice(0, (number-1)*numPage).hide();
                $("#secondPage p").slice(number*numPage).hide();
                ready = number*numPage;
                $("#currentPage").text(function (i, origText) {
                    return number;
                });
            }
            });
        });