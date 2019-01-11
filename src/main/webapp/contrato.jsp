<%-- 
    Document   : contrato
    Created on : 07/01/2019, 02:10:47 PM
    Author     : ninus69
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .cuerpo{
                padding: 50px;
                text-align: justify;
                font-size: 20px;
            }
        </style>

    </head>
    <body onload="window.print()">
    <center>
        <h1>PRINCIPAL</h1>
    </center>
    <c:forEach items="${contrato}" var="con" >
 
                                                    
       
   
    <div class="cuerpo">
      
<strong>CONTRATO DE ARRENDAMIENTO</strong>
<br><br>
Conste por el presente contrato que celebran de una parte como ARRENDADORA la Sra
identificada con DNI N° , con domicilio en la
_________________________________________; y de la otra parte como EL
ARRENDATARIO, el señor(a) <strong>${con.nombre} ${con.paterno} ${con.materno}  </strong>. identificada con DNI N°
<strong>${con.dni}</strong> y domiciliada en la __________________ ; quienes convienen de mutuo
acuerdo y regulado por las leyes vigentes sobre la materia, en los términos y condiciones
siguientes:
<br><br>
<strong>ANTECEDENTES: </strong>
<br><br>
<strong>PRIMERA.-</strong> EL ARRENDADOR es propietaria del inmueble ubicado en la
______________________________________________ y departamento de Lima, el mismo
que se encuentra inscrito en la Partida N° ............., del Registro de la Propiedad Inmueble
de Lima, cuya área, linderos y medidas perimétricas se hallan consignadas en el referido
documento registral.<br><br>
<strong>SEGUNDA.- </strong>EL ARRENDADOR deja constancia que el inmueble al que se refiere la
cláusula anterior se encuentra desocupado, en buen estado de conservación y habitabilidad,
y sin mayor desgaste que el producido por el uso normal y ordinario.<br><br>
<strong>OBJETO DEL CONTRATO:</strong><br><br>
<strong>TERCERA.-</strong> Mediante el presente contrato EL ARRENDADOR da en alquiler al
ARRENDATARIO, el inmueble descrito en la cláusula primera para destinarlo únicamente a
vivienda, el cual es recibido en perfecto estado de operatividad, conforme a lo señalado en
la cláusula segunda. Por su parte, el ARRENDATARIO se obliga a pagar a EL
ARRENDADOR el monto de la renta pactada en la cláusula siguiente, en la forma y
oportunidad convenidas.<br><br>
<strong>RENTA: FORMA Y OPORTUNIDAD DE PAGO:</strong><br><br>
<strong>CUARTA.- </strong>
<c:forEach items="${habitacion}" var="habs">
    

Las partes acuerdan que el monto de la renta que pagará EL ARRENDATARIO,
en calidad de contraprestación por el alquiler del inmueble, asciende a la suma de
<strong>S/. ${habs.costo}</strong> (_____________________________ y 00/100 Nuevos Soles)
mensuales, cantidad que será cancelada en dinero, en la forma y oportunidad a que se
refiere la cláusula siguiente.
A la firma del presente contrato EL ARRENDATARIO, entrega al ARRENDADOR, la suma
de <strong>S/. ${habs.costo}</strong> (______________________ y 00/100 Nuevos Soles),
correspondiente al mes adelantado de ____________, y; la suma de S/. _____________
(___________________ y 00/100 nuevos soles), por concepto de tres mensualidades
adelantadas en garantía del pago, los cuales no generaran intereses ni rentas y serán
devueltas a la entrega del bien, previa verificación del cumplimiento de todos los pagos a los
que esta obligado EL ARRENDATARIO.<br><br>
QUINTA.- La forma de pago de la renta será por mensualidades adelantadas que el
ARRENDATARIO pagará en el domicilio de EL ARRENDADOR, el primer día útil de cada
mes.<br><br>
</c:forEach>
PLAZO DEL CONTRATO:<br><br>
SEXTA.- El plazo del presente contrato es de un año, el cual regirá a partir del
____________________________hasta el __________________________, a cuyo 
2
vencimiento podrá renovarse con el acuerdo de ambas partes, pudiendo variar las
condiciones establecidas en el presente contrato, en cuanto al plazo, monto de la renta y
uso del bien.<br><br>
OBLIGACIONES DE LAS PARTES:<br><br>
SETIMA.- EL ARRENDADOR se obliga a entregar el bien objeto de la prestación a su cargo
en la fecha establecida en el presente contrato, la misma que se verificará con la entrega de
las llaves.<br><br>
OCTAVA.- EL ARRENDATARIO se obliga a pagar puntualmente el monto de la renta, en la
forma, oportunidad y lugar pactados, con sujeción a lo convenido en las cláusulas cuarta y
quinta.<br><br>
NOVENA.- Asimismo, EL ARRENDATARIO está obligado a pagar puntualmente el importe
de todos los servicios públicos, tales como agua y desague, energía eléctrica y otros
suministrados en beneficio del bien.
Igualmente se incluye en esta cláusula la obligación de pagar los tributos municipales de
parques y jardines, relleno sanitario, serenazgo y otros que graven el bien arrendado, con
excepción del impuesto predial el cual corresponde exclusivamente al ARRENDADOR.
También deberá pagar cualquier derecho municipal que por Licencia Municipal, obtenga EL
ARRENDATARIO.<br><br>
DECIMA.- EL ARRENDATARIO está obligado a permitir la inspección del bien arrendado
por parte del ARRENDADOR, para cuyo efecto éste deberá cursar previo aviso por escrito,
con una anticipación no menor de dos días.
Queda convenido que forma parte de la inspección del bien arrendado, la exhibición de los
recibos debidamente cancelados correspondientes a los servicios y tributos que se refiere la
cláusula novena.<br><br>
DECIMO PRIMERA.- EL ARRENDATARIO está obligado a efectuar por cuenta y costo
propio las reparaciones y mantenimientos que sean necesarios para conservar el bien en el
mismo estado en que fue recibido.<br><br>
DECIMO SEGUNDA.- EL ARRENDATARIO queda prohibido de introducir mejoras, cambios
o modificaciones internas y externas en el bien arrendado, sin el consentimiento expreso y
por escrito de EL ARRENDADOR. Todas las mejoras inclusive las de recreo, serán de
beneficio de EL ARRENDADOR, sin obligación de pago alguno.<br><br>
DECIMO TERCERA.- EL ARRENDATARIO no podrá ceder a terceros el bien materia del
presente contrato bojo ningún título, ni subarrendarlo, total o parcialmente, ni ceder su
posición contractual, salvo que cuente con el consentimiento expreso y por escrito de EL
ARRENDADOR, en cuyo caso se suscribirán los documentos que fueren necesarios.<br><br>
DECIMO CUARTA.- EL ARRENDATARIO se obliga a desocupar el bien arrendado en la
fecha de vencimiento del plazo estipulado en la cláusula sexta de este contrato, salvo
renovación del mismo.<br><br>
CLAUSULA PENAL:<br><br>
DECIMO QUINTA.- En caso de incumplimiento de lo estipulado en la cláusula décimo
cuarta, EL ARRENDATARIO deberá pagar en calidad de penalidad compensatorio un
importe ascendente a S/. 35.00 (Treinta y Cinco y 00/100 Nuevos Soles), por cada día de
demora en la entrega del bien.<br><br>
3<br><br>
CLAUSULA DE GARANTÍA:<br><br>
DECIMO SEXTA.- En la fecha de suscripción del presente documento EL ARRENDATARIO
entrega a EL ARRENDADOR la suma de S/. .......... (......... y 00/100 nuevos soles)
equivalente a un mes de renta, en calidad de depósito, en garantía del absoluto
cumplimiento de todas las obligaciones asumidas en virtud de este contrato.
El mencionado depósito en garantía le será devuelto al ARRENDATARIO sin intereses o
rentas, al vencimiento del presente contrato, siempre que no haya sido renovado, y una vez
verificado el estado de conservación y funcionamiento del bien arrendado.
Las partes dejan establecido que el depósito en garantía, no podrá ser destinado a cubrir el
pago de la renta de ningún período.<br><br>
CLAUSULA DE CONSTITUCIÓN DE GARANTE:<br><br>
DECIMO SETIMA.- Las partes acuerdan que a fin de garantizar el fiel cumplimiento de las
obligaciones asumidas en el presente contrato intervendrá como garante solidario el señor
........................................................................., quién responderá de igual forma que EL
ARRENDATARIO, por las obligaciones asumidas por éste.<br><br>
CLAUSULA DE SOLUCION DE CONFLICTOS:<br><br>
DECIMO OCTAVA.- Ambas partes acuerdan de manera voluntarias que toda desavenencia,
litigio o controversia que pudiera derivarse de este contrato, convenio o acto jurídico,
incluidas las de su nulidad o invalidez, serán resueltas a través del arbitraje popular,
mediante fallo definitivo, de conformidad con los Reglamentos del Centro de Arbitraje
Popular “ARBITRA PERU”, a cuya administración, reglamentos y decisión se someten las
partes en forma incondicional, declarando conocerlas y aceptarlas en su integridad, el
arbitraje será de derecho y será resuelto por árbitro único, el mismo que será elegido por el
Centro de Arbitraje “Arbitra Perú”.
Asimismo las partes acuerdan conceder al árbitro las facultades para la ejecución forzosa
del laudo; estas facultades comprenden hasta el último acto procesal antes del uso de la
fuerza pública.
En señal de conformidad las partes suscriben el presente contrato en la ciudad de Lima a
los _____ días del mes de __________ de 2011.
ARRENDADOR ARRENDATARIO GARANTE
    </div>
                                                    
    </c:forEach>
</body>
</html>
