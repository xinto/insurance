<%@ page import="com.inovati.insurance.Profession" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
	<script >
		
		    jQuery(document).ready(function() {

             })

		    function fillModal(event,myElement,professionId){
		    	console.log("event: " + event);
		    	console.log($(myElement));
		    	console.log("professionId: " + ('gid'+professionId));

		    	var professionArray = jQuery('#'+('gid'+professionId)+' td');

		    	console.log(professionArray);
		    	$.each(professionArray, function(index, value) {
				  console.log(index + ': ' + value);
				  console.log(value);
				  console.log(jQuery(value).text());
				  switch(index){
				  	case 0: jQuery('#profession-name').val(jQuery(value).text().trim());
				  			break;
				  	case 1: jQuery('#profession-remark').val(jQuery(value).text().trim());
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
        	<h4><label style="font-weight: bold;">Catálogo de Profesiones</label></h4>
    	</div>
		
		<div class="wrapper nopad">
			<div class="row">
			<table class="striped rounded">
				<thead>
					<tr>
					
						<g:sortableColumn property="professionKey" title="${message(code: 'profession.professionKey.label', default: 'Profession Key')}" />
					
						<g:sortableColumn property="remark" title="${message(code: 'profession.remark.label', default: 'Remark')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${professionsList}" status="i" var="professionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" id ="gid${professionInstance.id}">
					
						<td>
							<a href="#" class="switch" gumby-trigger="#modal1" onclick="fillModal(event,this,${professionInstance.id})"> ${fieldValue(bean: professionInstance, field: "professionKey")}
							</a>
						</td>
					
						<td>${fieldValue(bean: professionInstance, field: "remark")}</td>
					
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
		              <label for="profession-name">Profesión</label>
		              <div class="field">
		                <input id="profession-name" class="text input" name="profession-name" type="text" placeholder="Profesión"  >
		              </div>
		            </div>
		            
		            <div class="six columns">
		              <label for="profession-remark">Descripción</label>
		              <div class="field">
		                <input id="profession-remark" class="text input" name="profession-remark" type="text" placeholder="Descripción">
		              </div> 
		            </div>
						
		        </div>
			</div>
			<br/>
			<br/>
			<div class="row">
				<div class="three columns centered text-center">
	                <p class="btn primary medium">
	                    <a href="#" class="switch" gumby-trigger="|#modal1">Close Modal</a>
	                </p>
	            </div>  
	        </div>
		    </div>
		</div>
	</body>
</html>



