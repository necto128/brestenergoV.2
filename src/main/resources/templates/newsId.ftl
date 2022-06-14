<!Doctype html>
<html lang="en" style="height: 100%;">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="keywords"
          content="Брестэнерго, электроэнергия, теплоэнергия, электросети, теплосети, электрические сети, тепловые сети, энергия, аскуэ">
    <meta name="description" content="Официальный сайт РУП Брестэнерго">

    <link rel="icon" type="image/png" href="/static/img/logo.png">
    <title> <#if page??> ${page.topic}</#if>
    </title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <!-- Bootstrap core CSS -->
    <link href="/static/style/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="/static/style/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="/static/style/style.min.css" rel="stylesheet">
    <!--<link href="/css/style.css" rel="stylesheet">-->
    <!-- Button Visually impared-->
    <link rel="stylesheet" href="/static/style/bvi.min.css" type="text/css">
    <!-- JQuery -->
    <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>
    <!--Button Visually impared-->
    <script src="/static/js/button-visually-impaired/js/responsivevoice.min.js"></script>
    <script src="/static/js/button-visually-impaired/js/bvi-init-panel.js"></script>
    <script src="/static/js/button-visually-impaired/js/bvi.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="/static/js/popper.min.js"></script>
    <script src="/static/js/bootstrap-filestyle/bootstrap-filestyle.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>

</head>

<body style="position: relative; min-height: 100%; top: 0px;">


<#import "smallBlock/nav.ftl" as p>
<@p.nav/>

<!--Main layout-->

<main id="main">
    <#if page??>
        <div class="container py-5">
            <div class="row pt-5">
                <div class="col-12 pt-5">
                    <div class="container text-center white-text">

                        <h1 class="h1-responsive borderfont">

                            ${page.topic}

                        </h1>
                        <p class="h4-responsive p-3 borderfont">
                            <a class="white-text">${(page.dateCreate)?datetime?string('dd MMM yyyy')}</a>

                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 white rounded">
                    <div class="container">
                        <div class="news p-3">

                            <div class="newsbody">
                                <p>
                                </p>
                                <p><img style="display: block; margin-left: auto; margin-right: auto;"
                                        src="/imger/${page.img}" alt="" width="1280"
                                        height="853"></p>
                                <p>${page.messages}</p>
                                <#if customers?exists && (customers.roles[0])=="ADMIN">
                                <a class="black-text "
                                   href="/kabinet/admin/editNews/${page.id}"><span
                                            target=""
                                            class="badgenews btn-outline-black btn-lg my-2 pulses">Редактировать</span></a>
                                </#if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <#else>
        <div class="container py-5">
            <div class="row pt-5">
                <div class="col-12 pt-5">
                    <div class="container text-center white-text">

                        <h1 class="h1-responsive borderfont">

                            ${page.topic}

                        </h1>
                        <p class="h4-responsive p-3 borderfont">
                            <a class="white-text">Ничиго нет</a>

                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 white rounded">
                    <div class="container">
                        <div class="news p-3">

                            <div class="newsbody">
                                <p>
                                </p>
                                <p><img style="display: block; margin-left: auto; margin-right: auto;"
                                        src="/static/uploads/${page.img}" alt="" width="1280"
                                        height="853"></p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</main>


<!--Main layout-->
<#include "smallBlock/footer.ftl">

<div class="hiddendiv common"></div>

<script type="text/javascript">
    $('document').ready(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 700) {
                $('.scrollUp').fadeIn();
            } else {
                $('.scrollUp').fadeOut();
            }
        });

        $('.scrollUp').click(function () {
            $("html, body").animate({scrollTop: 0}, 700);
            return false;
        });
    });
</script>

<div class="scrollUp" style="display: none;"><a class="btn-floating btn-lg"><i class="fa fa-angle-up fa-2x"
                                                                               aria-hidden="true"></i></a></div>

</body>
</html>