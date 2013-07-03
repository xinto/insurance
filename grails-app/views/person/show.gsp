<%@ page import="com.inovati.tmf.Customer" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="layout" content="main"/>
    <g:javascript src="jquery-ui.js"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui.css')}" type="text/css">
    <script type="text/javascript">
                    $(document).ready(function() {
                      $("#datepicker").datepicker({dateFormat: 'dd/mm/yy'});
                    })
    </script>
  </head>

	<body>	

    <div class="message" >${flash.message}</div>
    <div class="errors" role="status">${flash.errors}</div>


		<div class="container-fluid">

 <form class="form-vertical" method="post">
  <g:hiddenField name="id" value="${customer?.id}" />
  <div class="row-fluid">
    <div class="span4">
     <h4 style="text-align:center">Información General</h4>
      <div class="control-group">
    <label class="control-label" for="nombre">Nombre</label>
    <div class="controls">
      <g:textField name="name" placeholder="Nombre" value="${customer?.name}"/>
    </div>
  </div>



     <div class="control-group">
      <g:if test="${customer?.photo}">
        <div  width="120px">
          <g:img dir="images/ClientImages" file="${customer?.photo}" style="height:160px; width:120px"/>
          <g:link controller="camera" action="cameraContext" params="[isEmployee: 0, interestId: customer?.id]">Cambiar Foto</g:link>
        </div>
        </g:if>
        <g:else>
        <img src="" style="height:160px; width:120px" />
          <g:link controller="camera" action="cameraContext" params="[isEmployee: 0, interestId: customer?.id]">Capturar Foto</g:link>  
        </g:else>
    </div>



    <div class="control-group">
      <br />
    <label class="control-label" for="gender">Género</label>
    <div class="controls">
      <g:select id="gender" name="gender" from="${['Hombre','Mujer']}" keys="${[1,2]}" optionKey="key" value="${customer?.gender}" />
    </div>
  </div>
    <div class="control-group">
    <label class="control-label" for="edocivil">Edo. Civil</label>
    <div class="controls">
      <g:textField name="civilStatus" placeholder="Estado Civil" value="${customer?.civilStatus}"/>
    </div>
  </div>
    <div class="control-group">
    <label class="control-label" for="birth">Fecha de Nacimiento</label>
    <div class="controls">
      <g:textField name="birthday"required readonly="readonly" value="${customer?.birthday?.format('dd/MM/yyyy')}" id="datepicker"/>
    </div>
  </div>
   <div class="control-group">
    <label class="control-label" for="empresa">Empresa</label>
    <div class="controls">
       <g:textField name="company" placeholder="Empresa" value="${customer?.company}"/>
    </div>
  </div>

    <div class="control-group">
    <label class="control-label" for="titular">Relación con el Titular</label>
    <div class="controls">
      <g:select id="customerRelationshipTitular" name="customerRelationshipTitular" from="${relationships}" optionKey="id" value="${customer?.customerRelationshipTitular?.id}" />
    </div>
  </div>
    </div>
    <div class="span4">
     <h4 style="text-align:center">Membresía</h4>
    <div class="control-group">
      <label class="control-label" for="folio">Folio</label>
      <div class="controls">
     <g:link controller="membershipsAdm" action="membership" params="[folioId:customer?.customerMembership?.id,customerId:customer?.id]">
     <h4>${customer?.customerMembership?.folio}</h4></g:link>
     </div>
  </div>
    <div class="control-group">
    <label class="control-label" for="grupo">Grupo</label>
    <div class="controls">
    <g:select id="customerGroupsType" name="customerGroupsType" from="${groupTypes}" optionKey="id" value="${customer?.customerGroupsType?.id}" />
    </div>
  </div>

  <!--

    <div class="control-group">
    <label class="control-label" for="estatus">Estatus</label>
    <div class="controls">
      <input type="text" value="Activo" />
    </div>
  </div>
    <div class="control-group">
    <label class="control-label" for="vence">Fecha de Vencimiento</label>
    <div class="controls">
      <input type="date" name="vence" />
    </div>
  </div>
-->
   <div class="control-group">
    <div class="controls">

      <label class="control-label" for="chargeIncluded">En Cobranza</label>
      <g:checkBox name="chargeIncluded" value="${customer?.chargeIncluded}" />

      </div>

      <div class="controls">  

        <label class="control-label" for="titular">Titular</label>
        <g:checkBox name="titular" value="${customer?.titular}" />

        <label class="control-label" for="tutor">Tutor</label>    
        <g:checkBox name="tutor" value="${customer?.tutor}" />  

      </div>

      <div class="controls">  

        <label class="control-label" for="entirePay">Paga Membresia Completa</label>
        <g:checkBox name="entirePay" value="${customer?.entirePay}" />

      </div>

  </div>

    <div class="control-group">
    <label class="control-label" for="titular">Vendedor</label>
    <div class="controls">
      <g:select id="employee" name="employee" from="${employees}" optionKey="id" value="${customer?.employee?.id}" />
    </div>
  </div>
    </div>
     <div class="span4">
     <h4 style="text-align:center">Ubicación y Contacto</h4>
    <div class="control-group">
    <label class="control-label" for="estatus">Dirección</label>
    <div class="controls">
      <g:textField name="address" placeholder="Calle y número" value="${customer?.address}"/>
      <g:textField name="settlement" placeholder="Colonia" value="${customer?.settlement}"/>
      <g:textField name="zipcode" placeholder="Código Postal" value="${customer?.zipcode}"/>
      <g:textField name="state" placeholder="Estado" value="${customer?.state}"/>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="estatus">Contacto</label>
    <div class="controls">
      <g:textField name="email" placeholder="E-mail" type="email" required="" pattern="[^ @]*@[^ @]*" x-moz-errormessage="Enter your email"value="${customer?.email}"/>
      <g:textField name="phone1" placeholder="Teléfono" pattern="[0-9]{10}" type="tel" value="${customer?.phone1}"/>
      <g:textField name="mobil" placeholder="Celular" pattern="[0-9]{10}" value="${customer?.mobil}"/>
      <g:textField name="phone2" placeholder="Teléfono adicional" pattern="[0-9]{10}" value="${customer?.employee?.id}"/>
    </div>
  </div>
    </div>
  </div>
  

  <div class="row-fluid">
    <div class="span3">
     
    </div>
    <div class="span3">
    </div>
    <div class="span3">

     <g:actionSubmit class="btn" action="update" value="Guardar Cambios" />

    </div>
    
    <div class="span2">
     
    </div>
  </div>
</form>
<g:form class="form-vertical" style="float:right" method="post" controller="collectAdm">
<div class="span4" >
    <g:hiddenField name="customerId" value="${customer?.id}" />
     <g:actionSubmit class="btn"  action="collect" value="Realizar Cobro" />

    </div>
</g:form>
</div>

	</body>

</html>

