<%-- 
    Document   : beginCashDetail
    Created on : Sep 13, 2018, 1:05:54 AM
    Author     : bachtiar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Beginning Cash on Hand - TRAc Master</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <script>
      function func1() {

        var chart = new CanvasJS.Chart("chartContainer", {
          theme: "light2",
          animationEnabled: true,
          title: {
            text: "Ending cash on hand"
          },
          axisY: {
            includeZero: false,
            title: "Value",
            suffix: ""
          },
          toolTip: {
            shared: "true"
          },
          legend: {
            cursor: "pointer",
            itemclick: toggleDataSeries
          },
          data: [{
              type: "spline",
              visible: true,
              showInLegend: true,
              yValueFormatString: "##. ",
              name: "Ending cash on hand",
              dataPoints: [
                {label: "Jan", y: 210},
                {label: "Feb", y: 205},
                {label: "Mar", y: 200},
                {label: "Apr", y: 196},
                {label: "Mei", y: 200},
                {label: "Jun", y: 195},
                {label: "Jul", y: 190},
                {label: "Ags", y: 195},
                {label: "Sep", y: 200},
                {label: "Okt", y: 205},
                {label: "Nov", y: 210},
                {label: "Des", y: 205}
              ]
            }]
        });
        chart.render();

        function toggleDataSeries(e) {
          if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
            e.dataSeries.visible = false;
          } else {
            e.dataSeries.visible = true;
          }
          chart.render();
        }

      }
      ;

      function func2() {

        var chart2 = new CanvasJS.Chart("chartContainer2", {
          animationEnabled: true,
          title: {
            text: "Cash Flow"
          },
          axisY: {
            title: "Cash in",
            titleFontColor: "#4F81BC",
            lineColor: "#4F81BC",
            labelFontColor: "#4F81BC",
            tickColor: "#4F81BC"
          },
          axisY2: {
            title: "Cash out",
            titleFontColor: "#C0504E",
            lineColor: "#C0504E",
            labelFontColor: "#C0504E",
            tickColor: "#C0504E"
          },
          toolTip: {
            shared: true
          },
          legend: {
            cursor: "pointer",
            itemclick: toggleDataSeries2
          },
          data: [{
              type: "column",
              name: "Cash in",
              legendText: "Cash in",
              showInLegend: true,
              dataPoints: [
                {label: "Jan", y: 210},
                {label: "Feb", y: 195},
                {label: "Mar", y: 200},
                {label: "Apr", y: 196},
                {label: "Mei", y: 200},
                {label: "Jun", y: 185},
                {label: "Jul", y: 200},
                {label: "Ags", y: 195},
                {label: "Sep", y: 200},
                {label: "Okt", y: 205},
                {label: "Nov", y: 210},
                {label: "Des", y: 205}
              ]
            },
            {
              type: "column",
              name: "Cash out",
              legendText: "Cash out",
              axisYType: "secondary",
              showInLegend: true,
              dataPoints: [
                {label: "Jan", y: 200},
                {label: "Feb", y: 215},
                {label: "Mar", y: 215},
                {label: "Apr", y: 180},
                {label: "Mei", y: 195},
                {label: "Jun", y: 195},
                {label: "Jul", y: 190},
                {label: "Ags", y: 195},
                {label: "Sep", y: 200},
                {label: "Okt", y: 205},
                {label: "Nov", y: 210},
                {label: "Des", y: 205}
              ]
            }]
        });
        chart2.render();

        function toggleDataSeries2(e) {
          if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
            e.dataSeries.visible = false;
          } else {
            e.dataSeries.visible = true;
          }
          chart2.render();
        }

      }
      function start() {
        func1();
        func2();
      }
    </script>

  </head>
  <body onload="start()">
    <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
      <nav class="navbar navbar-expand-sm navbar-toggler">

        <div class="navbar-header">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fa fa-bars"></i>
          </button>
          <a class="navbar-brand" href="./"><img src="" alt="Logo"></a>
          <a class="navbar-brand hidden" href="./"><img src="" alt="Logo"></a>
        </div>

        <div id="main-menu" class="main-menu collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active">
              <a href="index.jsp"> <i class="menu-icon fa fa-dashboard"></i>Home </a>
            </li>
            <!-- ADD More Panel  -->
            <li class="active">
              <a href="#"> <i class="menu-icon fa fa-archive"></i>Beginning Cash in hand </a>
            </li>
            <li class="active">
              <a href="CashDetail.jsp"> <i class="menu-icon fa fa-archive"></i>Cash in</a>
            </li>
            <li class="active">
              <a href="CashDetail.jsp"> <i class="menu-icon fa fa-archive"></i>Cash out</a>
            </li>
            <li class="active">
              <a href="CashDetail.jsp"> <i class="menu-icon fa fa-archive"></i>Ending Cash in hand </a>
            </li>
            <!-- Panel -->
          </ul>
        </div><!-- /.navbar-collapse -->
      </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">
      <!-- Header-->
      <header id="header" class="header">
        <div class="header-menu">
          <div class="col-sm-7">
            <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
            <div class="header-left">
            </div>
          </div>
        </div>
      </header><!-- /header -->
      <!-- Header-->

      <div class="breadcrumbs">
        <div class="col-sm-4">
          <div class="page-header float-left">
            <div class="page-title">
              <h1>Dashboard</h1>
            </div>
          </div>
        </div>
        <div class="col-sm-8">
          <div class="page-header float-right">
            <div class="page-title">
              <ol class="breadcrumb text-right">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Cash flow</a></li>
                <li class="active">Details</li>
              </ol>
            </div>
          </div>
        </div>
      </div>

      <div class="content mt-3">
        <div class="animated fadeIn">
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <div id="chartContainer" style="height: 300px; width: 100%;"></div>
                  <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                </div>
              </div>
            </div>
          </div><!-- /# column -->
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <div id="chartContainer2" style="height: 300px; width: 100%;"></div>
                  <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                </div>
              </div>
            </div>
          </div><!-- /# column -->
          <div class="col-lg-6">
            <div class="card">
              <div class="card-body">
                <div class="stat-widget-one">                  
                  <div class="stat-content dib">
                    <div class="stat-text">Cash In : Periode December</div>
                    <div class="stat-digit">8.542,00</div>

                    <div class="card-body">
                      <table class="table">
                        <thead class="thead-dark">
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Segment</th>                                  
                            <th scope="col"> This Month</th>
                            <th scope="col"> Last Month</th>
                            <th scope="col"> YTD </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>TNI / POLRI /PNS</td>
                            <td align="right">256,26</td>
                            <td align="right">384,39</td>
                            <td align="right">1.793,82</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Corporate</td>
                            <td align="right">427,10</td>
                            <td align="right">640,65</td>
                            <td align="right">2.989,70</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Individu</td>
                            <td align="right">170,84</td>
                            <td align="right">256,26</td>
                            <td align="right">1.195,40</td>
                          </tr>
                          <tr>
                            <th scope="row">#</th>
                            <td style="font-weight:bold">Sub Total</td>
                            <td style="font-weight:bold" align="right">854,20</td>
                            <td style="font-weight:bold" align="right">1.281,30</td>
                            <td style="font-weight:bold" align="right">5.979,40</td>
                          </tr>
                        </tbody>
                      </table>

                    </div>

                  </div>
                </div>
              </div>
            </div>
          </div>


          <div class="col-lg-6">
            <div class="card">
              <div class="card-body">
                <div class="stat-widget-one">                  
                  <div class="stat-content dib">
                    <div class="stat-text">Cash Out : Periode December</div>
                    <div class="stat-digit">4.162,00</div>

                    <div class="card-body">
                      <table class="table">
                        <thead class="thead-dark">
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Segment</th>                                  
                            <th scope="col"> This Month</th>
                            <th scope="col"> Last Month</th>
                            <th scope="col"> YTD </th>
                          </tr>
                        </thead>
                        <tbody>
                                                   <tr>
                            <th scope="row">1</th>
                            <td>TNI / POLRI /PNS</td>
                            <td align="right">256,26</td>
                            <td align="right">384,39</td>
                            <td align="right">1.793,82</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Corporate</td>
                            <td align="right">427,10</td>
                            <td align="right">640,65</td>
                            <td align="right">2.989,70</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Individu</td>
                            <td align="right">170,84</td>
                            <td align="right">256,26</td>
                            <td align="right">1.195,40</td>
                          </tr>
                          <tr>
                            <th scope="row">#</th>
                            <td style="font-weight:bold">Sub Total</td>
                            <td style="font-weight:bold" align="right">854,20</td>
                            <td style="font-weight:bold" align="right">1.281,30</td>
                            <td style="font-weight:bold" align="right">5.979,40</td>
                          </tr>
                        </tbody>
                      </table>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div><!-- .animated -->
    </div><!-- .content -->


  </div><!-- /#right-panel -->

  <!-- Right Panel -->
  <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
  <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/plugins.js"></script>
  <script src="assets/js/main.js"></script>
  <!--  Chart js -->
  <script src="assets/js/lib/chart-js/Chart.bundle.js"></script>
  <script src="assets/js/lib/chart-js/chartjs-init.js"></script>
</body>
</html>
