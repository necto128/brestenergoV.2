<#macro editNews>
    <link rel="stylesheet" href="/style/profile.css">
    <script type="text/javascript" src="/js/kabinet/animete.js"></script>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3"><X>Редактирование новостей</X></h1>
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
        <form action="/kabinet/admin/editNews/${news.id}" method="post" enctype="multipart/form-data">
            <table style="margin: 0 50px 0;width: 92.38%;%;">
                <tr>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="input-group">
                            <div> <label class="control-label" style="width: auto!important;">Выберите картинку: <INPUT type="file" name="file">
                                </label><br>
                                <img src="/imger/${news.img}" style="width: 150px;height: 150px;margin: 10px">
                            </div>

                            <div>
                                <input type="text" class="form-control" maxlength="49" minlength="4"  name="etopic" value="${news.topic}"  style="width: 476px; flex: none;display: inline-block;">
                                <#include "../smallBlock/csrf.ftl">
                                <button class="btn-primary" type="submit" style="">
                                    Сохранить
                                </button>
                            </div>

                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                       <textarea style="width:100%;margin-top: 0px;margin-bottom: 0px;max-height:540px;min-height: 500px;" name="emessages" maxlength="2000">${news.messages}</textarea>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</#macro>