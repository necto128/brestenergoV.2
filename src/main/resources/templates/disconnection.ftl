<!Doctype html>
<html lang="en" style="height: 100%;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-site-verification" content="3hWEnwwlrQB3sSPVpcOd0zxK0bpdBjPkkZiqV_3g1FA"/>
    <meta name="keywords"
          content="Брестэнерго, электроэнергия, теплоэнергия, электросети, теплосети, электрические сети, тепловые сети, энергия, аскуэ">
    <meta name="description" content="Официальный сайт РУП Брестэнерго">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="theme-color" content="#3b465e">

    <link rel="icon" type="image/png" href="/static/img/logo.png">
    <title>Плановые отключения
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
</head>

<body style="position: relative; min-height: 100%; top: 0px;">
<#import "smallBlock/nav.ftl" as param>
<@param.nav/>


<!--Main layout-->

<main id="main">
    <div class="container py-5">

        <div class="row pt-5">
            <div class="col-12 pt-5">
                <div class="container text-center white-text">
                    <h1 class="h1-responsive brestenergofont my-title">Плановые отключения</h1>
                    <p class="h4-responsive p-3 borderfont"></p>
                </div>
            </div>
        </div>

        <!--Accordion wrapper-->
        <div class="row">
            <div class="col-12 pt-5 px-0">

                <div class="accordion md-accordion accordion-blocks m-0 p-0" id="accordion_main"
                     aria-multiselectable="true">
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_1" data-toggle="collapse" data-target="#collapse_1"
                             aria-expanded="true" aria-controls="collapse_1">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_1"
                                    aria-expanded="true" aria-controls="collapse_1"><h6> Барановичский городской </h6>
                            </button>
                        </div>
                        <div id="collapse_1" class="collapse" aria-labelledby="heading_1" data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_1">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0 collapsed" id="heading_2" data-toggle="collapse" data-target="#collapse_2" aria-expanded="false" aria-controls="collapse_2">
                            <button class="btn btn-link waves-effect waves-light collapsed" type="button" data-toggle="collapse" data-target="#collapse_2" aria-expanded="false" aria-controls="collapse_2"><h6> Барановичский сельский </h6>
                            </button>
                        </div>
                        <div id="collapse_2" class="collapse" aria-labelledby="heading_2" data-parent="#accordion_main" style="">
                            <div class="card-body" id="collapse_body_2"><!-- Table responsive wrapper -->
                                <div class="table-responsive">
                                    <table class="table table-hover"><!--Table head-->
                                        <thead class="thead-light">
                                        <tr>
                                            <th>№</th>
                                            <th>Начало</th>
                                            <th>Конец</th>
                                            <th>Район отключения</th>
                                            <th>Причина</th>
                                        </tr>
                                        </thead><!--Table head--><!--Table body-->
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>30.06.2020 09:00</td>
                                            <td>30.06.2020 17:00</td>
                                            <td>н.п.Городище ул.Кричевская, ул.Арцимени, ул.Спортивная</td>
                                            <td>ремонт ВЛ-0,4 кВ от МТП-691 Городище</td>
                                        </tr>
                                        </tbody><!--Table body--></table>
                                </div><!-- Table responsive wrapper --></div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0 collapsed" id="heading_3" data-toggle="collapse"
                             data-target="#collapse_3" aria-expanded="false" aria-controls="collapse_3">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
                                    data-target="#collapse_3" aria-expanded="false" aria-controls="collapse_3"><h6>
                                    Березовский </h6></button>
                        </div>
                        <div id="collapse_3" class="collapse" aria-labelledby="heading_3" data-parent="#accordion_main"
                             style="">
                            <div class="card-body" id="collapse_body_3"><!-- Table responsive wrapper -->
                                <div class="table-responsive">
                                    <table class="table table-hover"><!--Table head-->
                                        <thead class="thead-light">
                                        <tr>
                                            <th>№</th>
                                            <th>Начало</th>
                                            <th>Конец</th>
                                            <th>Район отключения</th>
                                            <th>Причина</th>
                                        </tr>
                                        </thead><!--Table head--><!--Table body-->
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>30.06.2020 08:00</td>
                                            <td>30.06.2020 17:00</td>
                                            <td>ул. Специалистов, ул. Кольцевая, ул. Пионерская, д. Малеч, Березовский
                                                р-н
                                            </td>
                                            <td>замена провода</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>30.06.2020 08:00</td>
                                            <td>30.06.2020 17:00</td>
                                            <td>д. Речица ул. Кирова, Лесная</td>
                                            <td>ремонт ВЛ 0,4 кВ.</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>30.06.2020 09:00</td>
                                            <td>30.06.2020 17:00</td>
                                            <td>д. Ястребель ул. Центральная д.17-32</td>
                                            <td>ремонт ВЛ 0,4 кВ.</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>30.06.2020 09:00</td>
                                            <td>30.06.2020 17:00</td>
                                            <td>д. Ястребель ул. Центральная д.17-32</td>
                                            <td>ремонт ВЛ 0,4 кВ.</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>01.07.2020 08:00</td>
                                            <td>01.07.2020 17:00</td>
                                            <td>ул. Специалистов, ул. Кольцевая, ул. Пионерская, д. Малеч, Березовский
                                                р-н
                                            </td>
                                            <td>замена провода</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>02.07.2020 08:00</td>
                                            <td>02.07.2020 17:00</td>
                                            <td>ул. Специалистов, ул. Кольцевая, ул. Пионерская, д. Малеч, Березовский
                                                р-н
                                            </td>
                                            <td>замена провода</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>03.07.2020 08:00</td>
                                            <td>03.07.2020 17:00</td>
                                            <td>ул. Специалистов, ул. Кольцевая, ул. Пионерская, д. Малеч, Березовский
                                                р-н
                                            </td>
                                            <td>замена провода</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>07.07.2020 09:00</td>
                                            <td>07.07.2020 17:00</td>
                                            <td>д. Ястребель ул. Центральная д.17-32</td>
                                            <td>ремонт ВЛ 0,4 кВ.</td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>09.07.2020 09:00</td>
                                            <td>09.07.2020 17:00</td>
                                            <td>д.Ястребель ул. Центральная д.17-72</td>
                                            <td>ремонт ВЛ 0,4 кВ.</td>
                                        </tr>
                                        </tbody><!--Table body--></table>
                                </div><!-- Table responsive wrapper --></div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_4" data-toggle="collapse" data-target="#collapse_4"
                             aria-expanded="true" aria-controls="collapse_4">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_4"
                                    aria-expanded="true" aria-controls="collapse_4"><h6> Ганцевичский </h6></button>
                        </div>
                        <div id="collapse_4" class="collapse" aria-labelledby="heading_4" data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_4">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_5" data-toggle="collapse" data-target="#collapse_5"
                             aria-expanded="true" aria-controls="collapse_5">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_5"
                                    aria-expanded="true" aria-controls="collapse_5"><h6> Ивацевичский </h6></button>
                        </div>
                        <div id="collapse_5" class="collapse" aria-labelledby="heading_5" data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_5">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_6" data-toggle="collapse" data-target="#collapse_6"
                             aria-expanded="true" aria-controls="collapse_6">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_6"
                                    aria-expanded="true" aria-controls="collapse_6"><h6> Ляховичский </h6></button>
                        </div>
                        <div id="collapse_6" class="collapse" aria-labelledby="heading_6" data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_6">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_7" data-toggle="collapse" data-target="#collapse_7"
                             aria-expanded="true" aria-controls="collapse_7">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_7"
                                    aria-expanded="true" aria-controls="collapse_7"><h6> Брестский городской </h6>
                            </button>
                        </div>
                        <div id="collapse_7" class="collapse" aria-labelledby="heading_7" data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_7">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_8" data-toggle="collapse" data-target="#collapse_8"
                             aria-expanded="true" aria-controls="collapse_8">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_8"
                                    aria-expanded="true" aria-controls="collapse_8"><h6> Брестский сельский </h6>
                            </button>
                        </div>
                        <div id="collapse_8" class="collapse" aria-labelledby="heading_8" data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_8">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_9" data-toggle="collapse" data-target="#collapse_9"
                             aria-expanded="true" aria-controls="collapse_9">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_9"
                                    aria-expanded="true" aria-controls="collapse_9"><h6> Жабинковский </h6></button>
                        </div>
                        <div id="collapse_9" class="collapse" aria-labelledby="heading_9" data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_9">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_10" data-toggle="collapse"
                             data-target="#collapse_10" aria-expanded="true" aria-controls="collapse_10">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_10"
                                    aria-expanded="true" aria-controls="collapse_10"><h6> Малоритский </h6></button>
                        </div>
                        <div id="collapse_10" class="collapse" aria-labelledby="heading_10"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_10">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_11" data-toggle="collapse"
                             data-target="#collapse_11" aria-expanded="true" aria-controls="collapse_11">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_11"
                                    aria-expanded="true" aria-controls="collapse_11"><h6> Кобринский </h6></button>
                        </div>
                        <div id="collapse_11" class="collapse" aria-labelledby="heading_11"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_11">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_12" data-toggle="collapse"
                             data-target="#collapse_12" aria-expanded="true" aria-controls="collapse_12">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_12"
                                    aria-expanded="true" aria-controls="collapse_12"><h6> Каменецкий </h6></button>
                        </div>
                        <div id="collapse_12" class="collapse" aria-labelledby="heading_12"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_12">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_13" data-toggle="collapse"
                             data-target="#collapse_13" aria-expanded="true" aria-controls="collapse_13">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_13"
                                    aria-expanded="true" aria-controls="collapse_13"><h6> Пинский городской </h6>
                            </button>
                        </div>
                        <div id="collapse_13" class="collapse" aria-labelledby="heading_13"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_13">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_14" data-toggle="collapse"
                             data-target="#collapse_14" aria-expanded="true" aria-controls="collapse_14">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_14"
                                    aria-expanded="true" aria-controls="collapse_14"><h6> Пинский сельский </h6>
                            </button>
                        </div>
                        <div id="collapse_14" class="collapse" aria-labelledby="heading_14"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_14">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_15" data-toggle="collapse"
                             data-target="#collapse_15" aria-expanded="true" aria-controls="collapse_15">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_15"
                                    aria-expanded="true" aria-controls="collapse_15"><h6> Ивановский </h6></button>
                        </div>
                        <div id="collapse_15" class="collapse" aria-labelledby="heading_15"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_15">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_16" data-toggle="collapse"
                             data-target="#collapse_16" aria-expanded="true" aria-controls="collapse_16">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_16"
                                    aria-expanded="true" aria-controls="collapse_16"><h6> Дрогичинский </h6></button>
                        </div>
                        <div id="collapse_16" class="collapse" aria-labelledby="heading_16"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_16">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_17" data-toggle="collapse"
                             data-target="#collapse_17" aria-expanded="true" aria-controls="collapse_17">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_17"
                                    aria-expanded="true" aria-controls="collapse_17"><h6> Лунинецкий </h6></button>
                        </div>
                        <div id="collapse_17" class="collapse" aria-labelledby="heading_17"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_17">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_18" data-toggle="collapse"
                             data-target="#collapse_18" aria-expanded="true" aria-controls="collapse_18">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_18"
                                    aria-expanded="true" aria-controls="collapse_18"><h6> Столинский </h6></button>
                        </div>
                        <div id="collapse_18" class="collapse" aria-labelledby="heading_18"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_18">Нет данных</div>
                        </div>
                    </div>
                    <div class="card z-depth-0 bordered font-weight-light">
                        <div class="card-header p-0 m-0" id="heading_19" data-toggle="collapse"
                             data-target="#collapse_19" aria-expanded="true" aria-controls="collapse_19">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse_19"
                                    aria-expanded="true" aria-controls="collapse_19"><h6> Пружанские ЭС </h6></button>
                        </div>
                        <div id="collapse_19" class="collapse" aria-labelledby="heading_19"
                             data-parent="#accordion_main">
                            <div class="card-body" id="collapse_body_19">Нет данных</div>
                        </div>
                    </div>
                </div>
                <!--/.Accordion wrapper-->
            </div>
        </div>
    </div>
</main>
<!--Main layout-->

<!--Footer-->

<footer class="page-footer pt-5" style="">
    <div class="container text-center text-md-left">

        <div class="row pb-4">
            <div class="col-md-6 mt-md-0 mt-3 mb-3">
                <div class="container font-weight-light wow fadeIn">
                    <h3 class="pb-3">Контактная информация</h3>
                    <p class="">
                        <img class="contactlogo mr-2" src="/static/img/location.png"> г. Брест, ул.Воровского, 13/1
                    </p>

                    <p>
                        <i class="far fa-clock contactlogo mr-2"></i> c 8.00 до 17.00, обед с 13.00 до 14.00. Выходной:
                        Сб, Вс.


                    </p>

                    <p class="">
                        <img class="contactlogo mr-2" src="/static/img/phone.png">
                        <a href="tel:80162271359">8 (0162) 27 13 59</a>
                    </p>
                    <p class="card-text">
                        <img class="contactlogo mr-2" src="/static/img/mail.png">
                        <a href="mailto:box@brestenergo.by?subject=Brestenergo">box@brestenergo.by</a>
                    </p>
                    <p class="card-text">
                        <img class="contactlogo mr-2" src="/static/img/attention.png"> Диспетчерская служба - 144
                    </p>
                    <p class="card-text">
                        <img class="contactlogo mr-2" src="/static/img/money.png">
                        <u><a href="http://www.brestenergo.by/%D0%A0%D0%B0%D1%81%D1%87%D0%B5%D1%82%D0%BD%D0%BE_%D0%BA%D0%B0%D1%81%D1%81%D0%BE%D0%B2%D1%8B%D0%B5_%D1%86%D0%B5%D0%BD%D1%82%D1%80%D1%8B"
                              class="">Расчетно-кассовые центры</a></u>
                    </p>

                </div>

            </div>

            <div class="col-md-6 mb-md-0 pb-4 wow fadeIn h-100">
                <div id="carouselExampleControls" class="carousel col-sm-12 slide text-center" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item">
                            <a href="https://twitter.com/sdgs_by" name="twitter"><img src="/static/img/href/1.png"
                                                                                      alt="ЦУР в Беларуси"
                                                                                      class="my-href mt-1"></a>
                            <a href="http://www.energo.by/" name="belenergo"><img src="/static/img/href/2.png"
                                                                                  alt="Белэнерго" class="my-href mt-1"></a>
                            <a href="http://www.brsm.by/" name="brsm"><img src="/static/img/href/3.png" alt="БРСМ"
                                                                           class="my-href mt-1"></a>
                            <a href="https://www.brestenergo.by/relax.html" name="relax"><img
                                        src="/static/img/href/4.png"
                                        alt="Электрон"
                                        class="my-href mt-1"></a>
                            <a href="http://energodoc.by/" name="energodoc"><img src="/static/img/href/5.png"
                                                                                 alt="Энергодокумент"
                                                                                 class="my-href mt-1"></a>
                            <a href="http://www.government.by/" name="government"><img src="/static/img/href/6.png"
                                                                                       alt="Правительство РБ"
                                                                                       class="my-href mt-1"></a>
                        </div>
                        <div class="carousel-item active">
                            <a href="http://w1.economy.gov.by/ministry/admin_proc.nsf/index.html" name="economy"><img
                                        src="/static/img/href/7.png" alt="Административные процедуры"
                                        class="my-href mt-1"></a>
                            <a href="http://www.minenergo.gov.by/" name="minenergo"><img src="/static/img/href/8.png"
                                                                                         alt="Минэнерго"
                                                                                         class="my-href mt-1"></a>
                            <a href="http://www.pravo.by/" name="pravo"><img src="/static/img/href/9.png" alt="Право by"
                                                                             class="my-href mt-1"></a>
                            <a href="http://www.president.gov.by/" name="president"><img src="/static/img/href/10.png"
                                                                                         alt="Сайт президента РБ"
                                                                                         class="my-href mt-1"></a>
                            <a href="http://www.raschet.by/" name="raschet"><img src="/static/img/href/11.png"
                                                                                 alt="ЕРИП"
                                                                                 class="my-href mt-1"></a>
                            <a href="http://portal.gov.by/" name="portal"><img src="/static/img/href/12.png"
                                                                               alt="Единый портал электронных услуг"
                                                                               class="my-href mt-1"></a>
                        </div>
                        <div class="carousel-item">
                            <a href="https://vk.com/lenregionbrest" name="lenregionbrest"><img
                                        src="/static/img/href/13.png"
                                        alt="Ленинский район Бреста"
                                        class="my-href mt-1"></a>
                            <a href="http://качество-услуг.бел" name="kachestvoyslug"><img src="/static/img/href/14.png"
                                                                                           alt="Качество-услуг"
                                                                                           class="my-href mt-1"></a>
                        </div>
                    </div>
                    <a class="carousel-control-prev carousel-control-size" href="#carouselExampleControls" role="button"
                       data-slide="prev">
                        <span class="fa fa-chevron-left" aria-hidden="true"></span>
                    </a>

                    <a class="carousel-control-next carousel-control-size" href="#carouselExampleControls" role="button"
                       data-slide="next">
                        <span class="fa fa-chevron-right" aria-hidden="true"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3 mdb-color darken-3">
        © РУП "Брестэнерго" 2018-2020
    </div>
    <!-- Copyright -->
</footer>

<!--/.Footer-->
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/static/js/popper.min.js"></script>
<script src="/static/js/bootstrap-filestyle/bootstrap-filestyle.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="/static/js/mdb.min.js"></script>

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


<div class="scrollUp"><a class="btn-floating btn-lg"><i class="fa fa-angle-up fa-2x" aria-hidden="true"></i></a></div>

</body>

</html>