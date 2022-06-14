<#macro supportRequest>
    <link rel="stylesheet" href="/style/profile.css">
    <style>
        .mainrightblockmain {
            height: auto !important;
            width: 1300px !important;
            box-shadow: none;
        }

        .rows {
            margin-right: 315px !important;
        }

        a {
            cursor: auto;
        }

    </style>
    <div id="content-header"
         style="font-family: 'DejaVu Sans', Arial, Helvetica, sans-serif;margin-top: 15px;">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3" style="
    display: inline-block;">
            Номер запроса: <#if objectRequest??>${objectRequest.id}</#if></h1>
        <h1 style="margin-left: 100px;display: inline-block;">
            Тема: <#if objectRequest??>
                <#if objectRequest.topic?length gt 49>
                ${(objectRequest.topic)?substring(0,49)}...
                    <#else>
                        ${objectRequest.topic}
                </#if>
            </#if>
        </h1>
        <#if Controll??>
       <#if objectRequest??> <form style="float: right;" method="post" action="/kabinet/admin/activeSupport/chat/${objectRequest.id}/close">
            <#include "../smallBlock/csrf.ftl">
            <input type="hidden" name="idRequest"
                   value="${objectRequest.id}"/>
            <button class="btn-primary" type="submit"
                    style="margin: 0 auto 0;display: block;">
                Завершить чат
            </button>
        </form></#if></#if>
    </div>
    <div class="form-group"
         style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
        <table>
            <tr>
                <td>
                    <div class="listmessage"
                         style="width: 1300px;max-height:640px;border-radius:0;    box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
                        <div style="background-color: #ffffff;">
                            <table class="tablemessage" style="border-top-right-radius: 0;border-top-left-radius: 0;">
                                <#if listMessages??>
                                    <#if (listMessages?size)==0>
                                    <tr class="trlistmessage"
                                        style="border-left:none;border-right: none;background-color: #02c8fa;border-bottom: 3px solid;">
                                        <td style="width: 70px;display: block; margin-left: 5px;text-align: center"
                                            colspan="2">
                                        </td>
                                        <th style="width: 1228px">
                                            <a class="hreff"
                                               style="max-height: 1229px;width: 1220px;border:2px solid transparent">
                                                Здравствуйте, опишите вашу проблему как можно подробнее.
                                            </a>
                                        </th>
                                    </tr>
                                    </#if>
                                    <#list listMessages as el>
                                        <#if customers.id==el.idUser.id>
                                            <tr class="trlistmessage"
                                                style="border-top: none;border-left:none;border-right: none;border-bottom: 3px solid;">
                                                <td style="width: 70px;display: block; margin-left: 5px;text-align: center;margin-top: 8px;"
                                                    colspan="2">
                                                    ${el.idUser.username}:
                                                </td>
                                                <td style="width: 1228px">
                                                    <a class="hreff"
                                                       style="max-height: 1229px;width: 1220px;border:2px solid transparent">
                                                        ${el.messages}
                                                    </a><br/><span
                                                            style="height: 21px;float: right; display: inline-table;margin-right: 5px;font-size: 12px;
                                                            font-family: ALGERIAN;">Отправлено: ${el.datePost}</span>
                                                </td>
                                            </tr>
                                        <#else>
                                            <tr class="trlistmessage"
                                                style="border-left:none;border-right: none;background-color: #02c8fa;border-bottom: 3px solid;">
                                                <td style="width: 70px;display: block; margin-left: 5px;text-align: center;margin-top: 8px;"
                                                    colspan="2">
                                                    ${el.idUser.username}:
                                                </td>
                                                <th style="width: 1228px">
                                                    <a class="hreff"
                                                       style="max-height: 1229px;width: 1220px;border:2px solid transparent">
                                                        ${el.messages}
                                                    </a>
                                                    <br/><span style="height: 21px;float: right; display: inline-table;margin-right: 5px;font-size: 12px;
                                                            font-family: ALGERIAN;">Отправлено: ${el.datePost}</span>
                                                </th>
                                            </tr>
                                        </#if>
                                    </#list>
                                </#if>
                            </table>
                        </div>
                    </div>
                    <#if Controll??>
                        <form action="/kabinet/support/chat" method="post">
                            <table style="background-color: #fff;width: 100%;border-radius:16px">
                                <tr class="trlistmessage"
                                    style="height:60px!important;border-left:none;border-right:none;border-top:none;">
                                    <td style="width:92%;padding: 5px" colspan="2">
                                        <textarea maxlength="1000"
                                                  style="width: 100%;min-height:100px;max-height: 100px"
                                                  name="messages"></textarea>
                                    </td>
                                    <td>
                                        <label class="label-control" for="RegistrationNumber">

                                            <#include "../smallBlock/csrf.ftl">
                                            <input type="hidden" name="idRequest"
                                                   value="${objectRequest.id}"/>
                                            <button class="btn-primary" type="submit"
                                                    style="margin: 0 auto 0;display: block;">
                                                Отправить
                                            </button>
                                        </label>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </#if>
                </td>
            </tr>
        </table>
    </div>
</#macro>