<#macro consumptionStatistics>
     <link rel="stylesheet" href="/style/profile.css">
    <script type="text/javascript" src="/js/kabinet/animete.js"></script>
    <script src="/js/kabinet/one.js"></script>
    <script type="text/javascript" src="/js/kabinet/two.js"></script>
    <style>
        .mainrightblockmain{
            max-width: 1420px;
            border-radius: 0;
        }
        .rows{
            float: left!important;
            margin-left: 250px;
        }
        .select-css {
            display: block;
            font-size: 16px;
            font-family: sans-serif;
            color: #444;
            line-height: 1.3;
            padding: .6em 1.4em .5em .8em;
            box-sizing: border-box;
            margin: 0;
            border: 1px solid #aaa;
            box-shadow: 0 1px 0 1px rgba(0,0,0,.04);
            border-radius: .5em;
            -moz-appearance: none;
            -webkit-appearance: none;
            appearance: none;
            background-color: #fff;
            background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23007CB2%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E'), linear-gradient(to bottom, #ffffff 0%,#e5e5e5 100%);
            background-repeat: no-repeat, repeat;
            background-position: right .4em top 50%, 0 0;
            background-size: .65em auto, 100%;
        }
    </style>
    <div id="content-header">
        <h1 id="content-header-title" class="page-title txt-color-blueDark" style="text-align: center;width:100%;">Статистика измения цены и расхода электроэнергии за год</h1>
    </div>
    <div class="form-group" style="margin:1rem 0 1rem;box-shadow: 0 4px 16px 0 rgba(35, 26, 51, 1);">
        <select style="margin-left:10px;position: absolute" class="select-css" id="years">

            <option value="2020" ${(year=="2020")?then("selected","")}>
                    2020
            </option>

            <option value="2019"  ${(year=="2019")?then("selected","")}>
                <label for="df">2019</label>
                </option>

        </select>
        <script>
            $('select#years').on('change', function () {
                $('input[name="year"]').val(this.value);
            });
        </script>
        <form action="/kabinet/consumptionStatistics" method="post"><#include "../smallBlock/csrf.ftl">
            <input name="year" value="${year}" type="hidden"/>
            <button class="btn-primary" type="submit" style="margin: 0 auto 0;display: block;position: absolute;margin-left: 2px;margin-top: 42px;">
                Просмотреть
            </button>
          </form>
            <table style="margin:0 auto">
            <tr>
                <td>
                    <div id="container" class="chart_wrap" style="display:inline-block">
                    </div>
                    <script type="text/javascript">
                        $.getJSON('https://www.highcharts.com/samples/data/jsonp.php?filename=usdeur.json&callback=?', function (data) {
                            $toolsPeriod = $('.js-valuta-tools-period'),
                                $toolsView = $('.js-valuta-tools-view'),

                                Highcharts.chart('container', {
                                    chart: {
                                        zoomType: 'x'
                                    },
                                    title: {
                                        text: 'Цена электричества'
                                    },
                                    xAxis: {
                                        categories: ['Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
                                        tickmarkPlacement: 'on',
                                        title: {
                                            enabled: false
                                        },
                                        gridLineColor: '#dadada',
                                        gridLineWidth: 0,
                                    },
                                    yAxis: {
                                        opposite: false,
                                        endOnTick: false,
                                        gridLineColor: '#dadada',
                                        gridLineWidth: 1,
                                        maxPadding: 0.02,
                                        tickLength: 0,
                                        labels: {
                                            style: {
                                                color: '#888'
                                            }
                                        },
                                        showFirstLabel: false,
                                        title: {
                                            text: null
                                        }
                                    },
                                    legend: {
                                        enabled: false
                                    },
                                    tooltip: {
                                        crosshairs: true,
                                        shared: true,
                                        valueSuffix: ' руб.',
                                        zIndex: 10
                                    },

                                    plotOptions: {
                                        area: {
                                            fillColor: {
                                                linearGradient: {
                                                    x1: 0,
                                                    y1: 0,
                                                    x2: 0,
                                                    y2: 1
                                                },
                                                stops: [
                                                    [0, "#80889E"],
                                                    [1, "#bdc2cd"]
                                                ]
                                            },
                                            lineColor: '#ffd249',
                                            marker: {
                                                radius: 2,
                                                lineColor:"#00113c",
                                                fillColor: "#fff"

                                            },
                                            lineWidth: 1,
                                            states: {
                                                hover: {
                                                    lineWidth: 1
                                                }
                                            },
                                            threshold: null
                                        }
                                    },

                                    series: [{
                                        type: 'area',
                                        name: "цена",
                                        data: [
                                            ${satisticExpenses}
                                        ]
                                    }
                                    ]
                                });
                        });
                    </script>
                </td>
                <td>
                    <div id="container1" class="chart_wrap" style="display: inline-block;margin-left: 10px">
                    </div>
                    <script type="text/javascript">
                        $.getJSON('https://www.highcharts.com/samples/data/jsonp.php?filename=usdeur.json&callback=?', function (data) {
                            $toolsPeriod = $('.js-valuta-tools-period'),
                                $toolsView = $('.js-valuta-tools-view'),

                                Highcharts.chart('container1', {
                                    chart: {
                                        zoomType: 'x'
                                    },
                                    title: {
                                        text: 'Расход электричества'
                                    },
                                    xAxis: {
                                        categories: ['Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
                                        tickmarkPlacement: 'on',
                                        title: {
                                            enabled: false
                                        },
                                        gridLineColor: '#dadada',
                                        gridLineWidth: 0,
                                    },
                                    yAxis: {
                                        opposite: false,
                                        endOnTick: false,
                                        gridLineColor: '#dadada',
                                        gridLineWidth: 1,
                                        maxPadding: 0.02,
                                        tickLength: 0,
                                        labels: {
                                            style: {
                                                color: '#888'
                                            }
                                        },
                                        showFirstLabel: false,
                                        title: {
                                            text: null
                                        }
                                    },
                                    legend: {
                                        enabled: false
                                    },
                                    tooltip: {
                                        crosshairs: true,
                                        shared: true,
                                        valueSuffix: ' кВ',
                                        zIndex: 10
                                    },

                                    plotOptions: {
                                        area: {
                                            fillColor: {
                                                linearGradient: {
                                                    x1: 0,
                                                    y1: 0,
                                                    x2: 0,
                                                    y2: 1
                                                },
                                                stops: [
                                                    [0, "#80889E"],
                                                    [1, "#bdc2cd"]
                                                ]
                                            },
                                            lineColor: '#ffd249',
                                            marker: {
                                                radius: 2,
                                                lineColor:"#00113c",
                                                fillColor: "#fff"

                                            },
                                            lineWidth: 1,
                                            states: {
                                                hover: {
                                                    lineWidth: 1
                                                }
                                            },
                                            threshold: null
                                        }
                                    },

                                    series: [{
                                        type: 'area',
                                        name: "за месяц",
                                        data: [
                                            ${pricesStatistic}
                                        ]
                                    }
                                    ]
                                });
                        });
                    </script>
                </td>
            </tr>
        </table>
    </div>
</#macro>