<html>
	<head>
		<meta name="layout" content="main"/>
		<script type="text/javascript">
             $(document).ready(function() {
                $("#payer-birthday").datepicker({dateFormat: 'dd/mm/yy'});
                $("#birthdate").datepicker({dateFormat: 'dd/mm/yy'});
             })
        </script>
	</head>

	<body>

		<div class="wrapper shaded">
        	<h4><label style="font-weight: bold;">Alta de cliente</h4>
    	</div>

		<div class="row">
			<div class="twelve columns ">
				<div class="message" role="status">${flash.message}</div>
      			<div class="errors" role="status">${flash.errors}</div>
			</div>
		</div>

		<div class="row">
			<div class="three columns">
              <label for="payer-name">Nombre</label>
              <div class="field">
                <input id="payer-name" class="text input" name="payer-name" type="text" placeholder="Nombre"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="payer-second-name">Segundo Nombre</label>
              <div class="field">
                <input id="payer-second-name" class="text input" name="payer-second-name" type="text" placeholder="Segundo Nombre">
              </div> 
            </div>

            <div class="three columns">
              <label for="payer-lastname">Apellido Paterno</label>
              <div class="field">
                <input id="payer-lastname" class="text input" name="payer-lastname" type="text" placeholder="Apellido Paterno"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="payer-second-lastname">Apellido Materno</label>
              <div class="field">
                <input id="payer-second-lastname" class="text input" name="payer-second-lastname" type="text" placeholder="Apellido Materno">
              </div> 
            </div>
		</div>

		<div class="row">
			<div class="three columns">
              <label for="payer-prefered-name">Nombre Preferido</label>
              <div class="field">
                <input id="payer-prefered-name" class="text input" name="payer-prefered-name" type="text" placeholder="Nombre Preferido"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="payer-birthday">Fecha de Nacimiento</label>
              <div class="field">
                <input id="payer-birthday" class="text input" name="payer-birthday" type="text" placeholder="Fecha de Nacimiento">
              </div> 
            </div>

            <div class="three columns">
              <label for="payer-gender">Sexo</label>
              <div class="field">
                <div class="picker">
                    <g:select name="payer-gender" from="${genders}" value=""
          noSelection="['':'--']"/>

                  </div>
              </div>
            </div>
            
            <div class="three columns">
              <label for="payer-profession">Profesión</label>
              <div class="field">
                <div class="picker">
                    <select name="payer-profession">
                      <option value="#">--</option>
                      <option>CONTADOR</option>
                      <option>LICENCIADO</option>
                      <option>INGENIERO</option>
                    </select>
                  </div>
              </div> 
            </div>
		</div>

		<div class="row">
			<div class="three columns">
              <label for="payer-personal-phone">Tel. Personal</label>
              <div class="field">
                <input id="payer-personal-phone" class="text input" name="payer-personal-phone" type="text" placeholder="Tel. Personal"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="payer-office-phone">Tel. Oficina</label>
              <div class="field">
                <input id="payer-office-phone" class="text input" name="payer-office-phone" type="text" placeholder="Tel. Oficina">
              </div> 
            </div>

            <div class="three columns">
              <label for="payer-cellphone">Tel. Celular</label>
              <div class="field">
                <input id="payer-cellphone" class="text input" name="payer-cellphone" type="text" placeholder="Tel. Celular"  >
              </div>
            </div>
            
            <div class="three columns">
              <label for="payer-email">Email</label>
              <div class="field">
                <input id="payer-email" class="text input" name="payer-email" type="text" placeholder="Email">
              </div> 
            </div>
            
		</div>

		<div class="row">

			<div class="six columns">
              <label for="payer-rfc">RFC</label>
              <div class="field">
                <input id="payer-rfc" class="text input" name="payer-rfc" type="text" placeholder="RFC"  >
              </div>
            </div>
            
            <div class="six columns">
              <label for="payer-curp">CURP</label>
              <div class="field">
                <input id="payer-curp" class="text input" name="payer-curp" type="text" placeholder="CURP">
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
				  <a href="#">Guardar</a>
				</p>
		    </div>
		</div>
	</body>

</html>