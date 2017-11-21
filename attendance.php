<?php include_once 'authentication.php'; ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="assets/img/lovelaunion.png">

        <title>ILMB | Avail Services</title>
		
		<!-- DataTables -->
        <link href="assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />	
		<link href="assets/plugins/switchery/dist/switchery.min.css" rel="stylesheet" />
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="assets/js/modernizr.min.js"></script>
		
		<style>
		.not-active {
			pointer-events: none;
			cursor: default;
		}
		</style>

    </head>


    <body class="fixed-left" ng-app="attendance" ng-controller="attendanceCtrl" account-profile>

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="text-center">
						<!-- <a href="index.php" class="logo"><img class="img-circle" width="130px;" src="assets/img/brgy.png" alt="PLGU Logo"></a> -->
							 <a href="index.php" class="logo"><img class="img-circle" width="50px;" src="assets/img/lovelaunion.png" alt="PLGU Logo"><span><img class="img-circle" width="100px;" style="margin-right: 10px;" src="assets/img/index-logo.png" alt="PLGU Logo"></span></a>
                    </div>
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container" style="background-color: #3b5998;">
                        <div class="">
                            <div class="pull-left">
                                <button class="button-menu-mobile open-left">
                                    <i class="ion-navicon"></i>
                                </button>
                                <span class="clearfix"></span>
                            </div>

                            <!--<form role="search" class="navbar-left app-search pull-left hidden-xs">
			                     <input type="text" placeholder="Search..." class="form-control">
			                     <a href=""><i class="fa fa-search"></i></a>
			                </form>-->

                            <ul class="nav navbar-nav navbar-right pull-right">
                                <!--<li class="dropdown hidden-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="true">
                                        <i class="icon-bell"></i> <span class="badge badge-xs badge-danger">3</span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-lg">
                                        <li class="notifi-title"><span class="label label-default pull-right">New 3</span>Notification</li>
                                        <li class="list-group nicescroll notification-list">

                                           <a href="javascript:void(0);" class="list-group-item">
                                              <div class="media">
                                                 <div class="pull-left p-r-10">
                                                    <em class="fa fa-diamond fa-2x text-primary"></em>
                                                 </div>
                                                 <div class="media-body">
                                                    <h5 class="media-heading">A new order has been placed A new order has been placed</h5>
                                                    <p class="m-0">
                                                        <small>There are new settings available</small>
                                                    </p>
                                                 </div>
                                              </div>
                                           </a>
										</li>
                                        <li>
                                            <a href="javascript:void(0);" class="list-group-item text-right">
                                                <small class="font-600">See all notifications</small>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="hidden-xs">
                                    <a href="#" id="btn-fullscreen" class="waves-effect waves-light"><i class="icon-size-fullscreen"></i></a>
                                </li>-->
                                <li class="dropdown">
								<a href="" class="dropdown-toggle profile" data-toggle="dropdown" aria-expanded="true"><img src="{{accountProfile.picture}}" alt="user-img" class="img-circle"> </a>
								   <ul class="dropdown-menu">
										<li><a href="#" class="not-active"><i class="ti-user m-r-5"></i>{{accountProfile.fullname}}</a></li>
                                        <li><a href="javascript:;" logout-account><i class="ti-power-off m-r-5 text-danger"></i> Logout</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </div>
            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->

            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">
                    <!--- Divider -->
                    <div id="sidebar-menu">
                        <ul>
                        	<li class="text-muted menu-title">Navigation</li>
                            <li><a href="index.php"><i class="icon-home"></i><span> Dashboard </span></a></li>
                            <li><a href="registration.php"><i class="icon-note"></i><span> Registration </span></a></li>
                            <li><a href="attendance.php" class="active"><i class="icon-check"></i><span> Attendance </span></a></li>							
							<li><a href="availservice.php"><i class="icon-like"></i><span> Avail Services </span></a></li>
							<li ng-show="accountProfile.account_type == 'Admin'"><a href="events.php"><i class="icon-calender"></i><span> Events </span></a></li>
							<li ng-show="accountProfile.account_type == 'Admin'"><a href="services.php"><i class="icon-wrench"></i><span> Services </span></a></li>
							<li ng-show="accountProfile.account_type == 'Admin'"><a href="users.php"><i class="icon-user-follow"></i><span> Manage Account </span></a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- Left Sidebar End -->



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <!-- Page-Title -->
                        <div class="row">
                            <div class="col-sm-12">
                             
                            </div>
                        </div>
						<br>
						<div class="row">
                            <div class="col-sm-12">
								<div id="x_content" class="x_content"></div>
                            </div>
                        </div>

                    </div> <!-- container -->

                </div> <!-- content -->

                <footer class="footer text-right">
                    Copyright <strong>&copy; <?php echo date("Y"); ?> PGLU, I Love my Barangay.</strong> All rights reserved.
                </footer>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
		<script src="assets/plugins/peity/jquery.peity.min.js"></script>
		<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="assets/plugins/peity/jquery.peity.min.js"></script>
		<script src="assets/js/jquery.bootstrap-growl.min.js"></script>
		<script src="assets/plugins/switchery/dist/switchery.min.js"></script>
		

        <!-- jQuery  -->
        <script src="assets/plugins/waypoints/lib/jquery.waypoints.js"></script>
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
		<script src="assets/js/bootbox.min.js"></script>

		<!-- Angular  -->
		<script src="angular/angular.min.js"></script>
		<script src="modules/ui-bootstrap-tpls-2.5.0.min.js"></script>
		<script src="modules/account.js"></script>
		<script src="modules/fullscreen.js"></script>
		<script src="modules/bootstrap-modal.js"></script>
		<script src="modules/growl.js"></script>
		<script src="modules/attendance.js"></script>
		<script src="controllers/attendance.js"></script>

    </body>
</html>