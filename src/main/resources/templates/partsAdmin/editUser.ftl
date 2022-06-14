<#macro editUser>


    <link rel="stylesheet" href="/style/profile.css" xmlns:почты="http://www.w3.org/1999/xhtml">
    <script type="text/javascript" src="/js/kabinet/animete.js"></script>
    <style>
        .mainrightblockmain {
            background-color: transparent;
            width: 1208px !important;
        }

        .control-label {
            width: 200px !important;
        }

        .rows {
            float: left !important;
            margin-left: 300px;
        }
    </style>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4" style="display: inline-block">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3">Редактирование пользователя</h1>
    </div>


    <div class="form-group"
         style="margin: 1rem 1rem 1rem;width: 570px;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);display: inline-block;">
        <table style="margin-left: 50px;">
            <tbody>
            <tr>
                <td style="/* width: 50px; */">
                    <label class="control-label">Номер счёта:</label>
                </td>
                <td>
                    <label class="label-control">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="account" maxlength="49" minlength="4"
                                   name="username" value="${((obj.account.accountUser)??)?then(obj.account.accountUser,"")}"
                                   style="width: 300px;" disabled>
                        </div>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Регистрационный номер:</label>
                </td>
                <td>
                    <label class="label-control">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="account2" minlength="4" name="accountUser"
                                   value="${((obj.account.accountUser)??)?then(obj.account.accountUser,"")}"
                                   style="width: 300px;" disabled>
                        </div>
                    </label>
                </td>
            </tr>
            <tr>
                <td style="width: 200px!important;">
                    <div class="form-group inline-value" style="
    width: 200px;
">
                        <label class="control-label" for="Phone">Пороль:</label>
                    </div>
                </td>
                <td><label class="label-control">

                        <div class="input-group mb-3">
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="password"
                                   value=""
                                   style="width: 300px;">
                        </div>

                    </label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="FaceSurname">Имя:</label>
                    </div>
                </td>
                <td><label class="label-control">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="firstname"
                                   value="${((obj.firstname)??)?then(obj.firstname,"")}"
                                   style="width: 300px;">

                        </div>
                    </label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="FaceSecondName">Фамилия:</label>
                    </div>
                </td>
                <td><label class="label-control">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="lastname"
                                   value="${((obj.lastname)??)?then(obj.lastname,"")}"
                                   style="width: 300px;">

                        </div>
                    </label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="FacePosition">Отчество:</label>
                    </div>
                </td>
                <td><label class="label-control">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="middlename"
                                   value="${((obj.middlename)??)?then(obj.middlename,"")}"
                                   style="width: 300px;">

                        </div>
                    </label></td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="FacePosition">Рабочий телефон:</label>
                    </div>
                </td>
                <td><label class="label-control">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="workphone"
                                   value="${((obj.workphone)??)?then(obj.workphone,"")}"
                                   style="width: 300px;">

                        </div>
                    </label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="Phone">Домашний телефон:</label>
                    </div>
                </td>
                <td><label class="label-control">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="homephone"
                                   value="${((obj.homephone)??)?then(obj.homephone,"")}"
                                   style="width: 300px;">

                        </div>
                    </label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="Phone">Адрес электронной почты: </label>
                    </div>
                </td>
                <td><label class="label-control">
                        <div class="input-group mb-3">
                            <input type="email" class="form-control" maxlength="49" minlength="4" name="email"
                                   value="${((obj.address)??)?then(obj.address,"")}"
                                   style="width: 300px;">

                        </div>
                    </label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label"></label>
                    </div>
                </td>
                <td><label class="label-control"></label></td>
            </tr>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery.maskedinput@1.4.1/src/jquery.maskedinput.min.js"
            type="text/javascript"></script>
    <div STYLE="display:inline-block">

        <div class="form-group"
             style="margin: 1rem 1rem 1rem;width: 570px;    height: 259px;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1); background: url(/static/img/logo.png) 53% 100% no-repeat;
    background-size: contain;">

        </div>
        <div class="form-group"
             style="margin: 1rem 1rem 1rem;width: 570px;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
            <table style="margin-left: 50px;">
                <tbody>
                <tr>
                    <td style="/* width: 50px; */">
                        <label class="control-label">Район:</label>
                    </td>
                    <td>
                        <label class="label-control">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" maxlength="49" minlength="4" name="area"
                                       value="${((obj.area)??)?then(obj.area,"")}"
                                       style="width: 300px;">

                            </div>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">Адрес:</label>
                    </td>
                    <td>
                        <label class="label-control">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" maxlength="49" minlength="4" name="address"
                                       value="${((obj.address)??)?then(obj.address,"")}"
                                       style="width: 300px;">

                            </div>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">Дом/Квартира:</label>
                        </div>
                    </td>
                    <td><label class="label-control">

                            <div class="input-group mb-3">
                                <input type="text" class="form-control" maxlength="49" minlength="4" name="home"
                                       value="${((obj.home)??)?then(obj.home,"")}"
                                       style="width: 300px;">

                            </div>

                        </label></td>
                </tr>
                <tr>
                    <td>
                    </td>

                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label"></label>
                        </div>
                    </td>
                    <td><label class="label-control">
                            <button class="btn-primary" type="submit" style="margin: 0 auto 0;display: block;">
                                Сохранить
                            </button>
                        </label></td>
                </tr>
                <form action="/kabinet/admin/editUser" method="post">
                    <tr>
                        <td>
                            <div class="form-group inline-value">
                                <label class="control-label">
                                    <input type="text" class="form-control" id="searchId" name="searchId" value=""
                                           style="width: 95px;float: right;">
                                </label>
                            </div>
                        </td>
                        <td><label class="label-control">
                                <div class="input-group mb-3">
                                    <button class="btn-primary" type="submit" style="margin: 0 auto 0;display: block;">
                                        Поиск
                                    </button>
                                    <#include "../smallBlock/csrf.ftl">
                                </div>
                            </label></td>
                    </tr>
                </form>

                <#include "../smallBlock/csrf.ftl">
                </tbody>
            </table>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $.mask.definitions['~'] = "[+-]";
            $("#searchId").mask("9999-999")
            $("#account").mask("9999-999")
            $("#account2").mask("9999-999")
            $("input").blur(function () {
                $("#info").html("Unmasked value: " + $(this).mask());
            }).dblclick(function () {
                $(this).unmask();
            });
        });
    </script>
</#macro>