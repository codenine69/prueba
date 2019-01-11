<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section class="panel panel-default" id="tablapago">
    <h4 class="padder">ÚLTIMOS PAGOS</h4>
    <table class="table table-striped m-b-none" id="tablapago">
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