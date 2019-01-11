<%-- 
    Document   : table-datatable
    Created on : 25/06/2018, 11:11:06 AM
    Author     : ninus69
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en" class="app">

    <head>
        <meta charset="utf-8" />
        <title>Scale | Web Application</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav"
              />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="css/app.v1.css" type="text/css" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                var $table4 = jQuery("#datos");

                $table4.DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'excelHtml5'
                    ]
                });

            });
        </script>
        <style type="text/css">
            .zoom{
                /* Aumentamos la anchura y altura durante 2 segundos */
                transition: width 2s, height 2s, transform 2s;
                -moz-transition: width 2s, height 2s, -moz-transform 2s;
                -webkit-transition: width 2s, height 2s, -webkit-transform 2s;
                -o-transition: width 2s, height 2s,-o-transform 2s;
            }
            .zoom:hover{
                /* tranformamos el elemento al pasar el mouse por encima al doble de
                   su tamaño con scale(2). */
                transform : scale(3);
                -moz-transform : scale(3);      /* Firefox */
                -webkit-transform : scale(3);   /* Chrome - Safari */
                -o-transform : scale(3);        /* Opera */
            }
        </style>
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
                                    <h3 class="m-b-none">Datatable</h3>
                                </div>
                                <section class="panel panel-default">
                                    <header class="panel-heading"> DataTables
                                        <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom"
                                           data-title="ajax to load the data."></i>
                                    </header>
                                    <div class="table-responsive">
                                        <table class="table table-striped m-b-none datatable" id="datos" >
                                            <thead  style="width: 100%; " >
                                            <th  style="color:black;">N°</th>
                                            <th  style="color:black; width: 15%" >FOTO</th>
                                            <th  style="color:black;">DNI</th>
                                            <th  style="color:black;">NOMBRE</th>
                                            <th  style="color:black;">APELLIDO PATERNO</th>
                                            <th  style="color:black;">APELLIDO MATERNO</th>
                                            <th  style="color:black;">FECHA DE NACIMIENTO</th>
                                            <th  style="color:black;">TELEFONO</th>
                                            <th  style="color:black;">PISO</th>
                                            <th  style="color:black;">OPCIONES</th>
                                            <tbody>
                                                <c:forEach items="${persona}" var="per">
                                                    <tr>
                                                        <td>${per.contador}</td>
                                                        <td><img class="zoom" style="width: 10%" src="${pageContext.servletContext.contextPath}/Ver?id=${per.idPersona}" /></td>
                                                        <td>${per.dni}</td>
                                                        <td>${per.nombre}</td>
                                                        <td>${per.paterno}</td>
                                                        <td>${per.materno}</td>
                                                        <td>${per.nacimiento}</td>
                                                        <td>${per.telefono}</td>
                                                        <td>${per.habitacion2}</td>
                                                        <td><a href="Perfil?action=vista&cod=${per.idPersona}&idhab=${per.habitacion}" class="btn btn-s-md btn-danger">Ver Perfil</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
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
        <!-- datatables -->
        <link rel="stylesheet" href="css/datatables.css">
        <script src="js/datatables/datatables.js"></script>

        <script src="js/app.plugin.js"></script>

    </body>

</html>
