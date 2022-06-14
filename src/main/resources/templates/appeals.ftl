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
    <meta name="csrf-token" content="vLp8xsPMgY8hhF0iDfH6p2tHVrZibDpnbOpgxySx">

    <link rel="icon" type="image/png" href="/static/img/logo.png">
    <title> Электронные обращения
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
    <script src="/static/js/button-visually-impaired/js/responsivevoice.min.js?ver=1.5.0"></script>
    <script src="/static/js/button-visually-impaired/js/bvi-init-panel.js"></script>
    <script src="/static/js/button-visually-impaired/js/bvi.min.js"></script>
    <script src="/static/js/button-visually-impaired/js/js.cookie.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="/static/js/popper.min.js"></script>
    <script src="/static/js/bootstrap-filestyle/src/bootstrap-filestyle.min.js"></script>
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
                <div class="text-center white-text">
                    <h1 class="h1-responsive brestenergofont">Электронные обращения</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 white rounded" style="padding-left: 0px;padding-right: 0px">
                <div class="container">
                    <div class="p-4">


                        <ul class="nav nav-tabs nav-pillss nav-fill tabsbrstenergo" id="myTab" role="tablist">
                            <li class="nav-item waves-effect waves-light">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#fiz" role="tab"
                                   aria-controls="home" aria-selected="true">
                                    <h5><strong>Физическим лицам</strong></h5>
                                </a>
                            </li>
                            <li class="nav-item waves-effect waves-light">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#jur" role="tab"
                                   aria-controls="profile" aria-selected="false">
                                    <h5><strong>Юридическим лицам</strong></h5>
                                </a>
                            </li>
                        </ul>


                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="fiz" role="tabpanel" aria-labelledby="home-tab">
                                <section>
                                    <form  method="post"
                                          enctype="multipart/form-data" onsubmit="return validInd();">
                                        <p class="h4 text-center mb-4">Задавайте свои вопросы. Мы обязательно
                                            постараемся ответить на них максимально чётко, ясно и точно.</p>

                                        <div class="form-group">
                                            <div>Наименование организации, которой направляется обращение
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Назва арганізацыі, якой накіроўваецца зварот
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <select class="browser-default custom-select" name="ind_select"
                                                        id="ind_select">
                                                    <option value="«Аппарат Управления»" selected="">«Аппарат
                                                        Управления»
                                                    </option>
                                                    <option value="«Агроэнерго Зеленевичи»">Филиал «Агроэнерго
                                                        Зеленевичи»
                                                    </option>
                                                    <option value="«Барановичские ТС»">Филиал «Барановичские ТС»
                                                    </option>
                                                    <option value="«Барановичские ЭС»">Филиал «Барановичские ЭС»
                                                    </option>
                                                    <option value="«Белоозерскэнергоремонт»">Филиал
                                                        «Белоозерскэнергоремонт»
                                                    </option>
                                                    <option value="«Березовская ГРЭС»">Филиал «Березовская ГРЭС»
                                                    </option>
                                                    <option value="«Брестские ТС»">Филиал «Брестские ТС»</option>
                                                    <option value="«Брестские ЭС»">Филиал «Брестские ЭС»</option>
                                                    <option value="«Оздоровительный центр «Энергия»">Филиал
                                                        «Оздоровительный центр «Энергия»
                                                    </option>
                                                    <option value="«Пинские ТС»">Филиал «Пинские ТС»</option>
                                                    <option value="«Пинские ЭС»">Филиал «Пинские ЭС»</option>
                                                    <option value="«Пружанские ЭС»">Филиал «Пружанские ЭС»</option>
                                                    <option value="«Учебный центр подготовки персонала «Энергетик»">
                                                        Филиал «Учебный центр подготовки персонала «Энергетик»
                                                    </option>
                                                    <option value="«Энерготелеком»">Филиал «Энерготелеком»</option>

                                                    <option value="«Барановичиэнергострой»">Филиал
                                                        «Барановичиэнергострой»
                                                    </option>
                                                </select>
                                                <span id="ind_select_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group d-none">
                                            <div>Должность и (или) ФИО лица, которому направляется обращение
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Пасад і (або) прозвішча, уласнае імя, імя па бацьку асобы, якой
                                                накіроўваецца зварот
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_receiver_fio" id="ind_receiver_fio"
                                                       class="form-control mb-4"
                                                       placeholder="Должность и (или) ФИО лица, которому направляется обращение"
                                                       type="text" maxlength="55">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Ваша фамилия
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Ваша прозвішча
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_lastname" id="ind_lastname" class="form-control mb-4"
                                                       placeholder="Ваша фамилия" type="text" maxlength="55" value="">
                                                <span id="ind_lastname_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Ваше имя
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Ваша уласнае імя
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_firstname" id="ind_firstname" class="form-control mb-4"
                                                       placeholder="Ваше имя" type="text" maxlength="55" value="">
                                                <span id="ind_firstname_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Ваше отчество
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Ваша імя па бацьку
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_middlename" id="ind_middlename"
                                                       class="form-control mb-4" placeholder="Ваше отчество" type="text"
                                                       maxlength="55" value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Район
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Раён
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_city_district" id="ind_city_district"
                                                       class="form-control mb-4" placeholder="Район" type="text"
                                                       maxlength="150" value="">
                                                <span id="ind_city_district_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Населённый пункт (деревня, агрогородок и т.д.)
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Населены пункт (вёска, аграгарадок і г.д.)
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_city" id="ind_city" class="form-control mb-4"
                                                       placeholder="Населённый пункт" type="text" maxlength="55"
                                                       value="">
                                                <span id="ind_city_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Индекс
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Iндэкс
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_city_index" id="ind_city_index"
                                                       class="form-control mb-4" placeholder="Индекс" type="number"
                                                       maxlength="10" value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Улица
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Вуліца
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_street" id="ind_street" class="form-control mb-4"
                                                       placeholder="Улица" type="text" maxlength="55" value="">
                                                <span id="ind_street_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Дом
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Дом
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_house" id="ind_house" class="form-control mb-4"
                                                       placeholder="Дом" type="text" maxlength="10" value="">
                                                <span id="ind_house_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Корпус
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Корпус
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_city_korpus" id="ind_city_korpus"
                                                       class="form-control mb-4" placeholder="Корпус" type="text"
                                                       maxlength="5" value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Квартира</div>
                                            <div>Кватэра</div>
                                            <div>
                                                <input name="ind_flat" id="ind_flat" class="form-control mb-4"
                                                       placeholder="Квартира" type="text" maxlength="10" value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Обратный e-mail:
                                                <font color="red"><small><sup>*</sup></small></font><br>Введите реальный
                                                e-mail адрес, на него вы получите ответ на ваше сообщение
                                            </div>
                                            <div>Зваротны e-mail:
                                                <font color="red"><small><sup>*</sup></small></font><br>Увядзіце рэальны
                                                e-mail адрас, на яго вы атрымаеце адказ на ваша паведамленне
                                            </div>
                                            <div>
                                                <input name="ind_email" id="ind_email" class="form-control mb-4"
                                                       type="email" placeholder="example@example.com" minlength="5"
                                                       maxlength="55" value="">
                                                <span id="ind_email_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Контактный телефон</div>
                                            <div>Кантактны тэлефон</div>
                                            <div>
                                                <input name="ind_phone" id="ind_phone" class="form-control mb-4"
                                                       placeholder="Контактный телефон" type="number" maxlength="55"
                                                       value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Тема Вашего обращения
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Тэма Вашага звароту
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="ind_theme" id="ind_theme" class="form-control mb-4"
                                                       placeholder="Тема Вашего обращения" type="text" maxlength="150"
                                                       value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Изложение сути обращения:
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Выкладанне сутнасці звароту:
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <textarea name="ind_message" id="ind_message" cols="24"
                                                          class="form-control" placeholder="Суть сообщения"
                                                          style="overflow:hidden; height:80px; background:#FFFFFF; border:1px solid #CCCCCC; color:#191970;"></textarea>
                                                <span id="ind_message_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Прикрепить файл (PDF, doc, txt, jpg, gif, png, zip, rar до 5Mb)</div>
                                            <div>Дадаць файл (PDF, doc, txt, jpg, gif, png, zip, rar да 5Mb)</div>
                                            <div>
                                                <input class="" type="file" name="upload_file_ind" id="upload_file_ind">

                                                <span id="upload_file_ind_error" class="error_field"></span>

                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>
                                                <font color="red"><small><sup>*</sup></small></font> Поля обязательные
                                                для заполнения<br>
                                                <font color="red"><small><sup>*</sup></small></font> Палі абавязковыя
                                                для запаўнення<br>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <button class="btn btn-outline-black btn-lg waves-effect waves-light"
                                                    type="submit" name="action">
                                                <i class="fa fa-paper-plane pr-2" aria-hidden="true"></i>Отправить
                                            </button>
                                        </div>
                                    </form>

                                </section>

                            </div>


                            <div class="tab-pane fade" id="jur" role="tabpanel" aria-labelledby="profile-tab">

                                <section>
                                    <!-- Default form contact -->
                                    <form class="p-2"
                                          method="post" enctype="multipart/form-data" onsubmit="return validJur();">

                                        <p class="h4 text-center mb-4">Задавайте свои вопросы. Мы обязательно
                                            постараемся ответить на них максимально чётко, ясно и точно.</p>

                                        <div class="form-group">
                                            <div>Наименование организации, которой направляется обращение
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Назва арганізацыі, якой накіроўваецца зварот
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <select class="browser-default custom-select" name="jur_select"
                                                        id="jur_select">
                                                    <option value="«Аппарат Управления»" selected="">«Аппарат
                                                        Управления»
                                                    </option>
                                                    <option value="«Агроэнерго Зеленевичи»">Филиал «Агроэнерго
                                                        Зеленевичи»
                                                    </option>
                                                    <option value="«Барановичские ТС»">Филиал «Барановичские ТС»
                                                    </option>
                                                    <option value="«Барановичские ЭС»">Филиал «Барановичские ЭС»
                                                    </option>
                                                    <option value="«Белоозерскэнергоремонт»">Филиал
                                                        «Белоозерскэнергоремонт»
                                                    </option>
                                                    <option value="«Березовская ГРЭС»">Филиал «Березовская ГРЭС»
                                                    </option>
                                                    <option value="«Брестские ТС»">Филиал «Брестские ТС»</option>
                                                    <option value="«Брестские ЭС»">Филиал «Брестские ЭС»</option>
                                                    <option value="«Оздоровительный центр «Энергия»">Филиал
                                                        «Оздоровительный центр «Энергия»
                                                    </option>
                                                    <option value="«Пинские ТС»">Филиал «Пинские ТС»</option>
                                                    <option value="«Пинские ЭС»">Филиал «Пинские ЭС»</option>
                                                    <option value="«Пружанские ЭС»">Филиал «Пружанские ЭС»</option>
                                                    <option value="«Учебный центр подготовки персонала «Энергетик»">
                                                        Филиал «Учебный центр подготовки персонала «Энергетик»
                                                    </option>
                                                    <option value="«Энерготелеком»">Филиал «Энерготелеком»</option>

                                                    <option value="«Барановичиэнергострой»">Филиал
                                                        «Барановичиэнергострой»
                                                    </option>
                                                </select>
                                                <span id="jur_select_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group d-none">
                                            <div>Должность и (или) ФИО лица, которому направляется обращение
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Пасад і (або) прозвішча, уласнае імя, імя па бацьку асобы, якой
                                                накіроўваецца зварот
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_receiver_fio" id="jur_receiver_fio"
                                                       class="form-control mb-4" type="text"
                                                       placeholder="Должность и (или) ФИО лица, которому направляется обращение"
                                                       maxlength="55" value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Полное наименование юридического лица (индивидуального предпринимателя)
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Поўнае найменне юрыдычнай асобы (індывідуальнага прадпрымальніка)
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_company" id="jur_company" class="form-control mb-4"
                                                       type="text" placeholder="Полное наименование юридического лица"
                                                       maxlength="150" value="">
                                                <span id="jur_company_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Ваша фамилия
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Ваша прозвішча
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_lastname" id="jur_lastname" class="form-control mb-4"
                                                       type="text" placeholder="Ваша фамилия" maxlength="55" value="">
                                                <span id="jur_lastname_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Ваше имя
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Ваша уласнае імя
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_firstname" id="jur_firstname" class="form-control mb-4"
                                                       type="text" placeholder="Ваше имя" maxlength="55" value="">
                                                <span id="jur_firstname_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Ваше отчество
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Ваша імя па бацьку
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_middlename" id="jur_middlename"
                                                       class="form-control mb-4" type="text" placeholder="Ваше отчество"
                                                       maxlength="55" value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Район
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Раён
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_city_district" id="jur_city_district"
                                                       class="form-control mb-4" type="text" placeholder="Район"
                                                       maxlength="150" value="">
                                                <span id="jur_city_district_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Населённый пункт (деревня, агро ок и т.д.)
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Населены пункт (вёска, аграгарадок і г.д.)
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_city" id="jur_city" class="form-control mb-4"
                                                       type="text" placeholder="Населённый пункт" maxlength="55"
                                                       value="">
                                                <span id="jur_city_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Индекс
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Iндэкс
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_city_index" id="jur_city_index"
                                                       class="form-control mb-4" type="number" placeholder="Индекс"
                                                       maxlength="10" value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Улица
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Вуліца
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_street" id="jur_street" class="form-control mb-4"
                                                       type="text" placeholder="Улица" maxlength="55" value="">
                                                <span id="jur_street_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Дом
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Дом
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_house" id="jur_house" class="form-control mb-4"
                                                       type="text" placeholder="Дом" maxlength="10" value="">
                                                <span id="jur_house_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Корпус
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Корпус
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_city_korpus" id="jur_city_korpus"
                                                       class="form-control mb-4" type="text" placeholder="Корпус"
                                                       maxlength="5" value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Квартира (офис)</div>
                                            <div>Кватэра (офіс)</div>
                                            <div>
                                                <input name="jur_flat" id="jur_flat" class="form-control mb-4"
                                                       type="text" placeholder="Квартира (офис)" maxlength="10"
                                                       value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Обратный e-mail:
                                                <font color="red"><small><sup>*</sup></small></font><br>Введите реальный
                                                e-mail адрес, на него вы получите ответ на ваше сообщение
                                            </div>
                                            <div>Зваротны e-mail:
                                                <font color="red"><small><sup>*</sup></small></font><br>Увядзіце рэальны
                                                e-mail адрас, на яго вы атрымаеце адказ на ваша паведамленне
                                            </div>
                                            <div>
                                                <input name="jur_email" id="jur_email" type="email"
                                                       class="form-control mb-4" placeholder="example@example.com"
                                                       minlength="5" maxlength="55" value="">
                                                <span id="jur_email_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Контактный телефон</div>
                                            <div>Кантактны тэлефон</div>
                                            <div>
                                                <input name="jur_phone" id="jur_phone" class="form-control mb-4"
                                                       type="number" placeholder="Контактный телефон" maxlength="55"
                                                       value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Тема Вашего обращения
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>Тэма Вашага звароту
                                                <font color="red"><small><sup></sup></small></font>
                                            </div>
                                            <div>
                                                <input name="jur_theme" id="jur_theme" class="form-control mb-4"
                                                       type="text" placeholder="Тема Вашего обращения" maxlength="150"
                                                       value="">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Изложение сути обращения:
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>Выкладанне сутнасці звароту:
                                                <font color="red"><small><sup>*</sup></small></font>
                                            </div>
                                            <div>
                                                <textarea name="jur_message" id="jur_message" cols="24"
                                                          class="form-control" placeholder="Суть сообщения"
                                                          style="overflow:hidden; height:80px; background:#FFFFFF; border:1px solid #CCCCCC; color:#191970;"></textarea>
                                                <span id="jur_message_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>Прикрепить файл (PDF, doc, txt, jpg, gif, png, zip, rar до 5Mb)</div>
                                            <div>Дадаць файл (PDF, doc, txt, jpg, gif, png, zip, rar да 5Mb)</div>
                                            <div>
                                                <input class="upload_file_class" type="file" name="upload_file_jur"
                                                       id="upload_file_jur">
                                                <span id="upload_file_jur_error" class="error_field"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div>
                                                <font color="red"><small><sup>*</sup></small></font> Поля обязательные
                                                для заполнения<br>
                                                <font color="red"><small><sup>*</sup></small></font> Палі абавязковыя
                                                для запаўнення<br>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <button class="btn btn-outline-black btn-lg waves-effect waves-light"
                                                    type="submit" name="action">
                                                <i class="fa fa-paper-plane pr-2" aria-hidden="true"></i>Отправить
                                            </button>
                                        </div>

                                    </form>
                                    <!-- Default form contact -->

                                </section>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script type="text/javascript">
    function validateEmail(email) {
        var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }

    function validInd() {
        //Fields
        var ind_select = document.getElementById('ind_select').value,
            ind_lastname = document.getElementById('ind_lastname').value.trim(),
            ind_firstname = document.getElementById('ind_firstname').value.trim(),
            ind_city_district = document.getElementById('ind_city_district').value.trim(),
            ind_city = document.getElementById('ind_city').value.trim(),
            ind_street = document.getElementById('ind_street').value.trim(),
            ind_house = document.getElementById('ind_house').value.trim(),
            ind_email = document.getElementById('ind_email').value.trim(),
            ind_message = document.getElementById('ind_message').value.trim(),
            upload_file = document.getElementById('upload_file_ind').value;

        //Errors
        var ind_select_error = document.getElementById("ind_select_error"),
            ind_lastname_error = document.getElementById("ind_lastname_error"),
            ind_firstname_error = document.getElementById("ind_firstname_error"),
            ind_city_district_error = document.getElementById("ind_city_district_error"),
            ind_city_error = document.getElementById("ind_city_error"),
            ind_street_error = document.getElementById("ind_street_error"),
            ind_house_error = document.getElementById("ind_house_error"),
            ind_email_error = document.getElementById("ind_email_error"),
            ind_message_error = document.getElementById("ind_message_error"),
            upload_file_error = document.getElementById("upload_file_ind_error");

        var exit = false;

        if (ind_lastname == "") {
            document.getElementById('ind_lastname').style.border = "2px solid red";
            ind_lastname_error.innerHTML = "Введите фамилию";
            exit = true;
        } else {
            document.getElementById('ind_lastname').style.border = "1px solid gray";
            ind_lastname_error.innerHTML = "";
        }

        if (ind_firstname == "") {
            document.getElementById('ind_firstname').style.border = "2px solid red";
            ind_firstname_error.innerHTML = "Введите имя";
            exit = true;
        } else {
            document.getElementById('ind_firstname').style.border = "1px solid gray";
            ind_firstname_error.innerHTML = "";
        }

        if (ind_city_district == "") {
            document.getElementById('ind_city_district').style.border = "2px solid red";
            ind_city_district_error.innerHTML = "Введите название района";
            exit = true;
        } else {
            document.getElementById('ind_city_district').style.border = "1px solid gray";
            ind_city_district_error.innerHTML = "";
        }

        if (ind_city == "") {
            document.getElementById('ind_city').style.border = "2px solid red";
            ind_city_error.innerHTML = "Введите город";
            exit = true;
        } else {
            document.getElementById('ind_city').style.border = "1px solid gray";
            ind_city_error.innerHTML = "";
        }

        if (ind_street == "") {
            document.getElementById('ind_street').style.border = "2px solid red";
            ind_street_error.innerHTML = "Введите название улицы";
            exit = true;
        } else {
            document.getElementById('ind_street').style.border = "1px solid gray";
            ind_street_error.innerHTML = "";
        }

        if (ind_house == "") {
            document.getElementById('ind_house').style.border = "2px solid red";
            ind_house_error.innerHTML = "Введите номер дома";
            exit = true;
        } else {
            document.getElementById('ind_house').style.border = "1px solid gray";
            ind_house_error.innerHTML = "";
        }

        if (!validateEmail(ind_email)) {
            document.getElementById('ind_email').style.border = "2px solid red";
            ind_email_error.innerHTML = "Введите корректный email адрес";
            exit = true;
        } else {
            document.getElementById('ind_email').style.border = "1px solid gray";
            ind_email_error.innerHTML = "";
        }

        if (ind_message == "") {
            document.getElementById('ind_message').style.border = "2px solid red";
            ind_message_error.innerHTML = "Введите сообщение";
            exit = true;
        } else {
            document.getElementById('ind_message').style.border = "1px solid gray";
            ind_message_error.innerHTML = "";
        }

        if (exit) {
            return false;
        } else {
            return true;
        }
    }

    function validJur() {
        //Fields
        var jur_select = document.getElementById('jur_select').value,
            jur_company = document.getElementById('jur_company').value.trim(),
            jur_lastname = document.getElementById('jur_lastname').value.trim(),
            jur_firstname = document.getElementById('jur_firstname').value.trim(),
            jur_city_district = document.getElementById('jur_city_district').value.trim(),
            jur_city = document.getElementById('jur_city').value.trim(),
            jur_street = document.getElementById('jur_street').value.trim(),
            jur_house = document.getElementById('jur_house').value.trim(),
            jur_email = document.getElementById('jur_email').value.trim(),
            jur_message = document.getElementById('jur_message').value.trim(),
            upload_file = document.getElementById('upload_file_jur').value;

        //Errors
        var jur_select_error = document.getElementById("jur_select_error"),
            jur_company_error = document.getElementById("jur_company_error"),
            jur_lastname_error = document.getElementById("jur_lastname_error"),
            jur_firstname_error = document.getElementById("jur_firstname_error"),
            jur_city_district_error = document.getElementById("jur_city_district_error"),
            jur_city_error = document.getElementById("jur_city_error"),
            jur_street_error = document.getElementById("jur_street_error"),
            jur_house_error = document.getElementById("jur_house_error"),
            jur_email_error = document.getElementById("jur_email_error"),
            jur_message_error = document.getElementById("jur_message_error"),
            upload_file_error = document.getElementById("upload_file_jur_error");

        var exit = false;

        if (jur_company == "") {
            document.getElementById('jur_company').style.border = "2px solid red";
            jur_company_error.innerHTML = "Введите наименование юридического лица";
            exit = true;
        } else {
            document.getElementById('jur_company').style.border = "1px solid gray";
            jur_company_error.innerHTML = "";
        }

        if (jur_lastname == "") {
            document.getElementById('jur_lastname').style.border = "2px solid red";
            jur_lastname_error.innerHTML = "Введите фамилию";
            exit = true;
        } else {
            document.getElementById('jur_lastname').style.border = "1px solid gray";
            jur_lastname_error.innerHTML = "";
        }

        if (jur_firstname == "") {
            document.getElementById('jur_firstname').style.border = "2px solid red";
            jur_firstname_error.innerHTML = "Введите имя";
            exit = true;
        } else {
            document.getElementById('jur_firstname').style.border = "1px solid gray";
            jur_firstname_error.innerHTML = "";
        }

        if (jur_city_district == "") {
            document.getElementById('jur_city_district').style.border = "2px solid red";
            jur_city_district_error.innerHTML = "Введите название района";
            exit = true;
        } else {
            document.getElementById('jur_city_district').style.border = "1px solid gray";
            jur_city_district_error.innerHTML = "";
        }

        if (jur_city == "") {
            document.getElementById('jur_city').style.border = "2px solid red";
            jur_city_error.innerHTML = "Введите город";
            exit = true;
        } else {
            document.getElementById('jur_city').style.border = "1px solid gray";
            jur_city_error.innerHTML = "";
        }

        if (jur_street == "") {
            document.getElementById('jur_street').style.border = "2px solid red";
            jur_street_error.innerHTML = "Введите название улицы";
            exit = true;
        } else {
            document.getElementById('jur_street').style.border = "1px solid gray";
            jur_street_error.innerHTML = "";
        }

        if (jur_house == "") {
            document.getElementById('jur_house').style.border = "2px solid red";
            jur_house_error.innerHTML = "Введите номер дома";
            exit = true;
        } else {
            document.getElementById('jur_house').style.border = "1px solid gray";
            jur_house_error.innerHTML = "";
        }

        if (!validateEmail(jur_email)) {
            document.getElementById('jur_email').style.border = "2px solid red";
            jur_email_error.innerHTML = "Введите корректный email адрес";
            exit = true;
        } else {
            document.getElementById('jur_email').style.border = "1px solid gray";
            jur_email_error.innerHTML = "";
        }

        if (jur_message == "") {
            document.getElementById('jur_message').style.border = "2px solid red";
            jur_message_error.innerHTML = "Введите сообщение";
            exit = true;
        } else {
            document.getElementById('jur_message').style.border = "1px solid gray";
            jur_message_error.innerHTML = "";
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

<div class="scrollUp" style="display: block;"><a class="btn-floating btn-lg"><i class="fa fa-angle-up fa-2x"
                                                                                aria-hidden="true"></i></a></div>

</body>

</html>