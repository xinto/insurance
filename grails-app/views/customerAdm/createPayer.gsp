<html>
	<head>
		<meta name="layout" content="main"/>
		<script type="text/javascript">
             $(document).ready(function() {
                $("#birthdate").datepicker({dateFormat: 'dd/mm/yy'});
             })
        </script>
	</head>

	<body>

    	<div class="wrapper shaded">
			<div class="row topspace">
				<div class="ten columns">
					<h4>
						<label style="font-weight: bold;">Alta de cliente</label>
					</h4>
	        	</div>
	        	
        	</div>
    	</div>

		<div class="row">
			<div class="twelve columns ">
				<div class="message" role="status">${flash.message}</div>
      			<div class="errors" role="status">${flash.errors}</div>
			</div>
		</div>
<form class="form-horizontal" controller="customerAdm" action="addNewPayer" method="post">
		<div class="row">
			<div class="three columns">
              <label for="folio">Folio</label>
              <div class="field">
                <input id="folio" class="text input" name="isPayer" type="text" placeholder="Folio"  >
              </div>
            </div>
		</div>

		<div class="row">
			<div class="three columns">
              <label for="name">Nombre</label>
              <div class="field">
                <input id="name" class="text input" name="name" type="text" placeholder="Nombre"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="secondName">Segundo Nombre</label>
              <div class="field">
                <input id="secondName" class="text input" name="secondName" type="text" placeholder="Segundo Nombre">
              </div> 
            </div>

            <div class="three columns">
              <label for="lastname">Apellido Paterno</label>
              <div class="field">
                <input id="lastname" class="text input" name="lastname" type="text" placeholder="Apellido Paterno"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="secondLastname">Apellido Materno</label>
              <div class="field">
                <input id="secondLastname" class="text input" name="secondLastname" type="text" placeholder="Apellido Materno">
              </div> 
            </div>
		</div>

		<div class="row">
			<div class="three columns">
              <label for="preferedName">Nombre Preferido</label>
              <div class="field">
                <input id="preferedName" class="text input" name="preferedName" type="text" placeholder="Nombre Preferido"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="birthdate">Fecha de Nacimiento</label>
              <div class="field">
                <input id="birthdate" class="text input" name="birthdate" type="text" placeholder="Fecha de Nacimiento">
              </div> 
            </div>

            <div class="three columns">
              <label for="gender">Sexo</label>
              <div class="field">
                <div class="picker">
                    <g:select optionKey="id" name="gender.id" from="${genders}" noSelection="['':'--']"/>

                  </div>
              </div>
            </div>
            
            <div class="three columns">
              <label for="profession">Profesión</label>
              <div class="field">
                <div class="picker">
                   <g:select optionKey="id" name="profession.id" from="${professions}" noSelection="['':'--']"/>
                  </div>
              </div> 
            </div>
		</div>

		<div class="row">
			<div class="three columns">
              <label for="personalPhone">Tel. Personal</label>
              <div class="field">
                <input id="personalPhone" class="text input" name="personalPhone" type="text" placeholder="Tel. Personal"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="officePhone">Tel. Oficina</label>
              <div class="field">
                <input id="officePhone" class="text input" name="officePhone" type="text" placeholder="Tel. Oficina">
              </div> 
            </div>

            <div class="three columns">
              <label for="cellphone">Tel. Celular</label>
              <div class="field">
                <input id="cellphone" class="text input" name="cellphone" type="text" placeholder="Tel. Celular"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="email">Email</label>
              <div class="field">
                <input id="email" class="text input" name="email" type="text" placeholder="Email">
              </div> 
            </div>
            
		</div>

		<div class="row">

			<div class="six columns">
              <label for="rfc">RFC</label>
              <div class="field">
                <input id="rfc" class="text input" name="rfc" type="text" placeholder="RFC"  >
              </div>
            </div>
            
            <div class="six columns">
              <label for="curp">CURP</label>
              <div class="field">
                <input id="curp" class="text input" name="curp" type="text" placeholder="CURP">
              </div> 
            </div>

		</div>

		<div class="row">
		<div class="twelve columns">
		<p class="pretty medium info btn">
		  <a href="#"  class="toggle" gumby-trigger="#drawer1">Dirección</a>
		</p>
		<p class="pretty medium info btn">
		  <a href="#"  class="toggle" gumby-trigger="#drawer2">Dirección de trabajo</a>
		</p>
		
		<div class="row">
		  <div class="twelve columns">

		    <div class="drawer" id="drawer1" style="-webkit-box-shadow: inset 0 -2px 5px #fff;background-color:#fff;">
		    <label class="default label"> Dirección</label>
		    <div class="row">
		  		<div class="twelve columns">
				    <div class="six columns">
		              <label for="personal-street">Calle</label>
		              <div class="field">
		                <input id="personal-street" class="text input" name="personal-street" type="text" placeholder="Calle"  >
		              </div>
		            </div>
		            
		            <div class="four columns">
		              <label for="personal-settlement">Colonia</label>
		              <div class="field">
		                <input id="personal-settlement" class="text input" name="personal-settlement" type="text" placeholder="Colonia">
		              </div> 
		            </div>

		            <div class="two columns">
		              <label for="personal-zipcode">Codigo Postal</label>
		              <div class="field">
		                <input id="personal-zipcode" class="text input" name="personal-zipcode" type="text" placeholder="Codigo Postal"  >
		              </div>
		            </div>
		         </div>
		      </div>

		      <div class="row">
		  		<div class="twelve columns">
				    <div class="six columns">
		              <label for="personal-delegation">Municipio o Delegación</label>
		              <div class="field">
		                <input id="personal-delegation" class="text input" name="personal-delegation" type="text" placeholder="Municipio o Delegación"  >
		              </div>
		            </div>
		            
		            <div class="four columns">
		              <label for="personal-city">Ciudad</label>
		              <div class="field">
		                <input id="personal-city" class="text input" name="personal-city" type="text" placeholder="Ciudad">
		              </div> 
		            </div>

		            <div class="two columns">
		              <label for="personal-state">Estado</label>
		              <div class="field">
		                <input id="personal-state" class="text input" name="personal-state" type="text" placeholder="Estado"  >
		              </div>
		            </div>
		         </div>
		      </div>
		      
		    </div>
		  </div>
		</div>


		<div class="row">
		  <div class="twelve columns">
		    <div class="drawer" id="drawer2" style="-webkit-box-shadow: inset 0 -2px 5px #fff;background-color:#fff;">
		    	<label class="default label"> Dirección de trabajo</label>
		    <div class="row">
		  		<div class="twelve columns">
				    <div class="six columns">
		              <label for="personal-street">Calle</label>
		              <div class="field">
		                <input id="personal-street" class="text input" name="personal-street" type="text" placeholder="Calle"  >
		              </div>
		            </div>
		            
		            <div class="four columns">
		              <label for="personal-settlement">Colonia</label>
		              <div class="field">
		                <input id="personal-settlement" class="text input" name="personal-settlement" type="text" placeholder="Colonia">
		              </div> 
		            </div>

		            <div class="two columns">
		              <label for="personal-zipcode">Codigo Postal</label>
		              <div class="field">
		                <input id="personal-zipcode" class="text input" name="personal-zipcode" type="text" placeholder="Codigo Postal"  >
		              </div>
		            </div>
		         </div>
		      </div>

		      <div class="row">
		  		<div class="twelve columns">
				    <div class="six columns">
		              <label for="personal-delegation">Municipio o Delegación</label>
		              <div class="field">
		                <input id="personal-delegation" class="text input" name="personal-delegation" type="text" placeholder="Municipio o Delegación"  >
		              </div>
		            </div>
		            
		            <div class="four columns">
		              <label for="personal-city">Ciudad</label>
		              <div class="field">
		                <input id="personal-city" class="text input" name="personal-city" type="text" placeholder="Ciudad">
		              </div> 
		            </div>

		            <div class="two columns">
		              <label for="personal-state">Estado</label>
		              <div class="field">
		                <input id="personal-state" class="text input" name="personal-state" type="text" placeholder="Estado"  >
		              </div>
		            </div>
		         </div>
		      </div>
		      
		    </div>
		  </div>
		</div>
		  </div>
		</div>
		<div class="row">
			<div class="push_five two columns">
		      <p class="pretty medium warning btn" style="margin-left: 30px;">
				  <input type="submit" value="Guardar">
				</p>
		    </div>
		</div>
	</form>
	</body>

</html>