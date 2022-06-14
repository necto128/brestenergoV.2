<#macro checkCalculation>
    <link rel="stylesheet" href="/style/profile.css" xmlns="http://www.w3.org/1999/html">
    <style>
        .mainrightblockmain {
            height: auto !important;
            width: 1300px !important;
            border-radius: 0;
            background-color: transparent;
        }

        .rows {
            margin-right: 315px !important;
        }

        .btn-primary {
            height: 38px !important;
        }

        .td3 {
            width: 260px !important;
        }

        .td3:hover {
            background: linear-gradient(0deg, rgb(247, 231, 251), rgb(254, 250, 254));
        }


    </style>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3"
            style="display: inline-block;width: 1284px;">Расчёты
            пользователя: <#if isActive??>${isActive[0].idUser.username}</#if><span style="margin-left: 280px">
                    <table style="display: inline-block">
                        <tr>
                    <td>
                 <form action="/kabinet/admin/checkCalculation" method="post" style="width:480px;display: inline-block">
                             <span style="    color: #4a494d;
        font-size: 30px;
        line-height: 34px;
        margin: 0;
        font-weight: 300;">Поиск по счёту:</span>
    <input type="text" class="form-control" size="8" maxlength="8" name="username" value=""
           style="width: 142px; flex: none;display: inline-block;">
            <button class="btn-primary" type="submit" style="font-size: 19px">
                Выполнить
                <#include "../parts/csrf.ftl">
            </button>
                </form>
                </td></tr></table>
            </span>
        </h1>
    </div>
    <div class="form-group" style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
        <table style="width: 100%">
            <#if param??>
                <tr class="" style="border-left:none;border-right: none; border-top: 1px solid;">
                    <th class="td3">
                        <a style="height:80px;padding-top: 30px">
                            <h5 style="margin:0 50px 0;display: inline-block">Предыдущий период</h5>
                        </a>
                    </th>
                    <th class="td3">
                        <a style="height:80px;padding-top: 30px;margin-left: 52px;">
                            <h5 style="display: inline-block">Расход</h5>
                        </a>
                    </th>
                    <th class="td3">
                        <a style="height:80px;padding-top: 30px">
                            <h5 style="margin:0 50px 0;display: inline-block">Текущий период</h5>
                        </a>
                    </th>
                    <th class="td3">
                        <a style="height:80px;padding-top: 30px">
                            <h5 style="margin:0 50px 0;display: inline-block"></h5>
                        </a>
                    </th>
                </tr>
            <#else>
                <tr class="" style="border-left:none;border-right: none; border-top: 1px solid;">
                    <th class="td3">
                        <a style="height:80px;padding-top: 30px">
                            <h5 style="margin:0 50px 0;display: inline-block">Дата</h5>
                        </a>
                    </th>
                    <th class="td3">
                        <a style="height:80px;padding-top: 30px">
                            <h5 style="margin:0 50px 0;display: inline-block">Предыдущий период</h5>
                        </a>
                    </th>
                    <th class="td3">
                        <a style="height:80px;padding-top: 30px">
                            <h5 style="display: inline-block">Расход</h5>
                        </a>
                    </th>
                    <th class="td3">
                        <a style="height:80px;padding-top: 30px">
                            <h5 style="margin:0 50px 0;display: inline-block">Текущий период</h5>
                        </a>
                    </th>
                    <th class="td3">
                        <a style="height:80px;padding-top: 30px">
                            <h5 style="margin:0 50px 0;display: inline-block">Цена</h5>
                        </a>
                    </th>
                </tr>
            </#if>
        </table>
        <div class="listmessage" style="max-height: 670px;!important;">
            <table style="width: 100%;">
                <#if isActive??>
                    <#if param??>
                        <#list isActive as el>
                            <tr class="" style="border-left:none;border-right: none; border-top: 1px solid;">

                                <th class="td3">
                                    <a class="hreff" style="height:80px;padding-top: 30px">
                                        <input style="margin:0 50px 0;display: inline-block" id="parampriv${el.id}" type="number"  value="${(el.previousPeriod)?c}">
                                    </a>
                                </th>
                                <th class="td3">
                                    <a class="hreff" style="height:80px;padding-top: 30px">
                                        <input style="margin:0 50px 0;display: inline-block" id="expens${el.id}" value="${(el.expenses)?c}">
                                    </a>
                                </th>
                                <th class="td3">
                                    <a class="hreff" style="height:80px;padding-top: 30px">
                                        <input style="margin:0 50px 0;display: inline-block" id="curent${el.id}" value="${(el.currentPeriod)?c}">
                                    </a>
                                </th>
                                <th class="td3">
                                    <form action="/kabinet/admin/checkCalculation/save" method="post">
                                        <input type="hidden" id="previousPeriod${el.id}" name="previousPeriod" value="">
                                        <input type="hidden" id="expenses${el.id}" name="expenses" value="">
                                        <input type="hidden" id="currentPeriod${el.id}" name="currentPeriod" value="">
                                        <input type="hidden" name="id" value="${el.id}">
                                        <a class="hreff" style="height:80px;padding-top: 30px">
                                            <button class="btn-primary" type="submit"
                                                    style="font-size: 19px;margin:0 50px 0;display: inline-block"
                                                    onclick="x12(${el.id})">
                                                Сохранить
                                                <#include "../parts/csrf.ftl">
                                            </button>
                                            </form>
                                        </a>
                                    <script>
                                        function x12(par) {
                                            document.getElementById("previousPeriod"+par).value=document.getElementById("parampriv"+par).value;
                                                document.getElementById("expenses"+par).value=document.getElementById("expens"+par).value;
                                                    document.getElementById("currentPeriod"+par).value=document.getElementById("curent"+par).value;
                                        }
                                    </script>
                                </th>

                            </tr>
                        </#list>
                    <#else>
                        <#list isActive as el>
                            <tr class="" style="border-left:none;border-right: none; border-top: 1px solid;">
                                <th class="td3">
                                    <a class="hreff" href="/kabinet/admin/checkCalculation/${el.id}/${el.idUser.id}"
                                       style="height:80px;padding-top: 30px">
                                        <h5 style="margin:0 50px 0;display: inline-block">${el.viewDate}</h5>
                                    </a>
                                </th>
                                <th class="td3">
                                    <a class="hreff" href="/kabinet/admin/checkCalculation/${el.id}/${el.idUser.id}"
                                       style="height:80px;padding-top: 30px">
                                        <h5 style="margin:0 50px 0;display: inline-block">${el.previousPeriod}</h5>
                                    </a>
                                </th>
                                <th class="td3">
                                    <a class="hreff" href="/kabinet/admin/checkCalculation/${el.id}/${el.idUser.id}"
                                       style="height:80px;padding-top: 30px">
                                        <h5 style="display: inline-block">${el.expenses}</h5>
                                    </a>
                                </th>
                                <th class="td3">
                                    <a class="hreff" href="/kabinet/admin/checkCalculation/${el.id}/${el.idUser.id}"
                                       style="height:80px;padding-top: 30px">
                                        <h5 style="margin:0 50px 0;display: inline-block">${el.currentPeriod}</h5>
                                    </a>
                                </th>
                                <th class="td3">
                                    <a class="hreff" href="/kabinet/admin/checkCalculation/${el.id}/${el.idUser.id}"
                                       style="height:80px;padding-top: 30px">
                                        <h5 style="margin:0 50px 0;display: inline-block">${el.price.priceServices}</h5>
                                    </a>
                                </th>
                            </tr>
                        </#list>
                    </#if>
                </#if>
            </table>
        </div>
    </div>

</#macro>