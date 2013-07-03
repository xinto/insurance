<%@ page import="com.inovati.insurance.Person" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="layout" content="main"/>
	</head>
	<body>
	
		<div class="container-fluid">
		  <div class="row-fluid">
        <div class="span5" >
                
          </div>
        <form class="form-inline" style="float:right" action="customersList" >
          
          
              <input type="button" value="Nuevo Cliente" controller="customerAdm" action="show">
      			
      		</div>
        </form>
		</div>
	<div class="row-fluid">
		<div class="span12">
<div class="message" role="status">${flash.message}</div>
<div class="errors" role="status">${flash.errors}</div>
			<table id="clients">
			<tr>
        <th>Folio</th>
				<th>Nombre</th>
				<th>Profesion</th>
				<th>Direccion</th>
				<th>Telefono</th>
        
			</tr>

        <g:each in="${payersList}" status="i" var="payer">
          <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            
           <td>${fieldValue(bean: payer, field: "id")}</td>
           <td>${fieldValue(bean: payer, field: "name")}</td>
           <td>${fieldValue(bean: payer, field: "profession")}</td>
           <td>${fieldValue(bean: payer, field: "address")}</td>
           <td>${fieldValue(bean: payer, field: "telephone1")}</td>
            
          
          </tr>
        </g:each>

			</table>

      <div class="pagination" id="clients-pag">
       <g:paginate total="${customersTotal}" max="20" params="[searchString: params.searchString, optionSearch: params.optionSearch]"/>
      </div>


</div>
</div>

		
</div>
		<script>
		$(document).ready(function(){
		/*	$('.radiotable').click(function(){
        if($(this).val() == 'clients'){
				  $('#prospects').hide();
          $('#prospects-pag').hide();
        }
        else{
          $('#clients').hide();
          $('#clients-pag').hide();
        }
				var tableName = $(this).val();
				$('#'+tableName).show();
        $('#'+tableName+'-pag').show(); 
			});*/
		});</script>
	</body>
</html>