<#macro addMessage>
    <link rel="stylesheet" href="/style/profile.css">
    <script type="text/javascript" src="/js/kabinet/animete.js"></script>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3"><X><#if Object??>Редактирование сообщений<#else>Создание сообщений</#if></X></h1>
    </div>
    <style>
        .mainrightblockmain{
            width: 1300px;

        }
        .rows{
            float:left!important;
            margin-left: 300px;
        }
    </style>
    <div class="form-group" style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
        <#if Object??>
        <form action="/kabinet/admin/editMessage/${Object.id}" method="post">
            <table style="margin: 0 50px 0;width: 92.38%;%;">
                <tr>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="input-group">
                            <div style="width: 50%">
                                <input type="text" class="form-control" maxlength="49" minlength="4"  name="topic" value="${Object.topic}"
                                       style="width: 460px; flex: none;display: inline-block;margin-top: 12px;">
                                <#include "../smallBlock/csrf.ftl">
                                <input type="checkbox" name="active" value="${(Object.active)?then("true","false")}" ${(Object.active)?then("checked","")}>
                                <button class="btn-primary" type="submit" style="">
                                    Сохранить
                                </button>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                       <textarea style="width:100%;margin-top: 10px;margin-bottom: 0px;max-height:598px;min-height: 220px;" name="message" maxlength="2000" minlength="1">${Object.message}</textarea>
                    </td>
                </tr>
            </table></form>
            <#else>
                    <form action="/kabinet/admin/addMessage" method="post">
            <table style="margin: 0 50px 0;width: 92.38%;%;">
                <tr>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="input-group">
                            <div style="width: 50%">
                                <input type="text" class="form-control" maxlength="49" minlength="4"  name="topic" value=""
                                       style="width: 460px; flex: none;display: inline-block;margin-top: 12px;">
                                <#include "../smallBlock/csrf.ftl">
                                <button class="btn-primary" type="submit" style="">
                                    Создать
                                </button>
                            </div>
                            <!--<table style="display: inline-block">
                                <tr>
                                    <td><span style="    color: #4a494d;
    font-size: 30px;
    line-height: 34px;
    margin: 0;
    font-weight: 300;">Поиск:</span></td>
                                    <td>
                                        <form action="/kabinet/admin/activeSupport" method="post" style="width:480px;display: inline-block">
                                            <div style="display: inline-block;width: 210px;font-size: 19px">
                                                <select class="browser-default custom-select" name="param" id="ind_select">
                                                    <option value="searchId" selected="" >по номеру запроса
                                                    </option>
                                                    <option value="searchCount">по счёту
                                                    </option>
                                                </select>
                                                <span id="ind_select_error" class="error_field"></span>
                                            </div>
                                            <input type="text" class="form-control" size="8" maxlength="8" name="searchParam" value="" style="width: 142px; flex: none;display: inline-block;">
                                            <button class="btn-primary" type="submit" style="font-size: 19px">
                                                Выполнить
                                            </button>
                                        </form>
                                    </td></tr></table>-->
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                       <textarea style="width:100%;margin-top: 10px;margin-bottom: 0px;max-height:598px;min-height: 220px;" name="message" maxlength="2000" minlength="1"></textarea>
                    </td>
                </tr>
            </table></form>
            </#if>
    </div>
</#macro>