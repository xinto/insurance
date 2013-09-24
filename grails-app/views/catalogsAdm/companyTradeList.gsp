<%@ page import="com.inovati.insurance.CompanyTrade" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
	<script >
		
		    jQuery(document).ready(function() {

             })

		    function fillModal(event,myElement,companyTradeId){
		    	console.log("event: " + event);
		    	console.log($(myElement));
		    	console.log("companyTradeId: " + ('gid'+companyTradeId));

		    	var companyTradeArray = jQuery('#'+('gid'+companyTradeId)+' td');

		    	console.log(companyTradeArray);
		    	$.each(companyTradeArray, function(index, value) {
				  console.log(index + ': ' + value);
				  console.log(value);
				  console.log(jQuery(value).text());
				  switch(index){
				  	case 0: jQuery('#name').val(jQuery(value).text().trim());
				  			break;
				  	case 1: jQuery('#active').val(jQuery(value).text().trim());
				  			break;
				  	default:
				  			break;
				  }
				});
		    	//alert($(myElement).text());
		    }


		 

	</script>
	</head>
	<body>

		<div class="wrapper shaded">
			<div class="row topspace">
				<div class="ten columns">
					<h4>
	        			<label style="font-weight: bold;">Catálogo de Ramos</label>
	        		</h4>
	        	</div>
	        	<div class="two columns pull_right">
	        		<div class="btn primary medium"><a href="#" class="switch" gumby-trigger="#new-companyTrade-modal">Nuevo</a></div>
	        	</div>
        	</div>
    	</div>
		
		<div class="wrapper nopad">
			<div class="row">
			<table class="striped rounded">
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'companyTrade.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'companyTrade.active.label', default: 'Active')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${companyTradeList}" status="i" var="companyTradeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" id ="gid${companyTradeInstance.id}">
					
						<td>
							<a href="#" class="switch" gumby-trigger="#modal1" onclick="fillModal(event,this,${companyTradeInstance.id})"> ${fieldValue(bean: companyTradeInstance, field: "name")}
							</a>
						</td>
					
						<td>${fieldValue(bean: companyTradeInstance, field: "active")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
		</div>

		<div class="modal" id="modal1">
		    <div class="content">
		        <a class="close switch" gumby-trigger="|#modal1"><i class="icon-cancel" /></i></a>
			<div class="row">
			    <div class="eleven columns ">

			        <h3>Actualización</h3>
		            <br/>
	                <div class="five columns">
		              <label for="name">Nombre</label>
		              <div class="field">
		                <input id="name" class="text input" name="name" type="text" placeholder="Nombre"  >
		              </div>
		            </div>
		            
		            <div class="six columns">
		              <label for="active">Estatus</label>
		              <div class="field">
		                <input id="active" class="text input" name="active" type="text" placeholder="Estatus">
		              </div> 
		            </div>
						
		        </div>
			</div>
			<br/>
			<br/>
			<div class="row">
				<div class="three columns centered text-center">
	                <p class="btn primary medium">
	                    <a href="#" class="switch" gumby-trigger="|#modal1">Actualizar</a>
	                </p>
	            </div>  
	        </div>
		    </div>
		</div>

		<div class="modal" id="new-companyTrade-modal">
		    <div class="content">
		        <a class="close switch" gumby-trigger="|#new-companyTrade-modal"><i class="icon-cancel" /></i></a>
		        <form controller="customerAdm" action="addCompanyTrade" method="post">
			<div class="row">
			    <div class="eleven columns ">

			        <h3>Nuevo</h3>
		            <br/>

	                <div class="six columns">
		              <label for="name">Nombre</label>
		              <div class="field">
		                <input id="name" class="text input" name="name" type="text" placeholder="Nombre"  >
		              </div>
		            </div>
		           
		            <div class="seven columns">
		              <label for="active">Estatus</label>
		              <div class="field">
		                <input id="active" class="text input" name="active" type="text" placeholder="Estatus">
		              </div> 
		            </div>		            
						
		        </div>
			</div>
			<br/>
			<br/>
			<div class="row">
				<div class="three columns centered text-center">
	                <p class="btn primary medium">
	                    <input type="submit" value="Crear">
	                </p>
	            </div>  
	        </div>
		    </div>
		</div>

	</body>
</html>