<#macro message>
    <div class="form-group">
        <table class="tablemessage">
            <tr style="height:25px;border-bottom:1px solid #e4e4e4;border-top-left-radius: 16px;border-top-right-radius: 16px;margin: 0px;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 15);">
                <th style="width: 85px;">
                </th>
                <th style="border-right: 1px solid #e4e4e4;" class="td2">
                    Дата
                    <li class="nav-item dropdown"
                        style="display: inline-block;float:right;height: 25px;">
                        <a class="nav-link rounded dropdown-toggle waves-effect waves-light"
                           data-toggle="dropdown" aria-expanded="false"
                           style="padding-top: 0px;padding-bottom: 0px;">
                            <i class="fab fa-searchengin" style="font-size: 15px;"></i>Поиск
                            по Дате </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-info"
                             aria-labelledby="navbarDropdownMenuLink-4"
                             x-placement="bottom-end" style="position: absolute;
                                                     will-change: transform; top: 0px; left: 0px; transform: translate3d(-69px, 25px, 0px);">
                                    <fieldset>
                                        <form action="/kabinet/messages/search" method="post" name="messageObject">
                                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                                            <a class="dropdown-item waves-effect waves-light">
                                                <div style="display: inline-block;">C  </div>
                                                <div style="display: inline-block;"><input class="form-control" type="date" name="dateafter" value=""></div>

                                                <div style="display: inline-block;">по</div>
                                                <div style="display: inline-block;"><input class="form-control" type="date" name="datebefore" value=""></div>
                                            </a>
                                            <a style="margin: 0 auto;padding: 0 auto;">
                                                <button class="btn-primary" type="submit" style="margin: 0 auto 0;display: block;">
                                                    Применить
                                                </button>
                                            </a>
                                        </form>
                                    </fieldset>
                        </div>
                    </li>
                </th>
                <th class="td3">
                    Тема
                    <a href="/kabinet/messages" style="float: right;margin-right: 50px;font-size: 17px"><i class="fas fa-sync"></i></a>
                </th>
            </tr>

        </table>
        <div class="searchdiv">
        </div>
    </div>

    <div class="listmessage">
        <div style="background-color: #ffffff;border-radius: 16px;">
            <table class="tablemessage">
                <#if nonemesage?exists && nonemesage=="run">
                    <th class="td3">
                        <a class="hreff" style="height:80px;padding-top: 30px">По поиску ничего не найдено</a>
                    </th>
                <#else>
                <#if but=="search">
                    <#list page as el>
                        <tr class="trlistmessage" style="border-left:none;border-right: none;">
                            <td style="width: 85px;">
                            </td>
                            <th class="td2" style="padding-left: 40px;">
                                ${el.shipment}
                            </th>
                            <th class="td3">
                                <#if el.message?length gt 72>
                                    <a class="hreff" href="${url}/check/${el.id}"
                                       style="height:80px;padding-top: 30px">${el.message?substring(0,70)}...</a>
                                <#else>
                                    <a class="hreff"     style="height:80px;padding-top: 30px">${el.message}</a>
                                </#if>
                            </th>
                            <#if customers?exists && (customers.roles[0])=="ADMIN">
                            <th class="td4">
                                <a href="/kabinet/admin/editMessage/${el.id}" style="margin-right: 111px;font-size: 20px;"><i class="fas fa-edit" ></i></a>
                            </th>
                            <#else>
                                <th class="td4"style="width: 10%;">
                                </th>
                            </#if>
                        </tr>
                    </#list>
                <#else>
                    <#list page.content as el>
                        <tr class="trlistmessage" style="border-left:none;border-right: none;">
                            <td style="width: 85px;">
                            </td>
                            <th class="td2" style="padding-left: 40px;">
                                ${el.shipment}
                            </th>
                            <th class="td3">
                                <#if el.topic?length gt 72>
                                    <a class="hreff" href="${url}/check/${el.id}"
                                       style="height:80px;padding-top: 30px">${el.topic?substring(0,70)}...</a>
                                <#else>
                                    <a class="hreff" href="${url}/check/${el.id}"
                                       style="height:80px;padding-top: 30px">${el.topic}</a>
                                </#if>
                            </th>
                            <#if customers?exists && (customers.roles[0])=="ADMIN">
                                <th class="td4">
                                    <a href="/kabinet/admin/editMessage/${el.id}" style="margin-right: 111px;font-size: 20px;"><i class="fas fa-edit" ></i></a>
                                </th>
                            <#else>
                                <th class="td4"style="width: 10%;">
                                </th>
                            </#if>

                        </tr>
                    </#list>
                </#if>
                </#if>
            </table>
        </div>
    </div>


<#if but!="search">
    <#import "blockss.ftl" as p>
    <table style="background-color: #fff;margin-top:20px;width: 100%;border-radius:16px">
        <tr class="trlistmessage"
            style="height:60px!important;border-left:none;border-right:none;border-top:none;border-radius:16px">
            <td style="width: 86px ">
            </td>
            <td style="width: 20%">
            </td>
            <td style="width: 76%">
                <@p.pager url page/>
            </td>
        </tr>
    </table>
    </#if>
</#macro>