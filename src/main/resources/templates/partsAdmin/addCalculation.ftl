<#macro counter>


    <link rel="stylesheet" href="/style/profile.css" xmlns:почты="http://www.w3.org/1999/xhtml">
    <script type="text/javascript" src="/js/kabinet/animete.js"></script>
    <style>
        .mainrightblockmain {
            background-color: transparent;
            width: 1208px!important;
        }

        .control-label {
            width: 200px !important;66
        }
        .rows{
            float: left!important;
            margin-left: 300px;
        }
    </style>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3">Добавление расчётов пользователю: <#if object??>${object.username}</#if></h1>
    </div>
    <div class="form-group"
         style="width: 100%;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);display: inline-block;">
        <table style="margin-left: 50px;width: 1110px;margin-bottom: 20px;">
            <tbody>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label">
                            <form action="/kabinet/admin/counter/search" method="post">
                            <input type="text" class="form-control" id="searchId" name="username" value=""
                                   style="width: 95px;display: inline-block">
                            <button class="btn-primary" type="submit" style="margin: 0 auto 0;">
                                Поиск
                            </button>
                            <#include "../smallBlock/csrf.ftl">
                            </form>
                        </label>
                    </div>
                </td>
            </tr>

            <tr>
                <td style="margin-bottom: 20px">
                    <form action="/kabinet/admin/counter/addCalculation" method="post">
                    <span style="display: inline-block">Потребление:</span>
                    <input type="number" class="form-control" id="account" maxlength="8"  name="currentPeriod" value=""
                           style="width: 300px;display: inline-block" ${(object??)?then("","disabled")}>
                    цена:

                        <#if objectPrice??><input type="text" class="form-control" id="account2" minlength="4" name="priceServices" value="${objectPrice.priceServices}"
                           style="width: 300px;display: inline-block" disabled>
                     <input type="hidden" name="idPrice" value="${objectPrice.id}">
                        <#else>
                            <input type="text" class="form-control" name="" value=""
                                   style="width: 300px;display: inline-block" disabled>
                        </#if>

                        <#if object??>
                            <input type="hidden" name="id" value="${object.id}">
                        </#if>
                             <button class="btn-primary" type="submit" style="margin: 0 auto 0;" ${(objectPrice??)?then("","disabled")}>
                    Добавить потребление
                </button>
                            <#include "../smallBlock/csrf.ftl"></label></label>
                    </form>
                </td>
            </tr>
            </tbody>
        </table>
        </div>
        </div>
    </div>
</#macro>