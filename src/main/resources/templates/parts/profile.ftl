<#macro profile>
    <link rel="stylesheet" href="/style/profile.css">
    <script type="text/javascript" src="/js/kabinet/animete.js"></script>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3">Контактная информация</h1>
    </div>
    <div class="form-group" style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
        <#if info??>
            <table style="margin-left: 50px">
                <tr>
                    <td>
                        <label class="control-label" for="RegistrationNumber">Состояние:</label>
                    </td>
                    <#if info.account.active=true>
                    <td>
                        <label class="label-control" for="RegistrationNumber">Активный</label>
                    </td>
                    <#else>
                        <td>
                            <label class="label-control" for="RegistrationNumber">Отключён</label>
                        </td>
                    </#if>
                </tr>
                <tr>
                    <td>
                        <label class="control-label" for="RegistrationNumber">Регистрационный номер:</label>
                    </td>
                    <td>
                        <label class="label-control" for="RegistrationNumber">${info.account.accountUser}</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="FaceSurname">Фамилия:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber">${info.lastname}</label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">Имя:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber">${info.firstname}</label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="FaceSecondName">Отчество:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber">${info.middlename}</label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="FacePosition">Район:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber">${info.area}</label></td>
                </tr>
                <tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="FacePosition">Адресс:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber">${info.address} д. ${info.home}</label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">Рабочий телефон:</label>
                        </div>
                    </td>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">${info.workphone}</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">Домашний телефон:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber">${info.homephone}</label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Email">Адрес электронной почты</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber">${info.email}</label></td>
                    <td colspan="2">
                        <form action="/kabinet" method="post"><input type="hidden" name="_csrf" value="${_csrf.token}">
                            <button class="btn-primary" id="buttonSave" name="buttonSave" type="submit"
                                    style="margin-left: 65px;">
                                <input type="hidden" name="atribut" value="editProfile"/>
                                Редактировать
                            </button>
                        </form>
                    </td>
                </tr>
            </table>
        <#else>
            <table style="margin-left: 50px">
                <tr>
                    <td>
                        <label class="control-label" for="RegistrationNumber">Состояние:</label>
                    </td>
                    <td>
                        <label class="label-control" for="RegistrationNumber"></label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label" for="RegistrationNumber">Регистрационный номер:</label>
                    </td>
                    <td>
                        <label class="label-control" for="RegistrationNumber"></label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">Имя:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber"></label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="FaceSurname">Фамилия:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber"></label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="FaceSecondName">Отчество:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber"></label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="FacePosition">Район:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber"></label></td>
                </tr>
                <tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="FacePosition">Адресс:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber"></label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">Рабочий телефон:</label>
                        </div>
                    </td>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone"></label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Phone">Домашний телефон:</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber"></label></td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group inline-value">
                            <label class="control-label" for="Email">Адрес электронной почты</label>
                        </div>
                    </td>
                    <td><label class="label-control" for="RegistrationNumber"></label></td>
                    <td colspan="2">
                    </td>
                </tr>
            </table>
        </#if>
    </div>
</#macro>