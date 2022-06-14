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
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3" style="display: inline-block;width: 1284px;">Не активные запросы: <span style="margin-left: 385px">
                <table style="display: inline-block">
                    <tr>
                <td><span style="    color: #4a494d;
    font-size: 30px;
    line-height: 34px;
    margin: 0;
    font-weight: 300;">Поиск:</span></td>
                <td>
             <form action="/kabinet/admin/disabledSupport" method="post" style="width:480px;display: inline-block">
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
            <#include "../parts/csrf.ftl">
        </button>
            </form>
            </td></tr></table>
            </span>
        </h1>
    </div>
    <div class="form-group" style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
    <div class="listmessage" style="max-height: 775px!important;">
    <table style="width: 100%">
        <#if isActive??>
            <#list isActive as el>
                <tr class="" style="border-left:none;border-right: none; border-top: 1px solid;">
                    <th class="td3">
                        <a class="hreff" href="/kabinet/admin/disabledSupport/chat/${el.id}" style="height:80px;padding-top: 30px"><h5 style="margin:0 50px 0;display: inline-block">Номер Запроса:${el.id}</h5>
                            <h5 style="display: inline-block">${el.topic}</h5></a>
                    </th>
                </tr>
            </#list>
        </#if>
    </table>
    </div>
</div>

</#macro>