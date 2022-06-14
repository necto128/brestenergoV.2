<#macro counter>
    <style>
        .mainrightblockmain {
            max-height: 850px;
            height: auto !important;
            min-height: 215px;
            width: 1350px;
        }
        .navth{
            width: 270px;
        }
        .rows{
            float: left!important;
            margin-left: 250px;
        }
    </style>
    <div class="form-group">
        <table class="tablemessage">
            <tr style="height:25px;border-bottom:1px solid #e4e4e4;border-top-left-radius: 16px;border-top-right-radius: 16px;margin: 0px;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 15); text-align: center">
                <th class="navth">
                    Дата снятия
                </th>
                <th style="border-right: 1px solid #e4e4e4;" class="navth">
                    Показания предыдущего периода
                    <!--<li class="nav-item dropdown"
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
                                <form action="/www.brestenergo.by/kabinet/messages/search" method="post"
                                      name="messageObject">
                                    <a class="dropdown-item waves-effect waves-light">
                                        <input class="form-control" type="date" name="tag" value=""/><br>
                                    </a>
                                    <a>
                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                        <button class="btn-primary"
                                                type="submit" style="margin-left: 65px">
                                            Применить
                                        </button>
                                    </a>
                                </form>
                            </fieldset>
                        </div>
                    </li>9 15 15 15 5-->
                </th>
                <th class="navth">
                    Показания текущего периода
                </th>
                <th class="navth">
                    Расход
                </th>
                <th class="navth">
                    Цена за кВт/ч
                </th>
            </tr>
        </table>
        <div class="searchdiv">
        </div>
    </div>

    <div class="listmessage" style="max-height: 802px!important">
        <div style="background-color: #ffffff;border-radius: 16px;">
            <table class="tablemessage" style="max-height: 793px;text-align: center">
                <#if page??>
                    <#list page.content as el>
                        <tr class="trlistmessage" style="border-left:none;border-right: none;">
                            <td class="navth">
                                ${(el.viewDate)?string["dd MMM yyyy"]}
                            </td>
                            <th class="navth">
                                ${el.previousPeriod}
                            </th>
                            <th class="navth">
                                ${el.currentPeriod}
                            </th>
                            <th class="navth">
                                ${el.expenses}
                            </th>
                            <th class="navth">
                                ${el.price.priceServices?string(",##0.0000")}
                            </th>
                        </tr>
                    </#list>
                    <#else>
                        <tr class="trlistmessage" style="border-left:none;border-right: none;">
                            <td class="navth">
                                Ни одного расчёта произведено не было.
                            </td>
                        </tr>
                </#if>
            </table>
        </div>
    </div>

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

</#macro>