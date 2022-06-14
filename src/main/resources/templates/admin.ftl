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
                                <div class="accordion md-accordion accordion-blocks m-0 p-0" id="accordion_main"
                                     aria-multiselectable="true" style="">
                                    <div class="card z-depth-0 bordered font-weight-light"
                                         style="width: 150px;border:none;border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                        <div class="card-header p-0 m-0" id="heading_2" data-toggle="collapse"
                                             data-target="#collapse_2" aria-expanded="true" aria-controls="collapse_2">

                                            <button class="btnBar" type="button" data-toggle="collapse"
                                                    data-target="#collapse_2" aria-expanded="true"
                                                    aria-controls="collapse_2"
                                                    style="height: 47px;width: 150px;padding: 0px;margin: 0;border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                <#if atribut=="support" || atribut="supportD">
                                                    <input id="one" type="radio" name="radio" checked>
                                                </#if>
                                                <label class="labelwidth" for="one">
                                                    <a class="noneHref">Запросы</a></label>
                                            </button>
                                        </div>
                                        <div id="collapse_2" class="collapse" aria-labelledby="heading_2"
                                             data-parent="#accordion_main">
                                            <div class="card-body" id="collapse_body_2" style="padding: 0">
                                                <form action="/kabinet/admin" method="post">
                                                    <button type="submit" class="btnBarli"
                                                            style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                        <input type="hidden" name="atribut" value="activeSupport">
                                                        <a class="noneHref">Активные</a>
                                                    </button>
                                                    <#include "smallBlock/csrf.ftl">
                                                </form>
                                            </div>
                                        </div>
                                        <div id="collapse_2" class="collapse" aria-labelledby="heading_2"
                                             data-parent="#accordion_main">
                                            <div class="card-body" id="collapse_body_2" style="padding: 0">
                                                <form action="/kabinet/admin" method="post">
                                                    <button type="submit" class="btnBarli"
                                                            style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                        <input type="hidden" name="atribut" value="disabledSupport">
                                                        <a class="noneHref">Не активные</a>
                                                    </button>
                                                    <#include "smallBlock/csrf.ftl">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                              <div class="form_radio_btn">
                                <div class="accordion md-accordion accordion-blocks m-0 p-0" id="accordion_main"
                                     aria-multiselectable="true" style="">
                                    <div class="card z-depth-0 bordered font-weight-light"
                                         style="width: 150px;border:none">
                                        <div class="card-header p-0 m-0" id="heading_1" data-toggle="collapsed"
                                             data-target="#collapse_1" aria-expanded="true" aria-controls="collapse_1">

                                            <button class="btnBar" type="button" data-toggle="collapse"
                                                    data-target="#collapse_1" aria-expanded="true"
                                                    aria-controls="collapse_1"
                                                    style="height: 47px;width: 150px;padding: 0px;margin: 0">
                                                <#if atribut=="addUser" || atribut=="editUser">
                                                    <input id="two" type="radio" name="radio" checked>
                                                </#if>
                                                <label class="labelwidth" for="two">
                                                    <a class="noneHref">Пользователи</a></label>
                                            </button>
                                        </div>
                                        <div id="collapse_1" class="collapse" aria-labelledby="heading_1"
                                             data-parent="#accordion_main">
                                            <div class="card-body" id="collapse_body_1" style="padding: 0">
                                                <form action="/kabinet/admin" method="post">
                                                    <button type="submit" class="btnBarli"
                                                            style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                        <input type="hidden" name="atribut" value="addUser">
                                                        <a class="noneHref">Добавление</a>
                                                    </button>
                                                    <#include "smallBlock/csrf.ftl">
                                                </form>
                                            </div>
                                        </div>
                                        <div id="collapse_1" class="collapse" aria-labelledby="heading_1"
                                             data-parent="#accordion_main">
                                            <div class="card-body" id="collapse_body_1" style="padding: 0">
                                                <form action="/kabinet/admin" method="post">
                                                    <button type="submit" class="btnBarli"
                                                            style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                        <input type="hidden" name="atribut" value="editUser">
                                                        <a class="noneHref">Редактирование</a>
                                                    </button>
                                                    <#include "smallBlock/csrf.ftl">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                  <div class="form_radio_btn">
                                      <div class="accordion md-accordion accordion-blocks m-0 p-0" id="accordion_main"
                                           aria-multiselectable="true" style="">
                                          <div class="card z-depth-0 bordered font-weight-light"
                                               style="width: 150px;border:none">
                                              <div class="card-header p-0 m-0" id="heading_3" data-toggle="collapse"
                                                   data-target="#collapse_3" aria-expanded="true" aria-controls="collapse_3">

                                                  <button class="btnBar" type="button" data-toggle="collapse"
                                                          data-target="#collapse_3" aria-expanded="true"
                                                          aria-controls="collapse_3"
                                                          style="height: 47px;width: 150px;padding: 0px;margin: 0">
                                                      <#if atribut=="addNews" || atribut="editNews">
                                                          <input id="three" type="radio" name="radio" checked>
                                                      </#if>
                                                      <label class="labelwidth" for="three">
                                                          <a class="noneHref">Новости</a></label>
                                                  </button>
                                              </div>
                                              <div id="collapse_3" class="collapse" aria-labelledby="heading_3"
                                                   data-parent="#accordion_main">
                                                  <div class="card-body" id="collapse_body_3" style="padding: 0">
                                                      <form action="/kabinet/admin" method="post">
                                                          <button type="submit" class="btnBarli"
                                                                  style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                              <input type="hidden" name="atribut" value="addNews">
                                                              <a class="noneHref">Добавление</a>
                                                          </button>
                                                          <#include "smallBlock/csrf.ftl">
                                                      </form>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>

                                      <div class="form_radio_btn">
                                          <div class="accordion md-accordion accordion-blocks m-0 p-0" id="accordion_main"
                                               aria-multiselectable="true" style="">
                                              <div class="card z-depth-0 bordered font-weight-light"
                                                   style="width: 150px;border:none">
                                                  <div class="card-header p-0 m-0" id="heading_4" data-toggle="collapse"
                                                       data-target="#collapse_4" aria-expanded="true" aria-controls="collapse_4">

                                                      <button class="btnBar" type="button" data-toggle="collapse"
                                                              data-target="#collapse_4" aria-expanded="true"
                                                              aria-controls="collapse_4"
                                                              style="height: 47px;width: 150px;padding: 0px;margin: 0">
                                                          <#if atribut=="counter">
                                                              <input id="fore" type="radio" name="radio" checked>
                                                          </#if>
                                                          <label class="labelwidth" for="fore">
                                                              <a class="noneHref">Расчёты</a></label>
                                                      </button>
                                                  </div>
                                                  <div id="collapse_4" class="collapse" aria-labelledby="heading_4"
                                                       data-parent="#accordion_main">
                                                      <div class="card-body" id="collapse_body_4" style="padding: 0">
                                                          <form action="/kabinet/admin" method="post">
                                                              <button type="submit" class="btnBarli"
                                                                      style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                                  <input type="hidden" name="atribut" value="counter">
                                                                  <a class="noneHref">Добавление</a>
                                                              </button>
                                                              <#include "smallBlock/csrf.ftl">
                                                          </form>
                                                      </div>
                                                  </div>
                                                  <div id="collapse_4" class="collapse" aria-labelledby="heading_4"
                                                       data-parent="#accordion_main">
                                                      <div class="card-body" id="collapse_body_4"0. style="padding: 0">
                                                          <form action="/kabinet/admin" method="post">
                                                              <button type="submit" class="btnBarli"
                                                                      style="border-top-left-radius: 1em;border-top-right-radius: 1em;">
                                                                  <input type="hidden" name="atribut" value="checkCalculation">
                                                                  <a class="noneHref">Просмотр</a>
                                                              </button>
                                                              <#include "smallBlock/csrf.ftl">
                                                          </form>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>

                                <div class="form_radio_btn">
                                    <form action="/kabinet/admin" method="post">
                                        <button type="submit" class="btnBar"
                                                style="border-bottom-left-radius: 1em;border-bottom-right-radius: 1em">
                                            <input type="hidden" name="atribut" value="addMessage">
                                            <input id="five" type="radio"
                                                   name="radio"${(atribut=="addMessage")?then("checked"," ")}>
                                            <label class="labelwidth" for="five" style="border-bottom-left-radius:1em;border-bottom-right-radius:1em; border-top-left-radius:0;border-top-right-radius:0;>
                                                <a class=>"><a class="noneHref">Сообщения</a></label>
                                        </button>
                                        <#include "smallBlock/csrf.ftl">
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

                                <#if atribut=="addNews">
                                    <#import "partsAdmin/addNews.ftl" as a>
                                    <@a.addNews/>
                                </#if>

                                <#if atribut=="editNews">
                                    <#import "partsAdmin/editNews.ftl" as a>
                                    <@a.editNews/>
                                </#if>

                                <#if atribut=="addUser">
                                    <#import "partsAdmin/addUser.ftl" as a>
                                    <@a.addUser/>
                                </#if>

                                <#if atribut=="editUser">
                                    <#import "partsAdmin/editUser.ftl" as a>
                                    <@a.editUser/>
                                </#if>

                                <#if atribut=="support">
                                    <#import "partsAdmin/support.ftl" as a>
                                    <@a.support/>
                                </#if>
                                <#if atribut=="supportD">
                                    <#import "partsAdmin/supportD.ftl" as a>
                                    <@a.support/>
                                </#if>
                                <#if atribut=="supportRequest">
                                    <#import "parts/supportRequest.ftl" as a>
                                    <@a.supportRequest/>
                                </#if>
                                <#if atribut=="addMessage">
                                    <#import "partsAdmin/addMessage.ftl" as a>
                                    <@a.addMessage/>
                                </#if>
                                <#if atribut=="counter">
                                    <#import "partsAdmin/addCalculation.ftl" as a>
                                    <@a.counter/>
                                </#if>
                                <#if atribut=="checkCalculation">
                                    <#import "partsAdmin/checkCalculation.ftl" as a>
                                    <@a.checkCalculation/>
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









