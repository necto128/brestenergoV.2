<#macro addUser>


    <link rel="stylesheet" href="/style/profile.css" xmlns:почты="http://www.w3.org/1999/xhtml">
    <script type="text/javascript" src="/js/kabinet/animete.js"></script>
    <style>
        .mainrightblockmain {
            background-color: transparent;
            width: 1208px!important;
        }

        .control-label {
            width: 200px !important;
        }
        .rows{
            float: left!important;
            margin-left: 300px;
        }
    </style>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3">Добавление пользователя</h1>
    </div>
    <div class="form-group"
         style="margin: 1rem 1rem 1rem;width: 570px;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);display: inline-block;">
        <form action="/kabinet/admin/addUser" method="post">
        <table style="margin-left: 50px;">
            <tbody>
            <tr>
                <td style="/* width: 50px; */">
                    <label class="control-label">Номер счёта:</label>
                </td>
                <td>
                    <label class="label-control">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" id="account" maxlength="49" minlength="4" name="username" value="${obj.accountUser}"
                                   style="width: 300px;" disabled>
                            <input type="hidden" name="username" value="${obj.accountUser}">

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
                            <input type="text" class="form-control" id="account2" minlength="4" name="accountUser" value="${obj.accountUser}"
                                   style="width: 300px;" disabled>
                            <input type="hidden" name="accountUser" value="${obj.accountUser}">
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
                            <input type="text" class="form-control"  maxlength="49" minlength="4" name="password" value="${obj.password}"
                                   style="width: 300px;" disabled>
                            <input type="hidden" name="password" value="${obj.password}">
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
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="firstname" value=""
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
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="lastname" value=""
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
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="middlename" value=""
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
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="workphone" value=""
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
                            <input type="text" class="form-control" maxlength="49" minlength="4" name="homephone" value=""
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
                            <input type="email" class="form-control" maxlength="49" minlength="4" name="email" value=""
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
                                       value=""
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
                                       value=""
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
                                       value=""
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
                    <td><label class="label-control">
                            <div class="input-group mb-3">
                            </div>
                        </label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label"></label>
                        </div>
                    </td>
                    <td><label class="label-control">
                            <button class="btn-primary" type="submit" style="margin: 0 auto 0;display: block;">
                                Создать запрос
                            </button>
                        </label></td>
                </tr>
<#include "../smallBlock/csrf.ftl">
                </tbody>
            </table>
            </form>
        </div>
    </div>
</#macro>