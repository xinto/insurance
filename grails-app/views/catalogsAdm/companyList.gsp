<%@ page import="com.inovati.insurance.InsuranceCompany" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
	<script >
		
		    jQuery(document).ready(function() {

             })

		    function fillModal(event,myElement,companyId){
		    	console.log("event: " + event);
		    	console.log($(myElement));
		    	console.log("companyId: " + ('gid'+companyId));

		    	var companyArray = jQuery('#'+('gid'+companyId)+' td');

		    	console.log(companyArray);
		    	$.each(companyArray, function(index, value) {
				  console.log(index + ': ' + value);
				  console.log(value);
				  console.log(jQuery(value).text());
				  switch(index){
				  	case 0: jQuery('#company-name').val(jQuery(value).text().trim());
				  			break;
				  	case 1: jQuery('#company-description').val(jQuery(value).text().trim());
				  			break;
				  	case 2: jQuery('#company-active').val(jQuery(value).text().trim());
				  			break
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
	        			<label style="font-weight: bold;">Catálogo de Empresas</label>
	        		</h4>
	        	</div>
	        	<div class="two columns pull_right">
	        		<div class="btn primary medium"><a href="#" class="switch" gumby-trigger="#new-company-modal">Nuevo</a></div>
	        	</div>
        	</div>
    	</div>
		
		<div class="wrapper nopad">
			<div class="row">
			<table class="striped rounded">
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'company.companyKey.label', default: 'Company Key')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'company.description.label', default: 'Description')}" />

						<g:sortableColumn property="active" title="${message(code: 'company.active.label', default: 'Active')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${companyList}" status="i" var="companyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" id ="gid${companyInstance.id}">
					
						<td>
							<a href="#" class="switch" gumby-trigger="#modal1" onclick="fillModal(event,this,${companyInstance.id})"> ${fieldValue(bean: companyInstance, field: "name")}
							</a>
						</td>
					
						<td>${fieldValue(bean: companyInstance, field: "description")}</td>
						<td>${fieldValue(bean: companyInstance, field: "active")}</td>
					
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
		              <label for="company-name">Nombre</label>
		              <div class="field">
		                <input id="company-name" class="text input" name="company-name" type="text" placeholder="Nombre"  >
		              </div>
		            </div>
		            
		            <div class="six columns">
		              <label for="company-description">Descripción</label>
		              <div class="field">
		                <input id="company-description" class="text input" name="company-description" type="text" placeholder="Descripción">
		              </div> 
		            </div>

		            <div class="seven columns">
		              <label for="company-active">Estatus</label>
		              <div class="field">
		                <input id="company-active" class="text input" name="company-active" type="text" placeholder="Estatus">
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

		<div class="modal" id="new-company-modal">
		    <div class="content">
		        <a class="close switch" gumby-trigger="|#new-company-modal"><i class="icon-cancel" /></i></a>
		        <form controller="customerAdm" action="addCompany" method="post">
			<div class="row">
			    <div class="eleven columns ">

			        <h3>Nuevo</h3>
		            <br/>
	                <div class="five columns">
		              <label for="name">Nombre</label>
		              <div class="field">
		                <input id="name" class="text input" name="name" type="text" placeholder="Nombre"  >
		              </div>
		            </div>
		            
		            <div class="six columns">
		              <label for="description">Descripción</label>
		              <div class="field">
		                <input id="description" class="text input" name="description" type="text" placeholder="Descripción">
		              </div
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
