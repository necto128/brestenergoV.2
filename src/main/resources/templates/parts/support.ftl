<#macro support>
    <link rel="stylesheet" href="/style/profile.css">
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
        .btn-primary{height: 38px!important;}
        .td3{
            width:1300px!important;}
        .td3:hover{
            background: linear-gradient(0deg, rgb(247, 231, 251), rgb(254, 250, 254));
        }

    </style>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3">Техническая поддержка</h1>
    </div>
    <div class="form-group" style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
    <table style="width: 100%">
        <#if isActive?size gt 0>
            <tr><h1 id="content-header-title" class="page-title txt-color-blueDark ml-3">Активный запрос:</h1></tr>
            <tr>
            <#list isActive as el>
                <tr class="listmessage" style="border-left:none;border-right: none;    border-top: 1px solid;">
                    <th class="td3">
                        <a class="hreff" href="/kabinet/support/chat/${el.id}" style="height:80px;padding-top: 30px"><h5 style="margin:0 50px 0;display: inline-block">Номер Запроса:${el.id}</h5>
                            <h5 style="display: inline-block">${el.topic}</h5></a>
                    </th>
                </tr>
            </#list>
        <#else>
            <td >
                <label class="label-control" for="RegistrationNumber" style="margin-left: 50px">
                    <form action="/kabinet/support" method="post">
                        <#include "../smallBlock/csrf.ftl">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" maxlength="49" minlength="4"  name="topic" value="" style="width: 476px;">
                            <button class="btn-primary" type="submit" style="margin: 0 auto 0;display: block;">
                                Создать запрос
                            </button>
                        </div>
                    </form>
                </label>
            </td>
        </#if>
        </tr>
    </table>
</div>

<div class="form-group" style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);min-height: 137px">
    <div style="border-bottom:1px solid; ">
    <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3">Не активные запросы:</h1>
    </div>
    <div class="listmessage" style="max-height: 567px!important;">
            <table class="tablemessage" style="width: 100%;">
                <#if isDisabled??>
                <#list isDisabled as el>
                    <tr  style="border-left:none;border-right: none;border-bottom: 1px solid">
                        <td class="td3">
                            <a class="hreff" href="/kabinet/support/chat/${el.id}" style="height:80px;padding-top: 30px">
                                <h5 style="margin:0 50px 0;display: inline-block">Номер Запроса:${el.id}</h5><h5 style="display: inline-block">${el.topic}</h5></a>
                        </td>
                    </tr>
                </#list>
                </#if>
            </table>
    </div>
</div>

</#macro>