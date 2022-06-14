<#macro nav>
<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-xl navbar-dark scrolling-navbar navbarhover">
    <div class="container-fluid">
        <a class="navbar-brand brestenergofontlogo" href="/www.brestenergo.by" target="">
            <img src="/static/img/logo.png" class="d-inline-block align-center menu-logo" alt=""> Брестэнерго
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">

                <li id="idmain" class="nav-item">
                    <a class="nav-link rounded waves-effect waves-light" href="/www.brestenergo.by"><i
                                class="fa fa-home pr-2"></i>Главная
                        <span class="sr-only"></span>
                    </a>
                </li>
                <li id="idnews" class="nav-item ">
                    <a class="nav-link rounded waves-effect waves-light"
                       href="/www.brestenergo.by/news" target=""><i
                                class="fa fa-newspaper pr-2"></i>Новости</a>
                </li>
                <li id="idabout" class="nav-item dropdown ">
                    <a class="nav-link rounded dropdown-toggle waves-effect waves-light my-navlink"
                       id="navbarDropdownMenuLink-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-info-circle pr-2"></i>О предприятии </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-info"
                         aria-labelledby="navbarDropdownMenuLink-4">

                        <a class="dropdown-item waves-effect waves-light"
                           href="/www.brestenergo.by/generalinformation"><i
                                    class="fa fa-list-alt pr-2" aria-hidden="true"></i>Общие сведения</a>
                        <a class="dropdown-item waves-effect waves-light"
                           href="/www.brestenergo.by/history"><i
                                    class="fa fa-book pr-2" aria-hidden="true"></i>История предприятия</a>
                        <a class="dropdown-item waves-effect waves-light"
                           href="/www.brestenergo.by/management"><i
                                    class="fa fa-users pr-2" aria-hidden="true"></i>Руководство</a>
                        <a class="dropdown-item waves-effect waves-light"
                           href="/www.brestenergo.by/structure"><i
                                    class="fa fa-th-large pr-2" aria-hidden="true"></i>Структура</a>
                        <a class="dropdown-item waves-effect waves-light"
                           href="/www.brestenergo.by/requisites"><i
                                    class="fa fa-bullhorn pr-2" aria-hidden="true"></i>Реквизиты</a>
                    </div>
                </li>
                <li id="idblackouts" class="nav-item">
                    <a class="nav-link rounded waves-effect waves-light"
                       href="/www.brestenergo.by/disconnection"><i
                                class="fa fa-power-off pr-2"></i>Отключения</a>
                </li>
                <li id="ideluslg" class="nav-item dropdown   ">
                    <a class="nav-link rounded dropdown-toggle waves-effect waves-light my-navlink"
                       id="navbarDropdownMenuLink-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-cog pr-2"></i>Электронные услуги
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-info"
                         aria-labelledby="navbarDropdownMenuLink-4">
                        <a class="dropdown-item waves-effect waves-light"
                           href="/www.brestenergo.by/appeals">
                            <i class="fa fa-paper-plane pr-2" aria-hidden="true"></i> Электронные обращения
                        </a>
                        <a class="dropdown-item waves-effect waves-light"
                           href="/www.brestenergo.by/reception">
                            <i class="fa fa-edit pr-2" aria-hidden="true"></i> Запись на личный прием
                        </a>
                        <a class="dropdown-item waves-effect waves-light" href="/kabinet/messages">
                            <i class="fa fa-user pr-2"></i>Личный кабинет
                        </a>
                    </div>
                </li>
                <#if customers?exists>
                <li id="idblackouts" class="nav-item active"><a class="nav-link rounded waves-effect waves-light"
                                                                href="/kabinet"><i class="far fa-address-card pr-2"></i>
                      Пользователь
                    </a></li>



                    <#if customers?exists && (customers.roles[0])=="ADMIN">
                    <li id="idblackouts" class="nav-item"><a class="nav-link rounded waves-effect waves-light"
                                                                    href="/kabinet/admin"><i class="far fa-address-card pr-2"></i>
                            ${customers.roles[0]}
                        </a></li> </#if>

                <li id="idblackouts" class="nav-item">
                    <a class="nav-link rounded waves-effect waves-light">
                        <form action="/logout" method="post" style="height: 20px">
                            <#include "csrf.ftl">
                            <input type="submit" id="exit" style="display: none"/><label for="exit">
                                <i class="fas fa-sign-out-alt pr-2" title="Выход из системы" style="font-size:23px;">Выход</i></label>
                        </form>
                    </a>
                </li>
</#if>
            </ul>
        </div>
    </div>
</nav>

<!-- Navbar -->
</#macro>