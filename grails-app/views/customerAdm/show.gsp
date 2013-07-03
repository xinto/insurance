<%@ page import="com.inovati.insurance.Person" %>

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
    
    <div>
      <g:textField name="name" placeholder="Nombre" />
    </div>

    <div class="controls">
      <g:select optionKey="id" optionValue="name"
          name="customerRequestGroup" from="${customerRequestGroupList}" 
          noSelection="['null':'Grupo de seleccion']"/>
      </select>
    </div>

    <div class="control-group">
        <div class="controls">
            <label class="radio inline" >
            <input type="radio" name="gender" id="optionsRadios1" value="1">
           Hombre
          </label>
          <label class="radio inline">
            <input type="radio" name="gender" id="optionsRadios2" value="2">
            Mujer
          </label>
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

</div>

	</body>

</html>

