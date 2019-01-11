<%-- 
    Document   : form-validation
    Created on : 25/06/2018, 11:25:16 AM
    Author     : ninus69
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es" class="app">

    <head>
        <meta charset="utf-8" />
        <title>Scale | Web Application</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav"
              />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="css/app.v1.css" type="text/css" />
        <link rel="stylesheet" href="js/chosen/chosen.css" type="text/css" />
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
                                    <h3 class="m-b-none">Registro</h3>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <form data-validate="parsley" action="Casa" method="post" enctype="multipart/form-data">
                                            <div class="col-sm-6">

                                                <section class="panel panel-default">
                                                    <header class="panel-heading">
                                                        <span class="h4">Datos Generales</span>
                                                    </header>
                                                    <div class="panel-body">
                                                        <p class="text-muted">Rellenar la información</p>
                                                        <div class="form-group pull-in clearfix">
                                                            <div class="col-sm-6">
                                                                <label>Tipo de Documento</label>
                                                                <select style="width:100%" class="chosen-select form-control" name="tipoDoc">
                                                                    <option value="DNI">DNI</option> 
                                                                    <option value="Pasaporte">Pasaporte</option> 
                                                                </select>  
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Dni</label>
                                                                <input type="text" class="form-control" name="dni"  data-required="true"> 
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Nombre</label>
                                                                <input type="text" class="form-control" name="nombre"  data-required="true" id="">
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Apellido Paterno</label>
                                                                <input type="text" class="form-control" name="paterno"  data-required="true"> 
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Apellido Materno</label>
                                                                <input type="text" class="form-control" name="materno" data-required="true" id=""> 
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Telefono</label>
                                                                <input type="number" class="form-control" placeholder="XXX XXX XXX" name="telefono" data-required="true" id=""> 
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Fecha de Nacimiento</label>
                                                                <input type="date" class="form-control" name="nacimiento"  data-required="true">
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Archivo Adjunto</label>
                                                                <input type="file" name="imagen" class="form-control" >
                                                            </div>
                                                        </div>

                                                    </div>

                                                </section>

                                            </div>
                                            <div class="col-sm-6">
                                                <section class="panel panel-default">
                                                    <header class="panel-heading">
                                                        <span class="h4">Contacto</span>
                                                    </header>
                                                    <div class="panel-body">
                                                        <p class="text-muted">Rellenar la información</p>
                                                        <div class="form-group pull-in clearfix">
                                                            <div class="col-sm-6">
                                                                <label>Habitacion</label>
                                                                <select style="width:100%" class="chosen-select form-control" name="idhabitacion">
                                                                    <c:forEach items="${hab}" var="hab2">
                                                                        <option value="${hab2.idHabitacion}">${hab2.piso}</option> 
                                                                    </c:forEach>
                                                                </select>     
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Fecha de ingreso</label>
                                                                <input type="date" class="form-control" name="fechaIngreso" data-required="true"> 
                                                            </div>

                                                            <div class="col-sm-6">
                                                                <label>Tipo de Persona</label>
                                                                <select style="width:100%" class="chosen-select form-control" name="tipoPersona">
                                                                    <c:forEach items="${tipo}" var="tipo2">
                                                                        <option value="${tipo2.tipoPersona}">${tipo2.descripcion}</option> 
                                                                    </c:forEach>
                                                                </select>     
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Contacto</label>
                                                                <select style="width:100%" class="chosen-select form-control" name="contacto" >
                                                                    <c:forEach items="${con}" var="con2">
                                                                        <option value="${con2.idContacto}">${con2.parentesco}</option> 
                                                                    </c:forEach>
                                                                </select>     
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Telefono de contacto</label>
                                                                <input type="number" data-required="true" class="form-control" placeholder="Telefono" name="telefonoCon"> 
                                                            </div>


                                                        </div>

                                                    </div>
                                                    <footer class="panel-footer text-right bg-light lter">
                                                        <button type="submit" class="btn btn-success btn-s-xs">Subir Información</button>
                                                    </footer>
                                                </section>

                                            </div>
                                        </form>
                                    </div>

                                </div>
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
        <!-- parsley -->
        <script src="js/parsley/parsley.min.js"></script>
        <script src="js/parsley/parsley.extend.js"></script>
        <script src="js/app.plugin.js"></script>

        <script src="js/chosen/chosen.jquery.min.js"></script>
    </body>

</html>