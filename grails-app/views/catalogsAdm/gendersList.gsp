<%@ page import="com.inovati.insurance.Gender" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
	<script >
		
		    jQuery(document).ready(function() {

             })

		    function fillModal(event,myElement,genderId){
		    	console.log("event: " + event);
		    	console.log($(myElement));
		    	console.log("genderId: " + ('gid'+genderId));

		    	var genderArray = jQuery('#'+('gid'+genderId)+' td');

		    	console.log(genderArray);
		    	$.each(genderArray, function(index, value) {
				  console.log(index + ': ' + value);
				  console.log(value);
				  console.log(jQuery(value).text());
				  switch(index){
				  	case 0: jQuery('#gender-name').val(jQuery(value).text().trim());
				  			break;
				  	case 1: jQuery('#gender-remark').val(jQuery(value).text().trim());
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
	        			<label style="font-weight: bold;">Catálogo de Géneros</label>
	        		</h4>
	        	</div>
	        	<div class="two columns pull_right">
	        		<div class="btn primary medium"><a href="#" class="switch" gumby-trigger="#new-gender-modal">Nuevo</a></div>
	        	</div>
        	</div>
    	</div>

		<div class="wrapper nopad">
			<div class="row">
			<table class="striped rounded">
				<thead>
					<tr>
					
						<g:sortableColumn property="genderKey" title="${message(code: 'gender.genderKey.label', default: 'Gender Key')}" />
					
						<g:sortableColumn property="remark" title="${message(code: 'gender.remark.label', default: 'Remark')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gendersList}" status="i" var="genderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" id ="gid${genderInstance.id}">
					
						<td>
							<a href="#" class="switch" gumby-trigger="#updating-gender" onclick="fillModal(event,this,${genderInstance.id})"> ${fieldValue(bean: genderInstance, field: "genderKey")}
							</a>
						</td>
					
						<td>${fieldValue(bean: genderInstance, field: "remark")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
		</div>

		<div class="modal" id="updating-gender">
		    <div class="content">
		        <a class="close switch" gumby-trigger="|#updating-gender"><i class="icon-cancel" /></i></a>
			<div class="row">
			    <div class="eleven columns ">

			        <h3>Actualización</h3>
		            <br/>
	                <div class="five columns">
		              <label for="gender-name">Género</label>
		              <div class="field">
		                <input id="gender-name" class="text input" name="gender-name" type="text" placeholder="Género"  >
		              </div>
		            </div>
		            
		            <div class="six columns">
		              <label for="gender-remark">Descripción</label>
		              <div class="field">
		                <input id="gender-remark" class="text input" name="gender-remark" type="text" placeholder="Descripción">
		              </div> 
		            </div>
						
		        </div>
			</div>
			<br/>
			<br/>
			<div class="row">
				<div class="three columns centered text-center">
	                <p class="btn primary medium">
	                    <a href="#" class="switch" gumby-trigger="|#updating-gender">Actualizar</a>
	                </p>
	            </div>  
	        </div>
		    </div>
		</div>

		<div class="modal" id="new-gender-modal">
		    <div class="content">
		        <a class="close switch" gumby-trigger="|#new-gender-modal"><i class="icon-cancel" /></i></a>
		        <form name="myForm" id="myForm" controller="customerAdm" action="addGender" method="post">
				<div class="row">
				    <div class="eleven columns ">
				    	
				        <h3>Nuevo</h3>
			            <br/>
		                <div class="five columns">
			              <label for="n-gender-name">Género</label>
			              <div class="field">
			                <input id="n-gender-name" class="text input" name="n-gender-name" type="text" placeholder="Género"  >
			              </div>
			            </div>
			            
			            <div class="six columns">
			              <label for="n-gender-remark">Descripción</label>
			              <div class="field">
			                <input id="n-gender-remark" class="text input" name="n-gender-remark" type="text" placeholder="Descripción">
			              </div> 
			            </div>
							
			        </div>
				</div>
				<br/>
				<br/>
				<div class="row">
					<div class="three columns centered text-center">
		                <p class="btn primary medium">
		                    <input type="submit" value="Submit">
		                </p>
		            </div>  
		        </div>
		        </form>
		    </div>
		</div>

	</body>
</html>
