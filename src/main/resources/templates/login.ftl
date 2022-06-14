<html>

<head>
    <meta charset="utf-8">
    <title>Личный кабинет - Авторизация</title>
    <!-- Button Visually impared-->
    <link rel="stylesheet" href="/static/style/bvi.min.css" type="text/css">
    <link rel="icon" type="image/png" href="/static/img/brenergo-logo-small.png">
    <link rel="stylesheet" href="/static/style/bootstrap.min.css">
    <link rel="stylesheet" href="/static/style/mdb.min.css">
    <!-- <link rel="stylesheet" href="/css/spectre-icons.css"> -->
    <link rel="stylesheet" href="/static/style/main.css">
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery.maskedinput@1.4.1/src/jquery.maskedinput.min.js"></script>


</head>

<body>
    <div class="container">
        <div class="row mt-5">
            <div class="col-12 col-md-8 mx-auto">
                <div class="alert alert-warning" role="alert">
                    <a class="navbar-brand brestenergofontlogo" href="/www.brestenergo.by" target="" style="display: block;font-size: 2.5em;text-align: center">
                        <img src="/static/img/logo.png" class="d-inline-block align-center menu-logo" alt=""> Брестэнерго
                    </a><br>
                     Обслуживаются абоненты Барановичского региона<br> Для регистрации обратитесь в отдел договоров Барановичских ЭС (0163)67-24-60
                </div>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-12 col-md-8 col-lg-7 col-xl-6 mx-auto">
                <div class="card">
                    <div class="card-body py-5">

                        <form class="text-center " method="post" action="/login">
                            <h3 class="mb-4 pb-2 text-center dark-grey-text">
                                <i class="fas fa-user mr-2"></i> Вход в личный кабинет
                            </h3>
                            <!-- Name -->
                            <input class="form-control mb-4" placeholder="Логин" type="text" id="loginName" name="username" required="" value="">
                            <!-- Email -->
                            <input class="form-control" placeholder="Пароль" type="password" id="loginPass" name="password" required="">
                            <div>
                                <button type="submit" class="btn btn-block btn-lg primary btn-rounded text-white mt-4">Войти
            </button>
                            </div>
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                        </form>
                        <script type="text/javascript">
                          /*  $(function () {
                                $.mask.definitions['~'] = "[+-]";
                                $("#loginName").mask("9999-999")
                                $("input").blur(function () {
                                    $("#info").html("Unmasked value: " + $(this).mask());
                                }).dblclick(function () {
                                    $(this).unmask();
                                });
                            });*/
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>