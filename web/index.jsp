<%-- 
    Document   : index
    Created on : Sep 12, 2018, 12:24:50 AM
    Author     : bachtiar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dasboard - Data Flow Meter</title>
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
    <link href="assets/css/lib/vector-map/jqvmap.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>




    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages': ['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month', 'Cash In', 'Cash Out', 'Ending Cash on Hand'],
          ['Jan', 5100, 5500, 4914],
          ['Feb', 6000, 6200, 5100],
          ['Mar', 6300, 6367, 6214],
          ['Apr', 6139, 6210, 6014],
          ['Mei', 6339, 6310, 6114],
          ['Jun', 6239, 6410, 6314],
          ['Jul', 6139, 6210, 6014],
          ['Ags', 6339, 6110, 5914],
          ['Sep', 6239, 6310, 6014],
          ['Okt', 6539, 6410, 6214],
          ['Nov', 6439, 6210, 6114],
          ['Des', 6336, 6191, 6014]
        ]);

        var options = {
          title: 'Monthly Cash Flow',
          vAxis: {title: 'Cash Flow'},
          hAxis: {title: 'Month'},
          seriesType: 'bars',
          series: {2: {type: 'line'}}
        };

        var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
      <nav class="navbar navbar-expand-sm navbar-default">

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


      <!-- BODY START HERE-->
      <div class="breadcrumbs">
        <div class="col-sm-4">
          <div class="page-header float-left">
            <div class="page-title">
              <h3>Cash Flow Dashboard - YTD</h3>
              <a>Last month with data : December</a>
            </div>
          </div>
        </div>
        <div class="col-sm-8">
          <div class="page-header float-right">
            <div class="page-title">
              <ol class="breadcrumb text-right">
                <li class="active">Dashboard</li>
              </ol>
            </div>
          </div>
        </div>
      </div>

      <div class="content mt-3">

        <div class="col-sm-5 col-lg-3">
          <div class="card text-white bg-flat-color-1">
            <div class="card-body pb-0">
              <div class="dropdown float-right">
                <button class="btn bg-transparent dropdown-toggle theme-toggle text-light" type="button" id="dropdownMenuButton" data-toggle="dropdown">
                  <i class="fa fa-cog"></i>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <div class="dropdown-menu-content">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </div>
              </div>
              <h2 class="mb-0">
                <span class="count">4521</span>
              </h2>
              <p class="text-light">Beginning cash in hand</p>

              <div class="chart-wrapper px-0" style="height:70px;" height="70">
                <canvas id="widgetChart1"></canvas>
              </div>

            </div>

          </div>
        </div>
        <!--/.col-->

        <div class="col-sm-5 col-lg-3">
          <div class="card text-white bg-flat-color-2">
            <div class="card-body pb-0">
              <div class="dropdown float-right">
                <button class="btn bg-transparent dropdown-toggle theme-toggle text-light" type="button" id="dropdownMenuButton" data-toggle="dropdown">
                  <i class="fa fa-cog"></i>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <div class="dropdown-menu-content">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </div>
              </div>
              <h2 class="mb-0">
                <span class="count">93437</span>
              </h2>
              <p class="text-light">Cash In </p>

              <div class="chart-wrapper px-0" style="height:70px;" height="70">
                <canvas id="widgetChart2"></canvas>
              </div>

            </div>
          </div>
        </div>
        <!--/.col-->

        <div class="col-sm-5 col-lg-3">
          <div class="card text-white bg-flat-color-3">
            <div class="card-body pb-0">
              <div class="dropdown float-right">
                <button class="btn bg-transparent dropdown-toggle theme-toggle text-light" type="button" id="dropdownMenuButton" data-toggle="dropdown">
                  <i class="fa fa-cog"></i>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <div class="dropdown-menu-content">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </div>
              </div>
              <h2 class="mb-0">
                <span class="count">97131</span>
              </h2>
              <p class="text-light">Cash Out</p>

            </div>

            <div class="chart-wrapper px-0" style="height:70px;" height="70">
              <canvas id="widgetChart1"></canvas>
            </div>
          </div>
        </div>
        <!--/.col-->

        <div class="col-sm-5 col-lg-3">
          <div class="card text-white bg-flat-color-4">
            <div class="card-body pb-0">
              <div class="dropdown float-right">
                <button class="btn bg-transparent dropdown-toggle theme-toggle text-light" type="button" id="dropdownMenuButton" data-toggle="dropdown">
                  <i class="fa fa-cog"></i>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <div class="dropdown-menu-content">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </div>
              </div>
              <h2 class="mb-0">
                <span class="count">827</span>
              </h2>
              <p class="text-light">Ending cash on hand </p>

              <div class="chart-wrapper px-3" style="height:70px;" height="70">
                <canvas id="widgetChart1"></canvas>
              </div>

            </div>
          </div>
        </div>

        <!-- BAR CHART Start HERE-->
        <div>
          <div class="card">
            <div class="card-body">
              <div id="chart_div"></div>
            </div>
          </div>
        </div><!-- /# column -->
        <!-- BAR CHART Ends HERE-->

        <div class="col-xl-8">
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-sm-4">
                  <h4 class="card-title mb-0">Period :</h4>
                  <div class="small text-muted">December</div>
                </div>
                <!--/.col-->
              </div><!--/.row-->
              <div class="chart-wrapper mt-4" >

                <!-- Diisi table -->

                <div>
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">AR Aging</strong>
                        </div>
                        <div class="card-body">
                            <table class="table">
                              <thead class="thead-dark">
                                <tr align="right">
                                  <th scope="col" align="Center">#</th>
                                  <th scope="col" align="Center">Segment</th>                                  
                                  <th scope="col" align="right"> 1-3 Month</th>
                                  <th scope="col" align="right">3-6 Month</th>
                                  <th scope="col" align="right">6-12 Month</th>
                                  <th scope="col" align="right"> >1 Year</th>
                                  <th scope="col" align="right">TOTAL</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <th scope="row">1</th>
                                  <td>TNI / POLRI /PNS</td>
                                  <td align="right">1.793,82</td>
                                  <td align="right">384,39</td>
                                  <td align="right">256,26</td>
                                  <td align="right">128,13</td>
                                  <td align="right">2.562,60</td>
                                </tr>
                                <tr>
                                  <th scope="row">2</th>
                                  <td>Corporate</td>
                                  <td align="right">2.989,70</td>
                                  <td align="right">640,65</td>
                                  <td align="right">427,10</td>
                                  <td align="right">213,55</td>
                                  <td align="right">4.271,00</td>
                                </tr>
                                <tr>
                                  <th scope="row">3</th>
                                  <td>Individu</td>
                                  <td align="right">1.195,40</td>
                                  <td align="right">256,26</td>
                                  <td align="right">170,84</td>
                                  <td align="right">85,42</td>
                                  <td align="right">1.708,00</td>
                                </tr>
                                 <tr>
                                  <th scope="row">#</th>
                                  <td style="font-weight:bold">Sub Total</td>
                                  <td style="font-weight:bold" align="right">5.979,40</td>
                                  <td style="font-weight:bold" align="right">1.281,30</td>
                                  <td style="font-weight:bold" align="right">854,20</td>
                                  <td style="font-weight:bold" align="right">427,10</td>
                                  <td style="font-weight:bold" align="right">8.542,00</td>
                                </tr>
                              </tbody>
                            </table>

                        </div>
                    </div>
                </div>
                
                <!-- End of table -->              

              </div>
            </div>                    
          </div>
        </div>

        <div class="col-xl-4 col-lg-4">
          <div class="card">
            <div class="card-body">
              <div class="stat-widget-one">
                <div class="stat-icon dib">
                  <i class="ti-money text-success border-success"></i>
                </div>
                <div class="stat-content dib">
                  <div class="stat-text">Accounts Recievable</div>
                  <div class="stat-digit">8.542,00</div>
                </div>
              </div>
            </div>
          </div>
        </div>


        <div class="col-xl-4 col-lg-4">
          <div class="card">
            <div class="card-body">
              <div class="stat-widget-one">
                <div class="stat-icon dib">
                  <i class="ti-money text-success border-success"></i>
                </div>
                <div class="stat-content dib">
                  <div class="stat-text">Accounts Payable</div>
                  <div class="stat-digit">4.162,00</div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

    <!-- BODY ENDS HERE-->


  </div> <!-- .content -->


  <!-- Right Panel -->

  <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
  <script src="assets/js/plugins.js"></script>
  <script src="assets/js/main.js"></script>
  <script src="assets/js/lib/chart-js/Chart.bundle.js"></script>
  <script src="assets/js/dashboard.js"></script>
  <script src="assets/js/widgets.js"></script>
  <script src="assets/js/lib/vector-map/jquery.vmap.js"></script>
  <script src="assets/js/lib/vector-map/jquery.vmap.min.js"></script>
  <script src="assets/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
  <script src="assets/js/lib/vector-map/country/jquery.vmap.world.js"></script>

  <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <!--  Chart js -->
  <script src="assets/js/lib/chart-js/Chart.bundle.js"></script>
  <script src="assets/js/lib/chart-js/chartjs-init.js"></script>
</body>
</html>
