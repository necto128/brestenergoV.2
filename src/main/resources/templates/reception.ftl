<!Doctype html>
<html lang="en" style="height: 100%;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="keywords"
          content="Брестэнерго, электроэнергия, теплоэнергия, электросети, теплосети, электрические сети, тепловые сети, энергия, аскуэ">
    <meta name="description" content="Официальный сайт РУП Брестэнерго">
    <meta name="google-site-verification" content="3hWEnwwlrQB3sSPVpcOd0zxK0bpdBjPkkZiqV_3g1FA">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="theme-color" content="#3b465e">

    <link rel="icon" type="image/png" href="/static/img/logo.png">
    <title>Запись на личный прием
    </title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <!-- Bootstrap core CSS -->
    <link href="/static/style/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="/static/style/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="/static/style/style.min.css" rel="stylesheet">
    <!--<link href="/css/style.css" rel="stylesheet">-->
    <!-- Button Visually impared-->
    <link rel="stylesheet" href="/static/style/bvi.min.css" type="text/css">
    <!-- JQuery -->
    <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>

    <!--Button Visually impared-->
    <script src="/static/js/button-visually-impaired/js/responsivevoice.min.js"></script>
    <script src="/static/js/button-visually-impaired/js/bvi-init-panel.js"></script>
    <script src="/static/js/button-visually-impaired/js/bvi.min.js"></script>
    <script src="/static/js/button-visually-impaired/js/js.cookie.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="../static/js/popper.min.js"></script>
    <script src="/static/js/bootstrap-filestyle/bootstrap-filestyle.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="/static/js/mdb.min.js"></script>
</head>

<body style="position: relative; min-height: 100%; top: 0px;">
<#import "smallBlock/nav.ftl" as param>
<@param.nav/>


<!--Main layout-->


<main id="main">
    <div class="container py-5">

        <div class="row py-5">
            <div class="col-12 py-5">
                <div class="text-center white-text ">
                    <h1 class="h1-responsive brestenergofont">Запись на личный прием</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 white rounded" style="padding-left: 0px;padding-right: 0px">
                <div class="container">
                    <div class="p-4">
                        <section>

                            <form method="post" action="/www.brestenergo.by/reception" onsubmit="return validateAppointment();">
                                <input type="hidden" name="_token" value="vLp8xsPMgY8hhF0iDfH6p2tHVrZibDpnbOpgxySx">
                                <div class="form-group">
                                    <div>ФИО и должность должостного лица
                                        <font color="red"><small><sup></sup></small></font>s6
                                    </div>
                                    <div>Прозвішча, уласнае імя, імя па бацьку, і пасада службовай асобы
                                        <font color="red"><small><sup></sup></small></font>
                                    </div>
                                    <div>
                                        <select class="browser-default custom-select" name="organization"
                                                id="organization">
                                            <option value="Сергей Николаевич Шебеко" selected="">Сергей Николаевич
                                                Шебеко - Генеральный директор
                                            </option>
                                            <option value="Левонюк Виктор Петрович">Левонюк Виктор Петрович - главный
                                                инженер
                                            </option>
                                            <option value="Саливончик Александр Иванович">Саливончик Александр Иванович
                                                - заместитель генерального директора по экономике и финансам
                                            </option>
                                            <option value="Заместитель генерального директора по капитальному строительству">
                                                Заместитель генерального директора по капитальному строительству
                                            </option>
                                            <option value="Кулиневич Геннадий Васильевич">Кулиневич Геннадий Васильевич
                                                - заместитель генерального директора по сбыту энергии
                                            </option>
                                            <option value="Хмелевская Ирина Алексеевна">Хмелевская Ирина Алексеевна -
                                                заместитель генерального директора по общим вопросам
                                            </option>
                                        </select>
                                        <span id="organization_error" class="error_field"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <p style="font-style: italic;">Введите реальные фамилию имя и отчество, чтобы мы
                                        знали как к вам обращаться</p>
                                </div>
                                <div class="form-group">
                                    <div>Ваша фамилия, имя, отчество
                                        <font color="red"><small><sup>*</sup></small></font>
                                    </div>
                                    <div>Ваша прозвішча, уласнае імя, імя па бацьку
                                        <font color="red"><small><sup>*</sup></small></font>
                                    </div>
                                    <div>
                                        <input name="fio" id="fio" type="text" class="form-control mb-4"
                                               placeholder="Ваша фамилия, имя, отчество" minlength="3" maxlength="150">
                                        <span id="fio_error" class="error_field"></span>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <div>Ваш адрес
                                        <font color="red"><small><sup>*</sup></small></font>
                                    </div>
                                    <div>Ваш адрас
                                        <font color="red"><small><sup>*</sup></small></font>
                                    </div>
                                    <div>
                                        <input name="address" id="address" type="text" class="form-control mb-4"
                                               placeholder="Ваш адрес" maxlength="150">
                                        <!--<span id="address_error" class="error_field"></span>-->
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div>Обратный e-mail:
                                        <font color="red"><small><sup>*</sup></small></font><br>Введите реальный e-mail
                                        адрес, на него вы получите ответ на ваше сообщение
                                    </div>
                                    <div>Зваротны e-mail:
                                        <font color="red"><small><sup>*</sup></small></font><br>Увядзіце рэальны e-mail
                                        адрас, на яго вы атрымаеце адказ на ваша паведамленне
                                    </div>
                                    <div>
                                        <input name="email" id="email" type="email" class="form-control mb-4"
                                               placeholder="example@example.com" minlength="5" maxlength="55">
                                        <span id="email_error" class="error_field"></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div>Контактный телефон</div>
                                    <div>Кантактны тэлефон</div>
                                    <div>
                                        <input name="phone" id="phone" type="number" class="form-control mb-4"
                                               placeholder="Контактный телефон" maxlength="55">
                                        <!--<span id="phone_error" class="error_field"></span>-->
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div>Сообщение:
                                        <font color="red"><small><sup>*</sup></small></font>
                                    </div>
                                    <div>Паведамленне:
                                        <font color="red"><small><sup>*</sup></small></font>
                                    </div>
                                    <div>
                                        <textarea name="message" id="message" cols="24" class="form-control mb-4"
                                                  placeholder="Сообщение"
                                                  style="overflow:hidden; height:80px; background:#FFFFFF; border:1px solid #CCCCCC; color:#191970;"></textarea>
                                        <span id="message_error" class="error_field"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div style="text-align:left;">
                                        <font color="red"><small><sup>*</sup></small></font> Поля обязательные для
                                        заполнения<br>
                                        <font color="red"><small><sup>*</sup></small></font> Палі абавязковыя для
                                        запаўнення<br>
                                    </div>
                                </div>
                                  <#include "./parts/csrf.ftl">
                                <div class="form-group">
                                    <button class="btn btn-outline-black btn-lg waves-effect waves-light" type="submit"
                                            name="action">
                                        <i class="fa fa-paper-plane pr-2" aria-hidden="true"></i>Отправить
                                    </button>
                                </div>
                            </form>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script type="text/javascript">
    function validateAppointment() {
        //Fields
        var organization = document.getElementById('organization').value,
            fio = document.getElementById('fio').value.trim(),
            address = document.getElementById('address').value.trim(),
            email = document.getElementById('email').value.trim(),
            phone = document.getElementById('phone').value.trim(),
            message = document.getElementById('message').value.trim();

        //Errors
        var organization_error = document.getElementById("organization_error"),
            fio_error = document.getElementById("fio_error"),
            email_error = document.getElementById("email_error"),
            message_error = document.getElementById("message_error");

        var exit = false,
            fio_parts = fio.split(' ');
        if (fio == "" || (fio != "" && (fio_parts.length < 3 || fio_parts[0].length < 3))) {
            document.getElementById('fio').style.border = "2px solid red";
            fio_error.innerHTML = "Введите фамилию, имя, отчество";
            exit = true;
        } else {
            document.getElementById('fio').style.border = "1px solid gray";
            fio_error.innerHTML = "";
        }

        if (email == "") {
            document.getElementById('email').style.border = "2px solid red";
            email_error.innerHTML = "Введите e-mail";
            exit = true;
        } else {
            document.getElementById('email').style.border = "1px solid gray";
            email_error.innerHTML = "";
        }

        if (message.length < 3) {
            document.getElementById('message').style.border = "2px solid red";
            message_error.innerHTML = "Введите сообщение";
            exit = true;
        } else {
            document.getElementById('message').style.border = "1px solid gray";
            message_error.innerHTML = "";
        }

        if (exit) {
            return false;
        } else {
            return true;
        }
    }
</script>


<!--Main layout-->

<#include "smallBlock/footer.ftl">


<script type="text/javascript">
    $('document').ready(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 700) {
                $('.scrollUp').fadeIn();
            } else {
                $('.scrollUp').fadeOut();
            }
        });

        $('.scrollUp').click(function () {
            $("html, body").animate({
                scrollTop: 0
            }, 700);
            return false;
        });
    });
</script>


<div class="scrollUp" style="display: none;"><a class="btn-floating btn-lg"><i class="fa fa-angle-up fa-2x"
                                                                               aria-hidden="true"></i></a></div>
</body>

</html>