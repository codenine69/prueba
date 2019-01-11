<%-- 
    Document   : form-elements
    Created on : 25/06/2018, 11:14:25 AM
    Author     : ninus69
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="app">

    <head>
        <meta charset="utf-8" />
        <title>Casa</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav"
              />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="css/app.v1.css" type="text/css" />
        <link rel="stylesheet" href="js/datepicker/datepicker.css" type="text/css" />
        <link rel="stylesheet" href="js/slider/slider.css" type="text/css" />
        <link rel="stylesheet" href="js/chosen/chosen.css" type="text/css" />
        <link rel="stylesheet" href="js/spinner/jquery.bootstrap-touchspin.css" type="text/css" />
        <link rel="stylesheet" href="js/typehead/typehead.css" type="text/css" />
        <!--[if lt IE 9]> <script src="js/ie/html5shiv.js"></script> <script src="js/ie/respond.min.js"></script> <script src="js/ie/excanvas.js"></script> <![endif]-->
    </head>

    <body class="">
        <section class="vbox">
            <%@include file="WEB-INF/menusuperior.jsp"%>
            <section>
                <section class="hbox stretch">
                    <!-- .aside -->
                    <%@include file="WEB-INF/menulateral.jsp"%>
                    <!-- /.aside -->
                    <section id="content">
                        <section class="vbox">
                            <section class="scrollable padder">
                                <div class="m-b-md">
                                    <h3 class="m-b-none">Elements</h3>
                                </div>
                               
                                <section class="panel panel-default">
                                    <header class="panel-heading font-bold"> Form elements </header>
                                    <div class="panel-body">
                                        <form class="form-horizontal" method="get">
                                           
                                          
                                            <div class="form-group">
                                                <div class="col-sm-4 col-sm-offset-2">
                                                    <button type="submit" class="btn btn-default">Cancel</button>
                                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </section>
                            </section>
                        </section>
                        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
                    </section>
                </section>
            </section>
        </section>
        <!-- Bootstrap -->
        <!-- App -->
        <script src="js/app.v1.js"></script>
        <div class="modal fade" id="modal-form">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body wrapper-lg">
                        <div class="row">
                            <div class="col-sm-6 b-r">
                                <h3 class="m-t-none m-b">Sign in</h3>
                                <p>Sign in to meet your friends.</p>
                                <form role="form">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" class="form-control" placeholder="Enter email"> </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" class="form-control" placeholder="Password"> </div>
                                    <div class="checkbox m-t-lg">
                                        <button type="submit" class="btn btn-sm btn-success pull-right text-uc m-t-n-xs">
                                            <strong>Log in</strong>
                                        </button>
                                        <label>
                                            <input type="checkbox"> Remember me </label>
                                    </div>
                                </form>
                            </div>
                            <div class="col-sm-6">
                                <h4>Not a member?</h4>
                                <p>You can create an account
                                    <a href="#" class="text-info">here</a>
                                </p>
                                <p>OR</p>
                                <a href="#" class="btn btn-primary btn-block m-b-sm">
                                    <i class="fa fa-facebook pull-left"></i>Sign in with Facebook</a>
                                <a href="#" class="btn btn-info btn-block m-b-sm">
                                    <i class="fa fa-twitter pull-left"></i>Sign in with Twitter</a>
                                <a href="#" class="btn btn-danger btn-block">
                                    <i class="fa fa-google-plus pull-left"></i>Sign in with Google+</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- datepicker -->
        <script src="js/datepicker/bootstrap-datepicker.js"></script>
        <!-- slider -->
        <script src="js/slider/bootstrap-slider.js"></script>
        <!-- file input -->
        <script src="js/file-input/bootstrap-filestyle.min.js"></script>
        <!-- wysiwyg -->
        <script src="js/wysiwyg/jquery.hotkeys.js"></script>
        <script src="js/wysiwyg/bootstrap-wysiwyg.js"></script>
        <script src="js/wysiwyg/demo.js"></script>
        <!-- markdown -->
        <script src="js/markdown/epiceditor.min.js"></script>
        <script src="js/markdown/demo.js"></script>
        <script src="js/chosen/chosen.jquery.min.js"></script>
        <script src="js/spinner/jquery.bootstrap-touchspin.min.js"></script>
        <script src="js/typehead/typeahead.bundle.min.js"></script>
        <script src="js/typehead/demo.js"></script>
        <script src="js/app.plugin.js"></script>
    </body>

</html>