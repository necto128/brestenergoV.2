<!Doctype html>
<html lang="en" style="height: 100%;">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords"
          content="Брестэнерго, электроэнергия, теплоэнергия, электросети, теплосети, электрические сети, тепловые сети, энергия, аскуэ">
    <meta name="description" content="Официальный сайт РУП Брестэнерго">
    <meta name="theme-color" content="#3b465e">
    <link rel="icon" type="image/png" href="/static/img/logo.png">
    <title>Новости
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

<body style="position: relative; min-height: 100%; top: 0px;">

<#import "smallBlock/nav.ftl" as p>
<@p.nav/>


<!--Main layout-->


<main id="main">

    <div class="container py-5">

        <div class="row py-5">
            <div class="col-12 py-5">
                <div class="text-center white-text px-2">
                    <h1 class="h1-responsive brestenergofont">
                        Новости
                    </h1>


                    <a onclick="$('#target').toggle();" class="btn btn-outline-white btn-md waves-effect waves-light">Архив
                        новостей
                        <i class="fa fa-chevron-right pl-2" aria-hidden="true"></i>
                    </a>

                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-12 white rounded">
                <div id="news">
                    <div class="container-fluid">
                        <div class="container-fluid">
                            <section class="mt-5">


                                <div class="rounded rgba-blue-grey-slight mb-5 p-3 fadeIn" id="target" role="alert"
                                     style="display: none;">

                                    <button type="button" onclick="$('#target').toggle();" class="close"
                                            data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                    <h4 class="text-center">Архив новостей</h4>
                                    <hr class=" grey lighten-4">


                                    <a class="black-text m-1 text-center"
                                       href="https://www.brestenergo.by/%D0%9D%D0%BE%D0%B2%D0%BE%D1%81%D1%82%D0%B8?year=2019"><span
                                                target="" class="badgenews btn-outline-black btn-lg my-2 pulses">2019 год</span></a>

                                </div>

                                      <#list page.content as el>
                                <div class="row">
                                    <div class="col-lg-6 col-xl-5">
                                        <div class="view overlay zoom imgnews rounded">
                                            <img style="width: 450px;" class=""
                                                 src="/imger/${el.img}"
                                                 alt="${el.topic}">
                                            <a href="/www.brestenergo.by/news/${el.id}">
                                                <div class="mask rgba-white-slight waves-effect waves-light"></div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-xl-7">
                                        <a class="newsheader"
                                           href="/www.brestenergo.by/news/${el.id}">
                                            <h4><strong>${el.topic}</strong></h4></a>

                                        <p>${el.topic}</p>
                                        <div class="row">
                                            <div class="pl-3"><a class="black-text"><span
                                                            target=""
                                                            class="badgenews btn-outline-black btn-lg my-2 pulses">${(el.dateCreate)?datetime?string('dd MMM yyyy')}</span></a>
                                                <a class="black-text "
                                                   href="/www.brestenergo.by/news/${el.id}"><span
                                                            target=""
                                                            class="badgenews btn-outline-black btn-lg my-2 pulses">Читать...</span></a>
                                                <#if customers?exists && (customers.roles[0])=="ADMIN">
                                                    <a class="black-text "
                                                       href="/kabinet/admin/editNews/${el.id}"><span
                                                                target=""
                                                                class="badgenews btn-outline-black btn-lg my-2 pulses">Редактировать</span></a>
                                                </#if>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <hr class="my-5">
                                           </#list>
                            </section>

                        </div>
                    </div>
                </div>
                <div class="container-fluid mb-4">

                    <nav aria-label="pagination">
        <span class="pagination pg-brstenergo pagination-md justify-content-center">
            <ul class="pagination" role="navigation" style="margin:0 auto ">
          <#import "parts/blockss.ftl" as p>
                 <@p.pager url page/>
            </ul>
        </span>
                    </nav>

                </div>

            </div>
        </div>
    </div>

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