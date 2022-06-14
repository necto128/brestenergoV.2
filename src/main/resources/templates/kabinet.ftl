<!Doctype html>
<html lang="en" style="height: 100%;" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-site-verification" content="3hWEnwwlrQB3sSPVpcOd0zxK0bpdBjPkkZiqV_3g1FA"/>
    <meta name="keywords"
          content="Брестэнерго, электроэнергия, теплоэнергия, электросети, теплосети, электрические сети, тепловые сети, энергия, аскуэ">
    <meta name="description" content="Официальный сайт РУП Брестэнерго">
    <meta http-equiv="x-ua-compatible" content="ie=edgПe">

    <meta name="theme-color" content="#3b465e">

    <title>Личный кабинет пользователя
    </title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <link rel="icon" type="image/png" href="/static/img/logo.png">
    <link href="/static/style/bootstrap.min.css" rel="stylesheet">
    <link href="/static/style/mdb.min.css" rel="stylesheet">
    <link href="/static/style/style.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/static/style/bvi.min.css" type="text/css">
    <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>
    <link href="/static/style/kabinet.css" rel="stylesheet">
    <script src="/static/js/button-visually-impaired/js/responsivevoice.min.js"></script>
    <script src="/static/js/button-visually-impaired/js/bvi-init-panel.js"></script>
    <script src="/static/js/button-visually-impaired/js/bvi.min.js"></script>
    <script src="/static/js/scripts.js"></script>
    <script type="text/javascript" src="/static/js/popper.min.js"></script>
    <script src="/static/js/bootstrap-filestyle/bootstrap-filestyle.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/js/mdb.min.js"></script>
</head>

<body style="position: relative; min-height: 100%; top: 0px;">


<#import "smallBlock/nav.ftl" as param>
<@param.nav/>
<!--Main layout-->

<main id="main" class="main">
    <div class="bockone">
        <div class="fone">
            <table class="naviga11" style="position: fixed;">
                <tr>
                    <td style="width:150px;" rowspan="18">
                        <div class="maxWidthAndHeight">
                            <div class="form_radio_btn">
                                <form action="/kabinet" method="post">
                                    <button type="submit" class="btnBar"
                                            style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                        <input type="hidden" name="atribut" value="messages">
                                        <input id="one" type="radio"
                                               name="radio" ${(atribut=="messages")?then("checked"," ")}>
                                        <label class="labelwidth" for="one"><a class="noneHref">Сообщения</a></label>
                                    </button>
                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                </form>
                            </div>

                            <div class="form_radio_btn">
                                <div class="accordion md-accordion accordion-blocks m-0 p-0" id="accordion_main"
                                     aria-multiselectable="false" style="">
                                    <div class="card z-depth-0 bordered font-weight-light"
                                         style="width: 150px;border:none">
                                        <div class="card-header p-0 m-0" id="heading_1" data-toggle="collapsed"
                                             data-target="#collapse_1" aria-expanded="false" aria-controls="collapse_1">

                                            <button class="btnBar" type="button" data-toggle="collapse"
                                                    data-target="#collapse_1" aria-expanded="false"
                                                    aria-controls="collapse_1"
                                                    style="height: 47px;width: 150px;padding: 0px;margin: 0">
                                                <#if atribut=="energy" || atribut=="counter" || atribut=="consumptionStatistics">
                                                    <input id="two" type="radio" name="radio" checked>
                                                </#if>
                                                <label class="labelwidth" for="two">
                                                    <a class="noneHref">Электроэнергия</a></label>
                                            </button>
                                        </div>
                                        <div id="collapse_1" class="collapse" aria-labelledby="heading_1"
                                             data-parent="#accordion_main">
                                            <div class="card-body" id="collapse_body_1" style="padding: 0">
                                                <form action="/kabinet" method="post">
                                                    <button type="submit" class="btnBarli"
                                                            style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                        <input type="hidden" name="atribut" value="counter">
                                                        <a class="noneHref">Счётчик</a>
                                                    </button>
                                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                </form>
                                            </div>
                                        </div>
                                        <div id="collapse_1" class="collapse" aria-labelledby="heading_1"
                                             data-parent="#accordion_main">
                                            <div class="card-body" id="collapse_body_1" style="padding: 0">
                                                <form action="/kabinet" method="post">
                                                    <button type="submit" class="btnBarli"
                                                            style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                        <input type="hidden" name="atribut" value="consumptionStatistics">
                                                        <a class="noneHref">Статистика потребления</a>
                                                    </button>
                                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form_radio_btn">
                                    <form action="/kabinet" method="post">
                                        <button type="submit" class="btnBar">
                                            <input type="hidden" name="atribut" value="profile">
                                            <input id="three" type="radio"
                                                   name="radio" ${(atribut=="profile")?then("checked"," ")}>
                                            <label class="labelwidth" for="three"><a
                                                        class="noneHref">Профиль</a></label>
                                        </button>
                                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                                    </form>
                                </div>

                                <div class="form_radio_btn">
                                    <form action="/kabinet" method="post">
                                        <button type="submit" class="btnBar"
                                                style="border-bottom-left-radius: 1em;border-bottom-right-radius: 1em">
                                            <input type="hidden" name="atribut" value="support">
                                            <input id="five" type="radio"
                                                   name="radio"${(atribut=="support")?then("checked"," ")}>
                                            <label class="labelwidth" for="five" style="border-bottom-left-radius:1em;border-bottom-right-radius:1em; border-top-left-radius:0;border-top-right-radius:0;>
                                                <a class=>"><a class="noneHref">Поддержка</a></label>
                                        </button>
                                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                                    </form>
                                </div>


                            </div>
                        </div>
                    </td>
                </tr>
            </table>
            <div class="rows" style="float: right;display: table-caption!important">


                <table class="naviga11">
                    <tr>
                        <th rowspan="18" class="mainRightblock">
                            <div class="mainrightblockmain" style="max-height: 850px;min-height: 137px">

                                <#if atribut=="messages">
                                    <#import "parts/message.ftl" as a>
                                    <@a.message/>
                                </#if>
                                <#if atribut=="checkmessage">
                                    <#import "parts/checkmessage.ftl" as a>
                                    <@a.checkmessage message/>
                                </#if>
                                <#if atribut=="profile">
                                    <#import "parts/profile.ftl" as a>
                                    <@a.profile/>
                                </#if>
                                <#if atribut=="editProfile">
                                    <#import "parts/editProfile.ftl" as a>
                                    <@a.editProfile/>
                                </#if>
                                <#if atribut=="counter">
                                    <#import "parts/counter.ftl" as a>
                                    <@a.counter/>
                                </#if>
                                <#if atribut=="support">
                                    <#import "parts/support.ftl" as a>
                                    <@a.support/>
                                </#if>
                                <#if atribut=="supportRequest">
                                    <#import "parts/supportRequest.ftl" as a>
                                    <@a.supportRequest/>
                                </#if>
                                <#if atribut=="consumptionStatistics">
                                    <#import "parts/consumptionStatistics.ftl" as a>
                                    <@a.consumptionStatistics/>
                                </#if>
                            </div>
                        </th>
                    </tr>
                </table>


            </div>

        </div>
    </div>
    </div>
</main>
</body>

</html>









