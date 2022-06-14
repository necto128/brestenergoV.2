<#macro editProfile>
    <link rel="stylesheet" href="/style/editprofile.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery.maskedinput@1.4.1/src/jquery.maskedinput.min.js"
            type="text/javascript"></script>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3">Редактирование</h1>
    </div>
    <div class="form-group" style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
            <form action="/kabinet/editProfile" method="post">
            <table style="margin-left: 50px">
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">Рабочий телефон:</label>
                        </div>
                    </td>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">
                                <div class="input-group mb-3">
                                    <input class="form-control" id="iphone" type="text"
                                           placeholder="+375 (xx) xxx-xx-xx" value="${info.workphone}" name="workphone"/>
                                </div>
                            </label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">Домашний телефон:</label>
                        </div>
                    </td>

                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="RegistrationNumber">
                                <div class="input-group mb-3">
                                    <input class="form-control" id="homePhone" type="text" placeholder="xx-xx-xx"
                                           value="${info.homephone}" name="homephone"/>
                                </div>
                            </label></div>

                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Email">Адрес электронной почты</label>
                        </div>
                    </td>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="RegistrationNumber">
                                <div class="input-group mb-3">
                                    <input type="email" class="form-control" id="input3" maxlength="31" name="email" value="${info.email}">
                                </div>
                            </label></div>
                    </td>
                    <td>
                        <button class="btn-primary" id="buttonSave" name="buttonSave" type="submit"
                                style="margin-left: 65px;">
                            Применить
                        </button>
                    </td>
                </tr>

                <#include "../smallBlock/csrf.ftl">
            </table>
            </form>
        <script type="text/javascript">
            $(function () {
                $.mask.definitions['~'] = "[+-]";
                $("#iphone").mask("+375 (99) 999-99-99");
                $("#homePhone").mask("99-99-99")
                $("input").blur(function () {
                    $("#info").html("Unmasked value: " + $(this).mask());
                }).dblclick(function () {
                    $(this).unmask();
                });
            });
        </script>
    </div>
</#macro>