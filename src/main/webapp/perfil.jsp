<%-- 
    Document   : perfil
    Created on : 03/01/2019, 02:59:08 PM
    Author     : ninus69
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="app">

    <head>
        <meta charset="utf-8" />
        <title>Scale | Web Application</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="css/app.v1.css" type="text/css" />
        <!--[if lt IE 9]> <script src="js/ie/html5shiv.js"></script> <script src="js/ie/respond.min.js"></script> <script src="js/ie/excanvas.js"></script> <![endif]-->
    </head>

    <body class="">
        <section class="vbox">
            <%@include file="WEB-INF/menusuperior.jsp"%>
            <section>
                <section class="hbox stretch">
                    <!-- .aside -->
                    <%@include file="WEB-INF/menulateral.jsp"%> <!-- /.aside -->
                    <section id="content">
                        <section class="vbox">
                            <section class="scrollable">
                                <c:forEach items="${per}" var="per2">
                                    <section class="hbox stretch">
                                        <aside class="aside-lg bg-light lter b-r">
                                            <section class="vbox">
                                                <section class="scrollable">
                                                    <div class="wrapper">

                                                        <section class="panel no-border bg-primary lt">
                                                            <div class="panel-body">
                                                                <div class="row m-t-xl">
                                                                    <div class="col-xs-3 text-right padder-v"> <a href="#"
                                                                                                                  class="btn btn-primary btn-icon btn-rounded m-t-xl"><i
                                                                                class="i i-mail2"></i></a> </div>
                                                                    <div class="col-xs-6 text-center">
                                                                        <div class="inline">
                                                                            <div class="easypiechart" data-percent="75"
                                                                                 data-line-width="6" data-bar-color="#fff"
                                                                                 data-track-Color="#2796de" data-scale-Color="false"
                                                                                 data-size="140" data-line-cap='butt'
                                                                                 data-animate="1000">
                                                                                <div class="thumb-lg avatar"> <img src="${pageContext.servletContext.contextPath}/Ver?id=${per2.idPersona}"
                                                                                                                   class="dker"> </div>
                                                                            </div>
                                                                            <div class="h4 m-t m-b-xs font-bold text-lt">${per2.nombre} ${per2.paterno} ${per2.materno}</div>
                                                                            <small class="text-muted m-b">${per2.dni}</small>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-xs-3 padder-v"> <a href="#" class="btn btn-primary btn-icon btn-rounded m-t-xl"
                                                                                                       data-toggle="class:btn-danger"> <i class="i i-phone text"></i>
                                                                            <i class="i i-phone2 text-active"></i> </a> </div>
                                                                </div>
                                                                <div class="wrapper m-t-xl m-b">
                                                                    <div class="row m-b">
                                                                        <div class="col-xs-6 text-right"> <small>Teléfono Celular</small>
                                                                            <div class="text-lt font-bold">${per2.telefono}</div>
                                                                        </div>
                                                                        <div class="col-xs-6"> <small>Teléfono Familiar</small>
                                                                            <div class="text-lt font-bold">${per2.telefono2}</div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-xs-6 text-right"> <small>Habitación</small>
                                                                            <div class="text-lt font-bold">${per2.habitacion2}</div>
                                                                        </div>
                                                                        <div class="col-xs-6"> <small>Habitacion</small>
                                                                            <div class="text-lt font-bold">${per2.habitacion}</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <footer class="panel-footer dk text-center no-border">
                                                                <div class="row pull-out">
                                                                    <div class="col-xs-4">
                                                                        <div class="padder-v"> <span class="m-b-xs h3 block text-white">S/.245</span>
                                                                            <small class="text-muted">Alquiler</small> </div>
                                                                    </div>
                                                                    <div class="col-xs-4 dker">
                                                                        <div class="padder-v"> <span class="m-b-xs h3 block text-white">S/.55</span>
                                                                            <small class="text-muted">Cable</small> </div>
                                                                    </div>
                                                                    <div class="col-xs-4">
                                                                        <div class="padder-v"> <span class="m-b-xs h3 block text-white">S/.30</span>
                                                                            <small class="text-muted">Internet</small> </div>
                                                                    </div>
                                                                </div>
                                                            </footer>
                                                        </section>


                                                    </div>
                                                </section>
                                            </section>
                                        </aside>
                                        <aside class="col-lg-4 b-l no-padder">
                                            <section class="vbox">
                                                <section class="scrollable">
                                                    <div class="wrapper">
                                                        <section class="panel panel-default" id="tablapago">
                                                            <h4 class="padder">ÚLTIMOS PAGOS</h4>
                                                            <table class="table table-striped m-b-none" >
                                                                <thead>
                                                                    <tr>
                                                                        <th>Habitación</th>
                                                                        <th>Fecha de pago</th>
                                                                        <th>Cantidad</th>
                                                                        <th>detalle</th>
                                                                        <th width="70"></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <c:forEach items="${hab}" var="hab2">

                                                                        <tr>
                                                                            <td>
                                                                                ${hab2.habitacion}
                                                                            </td>
                                                                            <td> ${hab2.fecha_pago}</td>
                                                                            <td> ${hab2.cantidad}</td>
                                                                            <td> ${hab2.detalle}</td>
                                                                            <td class="text-right">
                                                                                <div class="btn-group"> <a href="#" class="dropdown-toggle"
                                                                                                           data-toggle="dropdown"><i class="fa fa-pencil"></i></a>
                                                                                    <ul class="dropdown-menu pull-right">
                                                                                        <li><a href="#">Action</a></li>
                                                                                        <li><a href="#">Another action</a></li>
                                                                                        <li><a href="#">Something else here</a></li>
                                                                                        <li class="divider"></li>
                                                                                        <li><a href="#">Separated link</a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </section>
                                                        <section class="panel panel-default">
                                                            <ul class="nav nav-tabs m-b-n-xxs bg-light">
                                                                <li class="active"> <a href="#activities" data-toggle="tab" class="m-l">Compañeros
                                                                        <span class="badge bg-primary badge-sm m-l-xs">
                                                                            <c:forEach items="${conteo}" var="cont2">
                                                                                ${cont2.idPersona}
                                                                            </c:forEach>
                                                                        </span></a> </li>

                                                                <li> <a href="#pago" data-toggle="tab">Realizar Pago</a> </li>
                                                                <li> <a href="#contrato" data-toggle="tab">Contrato</a> </li>
                                                            </ul>
                                                            <div class="tab-content">
                                                                <div class="panel tab-pane active " id="activities">

                                                                    <ul class="list-group no-radius m-b-none m-t-n-xxs list-group-lg no-border">
                                                                        <c:forEach items="${pers}" var="pers2">
                                                                            <li class="list-group-item"> 
                                                                                <a href="#" class="thumb-sm pull-left m-r-sm">
                                                                                     <img src="${pageContext.servletContext.contextPath}/Ver?id=${pers2.idPersona}"
                                                                                                                   class="dker">
                                                                                </a> 
                                                                                <a href="#" class="clear">
                                                                                    <small class="pull-right">${pers2.idPersona}</small> 
                                                                                    <strong class="block">${pers2.paterno} ${pers2.materno} ${pers2.nombre}</strong> 
                                                                                    <small>${pers2.telefono} </small> 
                                                                                </a> 
                                                                            </li>
                                                                        </c:forEach>
                                                                    </ul>
                                                                </div>
                                                                

                                                                <div class="tab-pane wrapper-lg" id="pago">
                                                                    <form class="form-horizontal" method="post" action="">
                                                                        <input type="hidden" name="idhabitacion" id="idhabitacion" value="${per2.habitacion}">
                                                                        <input type="hidden" name="cod" id="cod" value="${per2.dni}">
                                                                        <div class="form-group"> <label class="col-sm-3 control-label">Fecha:</label>
                                                                            <div class="col-sm-5"> <input type="date" class="form-control" name="fecha" id="fecha"> </div>
                                                                        </div>
                                                                        <div class="form-group"> <label class="col-sm-3 control-label">Cantidad: </label>
                                                                            <div class="col-sm-5"> <input type="text" class="form-control" name="cantidad" id="cantidad"> </div>
                                                                        </div>

                                                                        <div class="form-group"> <label class="col-sm-3 control-label">Detalle:</label>
                                                                            <div class="col-sm-5"> <input type="text" class="form-control" name="detalle" id="detalle"> </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-sm-offset-3 col-sm-5">  <a href="#" class="btn btn-sm btn-primary " onclick="actualizar();">
                                                                                    Registrar pago
                                                                                </a>
                                                                            </div>

                                                                        </div>

                                                                    </form>
                                                                </div>
                                                                <div class="tab-pane wrapper-lg" id="contrato">
                                                                    <form class="form-horizontal" method="post" action="">
                                                                        <div class="form-group">
                                                                            <div class="col-sm-offset-3 col-sm-5"> 
                                                                              
                                                                                <a href="Contrato?action=ver&id=${per2.dni}" class="btn btn-sm btn-primary" target="_blanck">Ver Contrato</a>
                                                      
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </section>

                                                    </div>
                                                </section>

                                            </section>
                                        </aside>
                                    </section>
                                </c:forEach>
                            </section>
                        </section> <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open"
                                      data-target="#nav,html"></a>
                    </section>
                </section>
            </section>
        </section> <!-- Bootstrap -->
        <!-- App -->
        <script src="js/app.v1.js"></script>
        <script src="js/charts/easypiechart/jquery.easy-pie-chart.js"></script>
        <script src="js/app.plugin.js"></script>
        <script>
                                                                                function actualizar() {

                                                                                    var idhabitacion = $('#idhabitacion').val();
                                                                                    var cod = $('#cod').val();
                                                                                    var fecha = $('#fecha').val();
                                                                                    var cantidad = $('#cantidad').val();
                                                                                    var detalle = $('#detalle').val();
                                                                                    //var prueba =$("#prueba");
                                                                                    // var porId = document.getElementById("prueba" + id).value;
                                                                                    var parametros = {"idhabitacion": idhabitacion, "cod": cod, "fecha": fecha, "cantidad": cantidad, "detalle": detalle};
                                                                                    $.ajax({
                                                                                        type: "post",
                                                                                        url: "Historial?action=registrar",
                                                                                        data: parametros,
                                                                                        beforeSend: function (objeto) {
                                                                                            $("#resultados").html("");
                                                                                        },
                                                                                        success: function (datos) {
                                                                                            $("#tablapago").empty();
                                                                                            $("#tablapago").append(datos);
                                                                                        }
                                                                                    });
                                                                                }

        </script>

    </body>

</html>