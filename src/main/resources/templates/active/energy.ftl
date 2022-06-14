<#macro energy>
    <link rel="stylesheet" href="/static/style/profile.css">
    <script type="text/javascript" src="/static/js/kabinet/animete.js"></script>
    <div id="content-header" class="col-xs-12 col-sm-7 col-md-7 col-ld-4">
        <h1 id="content-header-title" class="page-title txt-color-blueDark ml-3">Контактная информация</h1>
    </div>
    <div class="form-group" style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
        <table style="margin-left: 50px">
            <tr>
                <td>
                    <label class="control-label" for="RegistrationNumber">Регистрационный номер:</label>
                </td>
                <td>
                    <label class="label-control" for="RegistrationNumber">Регистрационный номер:</label>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="FaceSurname">Фамилия:</label>
                    </div>
                </td>
                <td><label class="label-control" for="RegistrationNumber">Регистрационный номер:</label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="FaceSecondName">Отчество:</label>
                    </div>
                </td>
                <td><label class="label-control" for="RegistrationNumber">Регистрационный номер:</label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="FacePosition">Адресс:</label>
                    </div>
                </td>
                <td><label class="label-control" for="RegistrationNumber">Регистрационный номер:</label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="Phone">Рабочий телефон:</label>
                    </div>
                </td>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="Phone">Рабочий телефон:</label>
                    </div>
                    <!--  <div class="input-group mb-3">
                          <input type="text" class="form-control" id="input1" aria-label="Recipient's username" aria-describedby="button-addon2">
                      </div>-->
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="Phone">Домашний телефон:</label>
                    </div>
                </td>
                <td><label class="label-control" for="RegistrationNumber">
                        asdafsdasda
                    </label></td>
            </tr>
            <tr>
                <td>
                    <div class="form-group inline-value">
                        <label class="control-label" for="Email">Адрес электронной почты</label>
                    </div>
                </td>
                <td><label class="label-control" for="RegistrationNumber">
                        asdasdasdasd
                    </label></td>
                <td colspan="2">
                    <form action="/kabinet" method="post">
                        <button class="btn-primary" id="buttonSave" name="buttonSave" type="submit" style="margin-left: 65px;">
                            <input type="hidden" name="atribut" value="editProfile"/>
                            Редактировать
                        </button>
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                    </form>
                </td>
            </tr>

        </table>
    </div>
</#macro>