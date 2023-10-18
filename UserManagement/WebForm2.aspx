﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="UserManagement.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>统计</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="../static/css/bootstrap.min.css" th:href="@{/css/bootstrap.min.css}" rel="stylesheet" />
    <link href="../static/css/font-awesome.min.css" th:href="@{/css/font-awesome.min.css}" rel="stylesheet" />
    <link href="../static/css/main/animate.min.css" th:href="@{/css/main/animate.min.css}" rel="stylesheet" />
    <link href="../static/css/main/style.min862f.css" th:href="@{/css/main/style.min862f.css}" rel="stylesheet" />
    <style type="text/css">
        .btn-circle{
            width:30px;
            height:30px;
            text-align:center;
            padding:6px 0;
            font-size:12px;
            line-height:1.42851429;
            border-radius:15px;
        }
    </style>
</head>
<body class="gray-bg">
    <form id="form1" runat="server">
    <div class="wrapper wrapper-content">

        <div class="row">
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <span class="label label-success pull-right">月</span>
                        <h5>收入</h5>
                    </div>
                    <div class="ibox-content">
                        <h1 class="no-margins">40 886,200</h1>
                        <div class="stat-percent font-bold text-success">
                            98% <i class="fa fa-bolt"></i>
                        </div>
                        <small>总收入</small>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <span class="label label-info pull-right">全年</span>
                        <h5>订单</h5>
                    </div>
                    <div class="ibox-content">
                        <h1 class="no-margins">275,800</h1>
                        <div class="stat-percent font-bold text-info">
                            20% <i class="fa fa-level-up"></i>
                        </div>
                        <small>新订单</small>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <span class="label label-primary pull-right">今天</span>
                        <h5>访客</h5>
                    </div>
                    <div class="ibox-content">
                        <h1 class="no-margins">106,120</h1>
                        <div class="stat-percent font-bold text-navy">
                            44% <i class="fa fa-level-up"></i>
                        </div>
                        <small>新访客</small>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <span class="label label-danger pull-right">最近一个月</span>
                        <h5>活跃用户</h5>
                    </div>
                    <div class="ibox-content">
                        <h1 class="no-margins">80,600</h1>
                        <div class="stat-percent font-bold text-danger">
                            38% <i class="fa fa-level-down"></i>
                        </div>
                        <small>12月</small>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>订单</h5>
                        <div class="pull-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-xs btn-white active">天</button>
                                <button type="button" class="btn btn-xs btn-white">月</button>
                                <button type="button" class="btn btn-xs btn-white">年</button>
                            </div>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-9">
                                <div class="flot-chart">
                                    <div class="flot-chart-content" id="flot-dashboard-chart"></div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <ul class="stat-list">
                                    <li>
                                        <h2 class="no-margins">2,346</h2>
                                        <small>订单总数</small>
                                        <div class="stat-percent">
                                            48% <i class="fa fa-level-up text-navy"></i>
                                        </div>
                                        <div class="progress progress-mini">
                                            <div style="width: 48%;" class="progress-bar"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <h2 class="no-margins ">4,422</h2>
                                        <small>最近一个月订单</small>
                                        <div class="stat-percent">
                                            60% <i class="fa fa-level-down text-navy"></i>
                                        </div>
                                        <div class="progress progress-mini">
                                            <div style="width: 60%;" class="progress-bar"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <h2 class="no-margins ">9,180</h2>
                                        <small>最近一个月销售额</small>
                                        <div class="stat-percent">
                                            22% <i class="fa fa-bolt text-navy"></i>
                                        </div>
                                        <div class="progress progress-mini">
                                            <div style="width: 22%;" class="progress-bar"></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>用户项目列表</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <table class="table table-hover no-margins">
                            <thead>
                                <tr>
                                    <th>状态</th>
                                    <th>日期</th>
                                    <th>用户</th>
                                    <th>值</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <small>进行中...</small>
                                    </td>
                                    <td><i class="fa fa-clock-o"></i> 11:20</td>
                                    <td>青衣5858</td>
                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 24%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="label label-warning">已取消</span>
                                    </td>
                                    <td><i class="fa fa-clock-o"></i> 10:40</td>
                                    <td>徐子崴</td>
                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 66%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <small>进行中...</small>
                                    </td>
                                    <td><i class="fa fa-clock-o"></i> 01:30</td>
                                    <td>姜岚昕</td>
                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 54%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <small>进行中...</small>
                                    </td>
                                    <td><i class="fa fa-clock-o"></i> 02:20</td>
                                    <td>武汉大兵哥</td>
                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 12%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <small>进行中...</small>
                                    </td>
                                    <td><i class="fa fa-clock-o"></i> 09:40</td>
                                    <td>荆莹儿</td>
                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 22%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="label label-primary">已完成</span>
                                    </td>
                                    <td><i class="fa fa-clock-o"></i> 04:10</td>
                                    <td>栾某某</td>
                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 66%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <small>进行中...</small>
                                    </td>
                                    <td><i class="fa fa-clock-o"></i> 12:08</td>
                                    <td>范范范二妮</td>
                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 23%</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script th:src="@{/js/jquery.min.js}"></script>
    <script th:src="@{/js/bootstrap.min.js}"></script>
    <script th:src="@{/ajax/libs/flot/jquery.flot.js}"></script>

    <th:block th:include="include :: sparkline-js" />
    <script type="text/javascript">
        $(document).ready(function () {
            var data2 = [
                [gd(2012, 1, 1), 7], [gd(2012, 1, 2), 6], [gd(2012, 1, 3), 4], [gd(2012, 1, 4), 8],
                [gd(2012, 1, 5), 9], [gd(2012, 1, 6), 7], [gd(2012, 1, 7), 5], [gd(2012, 1, 8), 4],
                [gd(2012, 1, 9), 7], [gd(2012, 1, 10), 8], [gd(2012, 1, 11), 9], [gd(2012, 1, 12), 6],
                [gd(2012, 1, 13), 4], [gd(2012, 1, 14), 5], [gd(2012, 1, 15), 11], [gd(2012, 1, 16), 8],
                [gd(2012, 1, 17), 8], [gd(2012, 1, 18), 11], [gd(2012, 1, 19), 11], [gd(2012, 1, 20), 6],
                [gd(2012, 1, 21), 6], [gd(2012, 1, 22), 8], [gd(2012, 1, 23), 11], [gd(2012, 1, 24), 13],
                [gd(2012, 1, 25), 7], [gd(2012, 1, 26), 9], [gd(2012, 1, 27), 9], [gd(2012, 1, 28), 8],
                [gd(2012, 1, 29), 5], [gd(2012, 1, 30), 8], [gd(2012, 1, 31), 25]
            ];

            var data3 = [
                [gd(2012, 1, 1), 800], [gd(2012, 1, 2), 500], [gd(2012, 1, 3), 600], [gd(2012, 1, 4), 700],
                [gd(2012, 1, 5), 500], [gd(2012, 1, 6), 456], [gd(2012, 1, 7), 800], [gd(2012, 1, 8), 589],
                [gd(2012, 1, 9), 467], [gd(2012, 1, 10), 876], [gd(2012, 1, 11), 689], [gd(2012, 1, 12), 700],
                [gd(2012, 1, 13), 500], [gd(2012, 1, 14), 600], [gd(2012, 1, 15), 700], [gd(2012, 1, 16), 786],
                [gd(2012, 1, 17), 345], [gd(2012, 1, 18), 888], [gd(2012, 1, 19), 888], [gd(2012, 1, 20), 888],
                [gd(2012, 1, 21), 987], [gd(2012, 1, 22), 444], [gd(2012, 1, 23), 999], [gd(2012, 1, 24), 567],
                [gd(2012, 1, 25), 786], [gd(2012, 1, 26), 666], [gd(2012, 1, 27), 888], [gd(2012, 1, 28), 900],
                [gd(2012, 1, 29), 178], [gd(2012, 1, 30), 555], [gd(2012, 1, 31), 993]
            ];


            var dataset = [
                {
                    label: "订单数",
                    data: data3,
                    color: "#1ab394",
                    bars: {
                        show: true,
                        align: "center",
                        barWidth: 24 * 60 * 60 * 600,
                        lineWidth: 0
                    }

                }, {
                    label: "付款数",
                    data: data2,
                    yaxis: 2,
                    color: "#464f88",
                    lines: {
                        lineWidth: 1,
                        show: true,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 0.2
                            }, {
                                opacity: 0.2
                            }]
                        }
                    },
                    splines: {
                        show: false,
                        tension: 0.6,
                        lineWidth: 1,
                        fill: 0.1
                    },
                }
            ];


            var options = {
                xaxis: {
                    mode: "time",
                    tickSize: [3, "day"],
                    tickLength: 0,
                    axisLabel: "Date",
                    axisLabelUseCanvas: true,
                    axisLabelFontSizePixels: 12,
                    axisLabelFontFamily: 'Arial',
                    axisLabelPadding: 10,
                    color: "#838383"
                },
                yaxes: [{
                    position: "left",
                    max: 1070,
                    color: "#838383",
                    axisLabelUseCanvas: true,
                    axisLabelFontSizePixels: 12,
                    axisLabelFontFamily: 'Arial',
                    axisLabelPadding: 3
                }, {
                    position: "right",
                    clolor: "#838383",
                    axisLabelUseCanvas: true,
                    axisLabelFontSizePixels: 12,
                    axisLabelFontFamily: ' Arial',
                    axisLabelPadding: 67
                }
                ],
                legend: {
                    noColumns: 1,
                    labelBoxBorderColor: "#000000",
                    position: "nw"
                },
                grid: {
                    hoverable: false,
                    borderWidth: 0,
                    color: '#838383'
                }
            };

            function gd(year, month, day) {
                return new Date(year, month - 1, day).getTime();
            }

            var previousPoint = null,
                previousLabel = null;

            $.plot($("#flot-dashboard-chart"), dataset, options);
        });
    </script>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" class="btn btn-primary btn-circle" />
        
        <div class="row mt-5">
	<div class="btn-group-vertical">
		<button class="btn btn-danger">1</button>
		<button class="btn btn-danger">2</button>
		<div class="btn-group">
			<button class="btn btn-secondary dropdown-toggle" data-toggle='dropdown'>城市</button>
			<div class="dropdown-menu">
				<a href="#" class="dropdown-item">北京</a>
				<a href="#" class="dropdown-item">上海</a>
			</div>
		</div>
	</div>
</div>
    </form>
</body>
</html>
