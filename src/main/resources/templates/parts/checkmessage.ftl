<#macro checkmessage message>
    <style>
        .mainrightblockmain{
            width: 1550px;}
        .naviga11{
            margin-right: 50px;
        }
    </style>
    <div class="form-group">
        <table class="tablemessage">
            <tr style="height:25px;border-bottom:1px solid #e4e4e4;border-top-left-radius: 16px;border-top-right-radius: 16px;margin: 0px;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 15);">
                <th style="width: 85px;">
                </th>
                <th style="border-right: 1px solid #e4e4e4; text-align: center" class="td2">
                    Дата
                </th>
                <th class="td3">
                    Тема
                    <a href="/kabinet/messages" style="float: right;margin-right: 50px;font-size: 17px"><i class="fas fa-sync"></i></a>
                </th>
                <th class="td4" style="    width: 10%;">
                </th>
            </tr>
        </table>
        <div class="searchdiv">
        </div>
    </div>

    <div class="listmessage">
        <div style="background-color: #ffffff;border-radius: 16px;">
            <table class="tablemessage">
                    <tr class="trlistmessage" style="border-left:none;border-right: none;">
                        <th style="width: 85px;">
                        </th>
                        <th class="td2" style="padding-left: 40px;">${message.getShipment()}
                        </th>
                        <th class="td3" >
                            <a class="hreff" style=";padding-top: 30px;display: unset!important;">${message.getMessage()}</a>
                        </th>
                        <#if customers?exists && (customers.roles[0])=="ADMIN">
                        <th class="td4">
                            <a href="/kabinet/admin/editMessage/${message.id}" style="margin-right: 111px;font-size: 20px;"><i class="fas fa-edit" ></i></a>
                        </th>
                            <#else>
                                <style>.td3{width:79%!important; }</style>
                                <th class="td4"style="width: 10%;">
                                </th>
                        </#if>
                    </tr>
            </table>
        </div>
    </div>
</#macro>