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
        <form class="form-inline" style="float:right" action="show" >
          
          
              <input type="submit" class="btn" value="Nuevo Cliente" >
      			
      		</div>
        </form>
		</div>
	<div class="row-fluid">
		<div class="span12">
<div class="message" role="status">${flash.message}</div>
<div class="errors" role="status">${flash.errors}</div>
			<table id="clients">
			<tr>
        <th>ID</th>
				<th>Folio</th>
        <th>Nombre</th>
        <th>Segundo Nombre</th>
        <th>Apellido</th>
        <th>Segundo Apellido</th>
				
		
        
			</tr>

        <g:each in="${payersList}" status="i" var="payer">
          <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            
           <td>${fieldValue(bean: payer, field: "id")}</td>
           <td>${fieldValue(bean: payer, field: "isPayer")}</td>
           <td>${fieldValue(bean: payer, field: "name")}</td>
           <td>${fieldValue(bean: payer, field: "secondName")}</td>
           <td>${fieldValue(bean: payer, field: "lastname")}</td>
           <td>${fieldValue(bean: payer, field: "secondLastname")}</td>
           
           
           
            
          
          </tr>
        </g:each>

			</table>

      


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