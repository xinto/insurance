<!DOCTYPE html>

<html>
    <head>
      <meta name="layout" content="main"/>
        <script type="text/javascript">
                    $(document).ready(function() {
                      $("#emission-date").datepicker({dateFormat: 'dd/mm/yy'});
                      $("#birthdate").datepicker({dateFormat: 'dd/mm/yy'});
                      $("#insured-birthdate").datepicker({dateFormat: 'dd/mm/yy'});
                      $("#agent-birthdate").datepicker({dateFormat: 'dd/mm/yy'});
                    })
        </script>

    </head>
    <body>
        
        <div class="row" style="text-align:center;">

          <h2>Solicitud de Seguro de Vida Individual</h2>

        </div>

    <form class="form-horizontal">
        <div class="row">
            <div class="three columns">

              <label for="emission-date">Fecha de Emision</label>
              <div class="field">
                <input id="emission-date" class="text input" name="emission-date" type="text" placeholder="Selecciona una fecha"  >
              </div>
            </div>
            
            <div class="three columns">
           
              <label for="policy-number">Poliza</label>
              <div class="field">
                <input id="policy-number" class="text input" name="policy-number" type="text" placeholder="Número de Poliza">
              </div> 
             
            </div>

            <div class="three columns">
                <label for="policy-payer">Cliente</label>
                <div class="field">
                  <div class="picker">
                    <g:select name="policy-payer" from="${payersList}" value=""
                    noSelection="['':'--']"/>
                  </div>
                </div>
            </div>
      </div>


      <div class="row">
        <fieldset class="twelve columns">
          <legend style="font-weight:bold;">I.-Nombre del Plan Solicitado</legend>
          <ul>
            <div class="four columns">
              <li class="field">
                  <label for="plan-name"> Plan </label>
                  
                    <input id="plan-name" class="text input" name="plan-name" type="text" placeholder=" Nombre del Plan"> 
                  
              </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="amount-insuranced"> Suma Asegurada/Renta </label>
                  
                    <input id="amount-insuranced" class="text input" name="amount-insuranced" type="text" placeholder="Suma Asegurada"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label class="checkbox" for="sa">
                    <input id="sa" name="sa[]" type="checkbox"> 
                    <span></span> S.A.
                  </label>
                  <label class="checkbox" for="saf">
                              <input id="saf" name="sa[]" type="checkbox"> 
                            <span></span> S.A. + Fondo
                          </label>
                </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <div class="picker">
                    <select>
                      <option value="#">Moneda</option>
                      <option>M.N.</option>
                      <option>DLS.</option>
                      <option>UDI</option>
                    </select>
                  </div>
                </li>
            </div>
          </ul>
        </fieldset>
      </div>

      <div class="row">
        <fieldset >
          <legend style="font-weight:bold;">II.-Datos Personales del Solicitante</legend>

          <div class="row">
          <ul class="twelve columns" >
            <div class="five columns">
              <li class="field">
                  <label for="name"> Nombre(s) o Razón Social </label>
                  <input id="name" class="text input" name="name" type="text" placeholder=" Nombre"> 
              </li>
            </div>
            <div class="four columns">
                <li class="field">
                  <label for="lastname"> Apellido Paterno </label>
                  <input id="lastname" class="text input" name="lastname" type="text" placeholder=" Apellido Paterno">
                </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="second-lastname"> Apellido Materno </label>
                  <input id="second-lastname" class="text input" name="second-lastname" type="text" placeholder=" Apellido Materno">
                </li>
            </div>
          </ul>
        </div>


        <div class="row">
          <ul class="twelve columns" >

            <div class="two columns">
              <li class="field">
                  <label for="birthdate"> Fec. Nac. o Const. </label>
                  
                    <input id="birthdate" class="text input" name="birthdate" type="text" placeholder="dd/mm/aaaa"> 
                  
              </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="nationality"> Nacionalidad </label>
                  
                    <input id="nationality" class="text input" name="nationality" type="text" placeholder="Nacionalidad"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="profession"> Profesión </label>
                  
                    <input id="profession" class="text input" name="profession" type="text" placeholder="Profesión"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="birthdate-country"> País de Nac. </label>
                  
                    <input id="birthdate-country" class="text input" name="birthdate-country" type="text" placeholder="País"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <div class="picker">
                    <select>
                      <option value="#">Sexo</option>
                      <option>Hombre</option>
                      <option>Mujer</option>
                    </select>
                  </div>
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <div class="picker">
                    <select>
                      <option value="#">Estado Civil</option>
                      <option>Soltero(a)</option>
                      <option>Casado(a)</option>
                    </select>
                  </div>
                </li>
            </div>
          </ul>
        </div>


        <div class="row">
          <label class="default label"> Dirección</label>
          <ul class="twelve columns" >

            <div class="eight columns">
              <li class="field">
                  <label for="street">Calle y Número Ext e Int</label>
                  <input id="street" class="text input" name="street" type="text" placeholder="Calle"> 
              </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="zipcode">Código Postal</label>
                  <input id="zipcode" class="text input" name="zipcode" type="text" placeholder="Código Postal">
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label class="checkbox" for="registration">
                    <input id="registration" name="registration" type="checkbox"> 
                    <span></span> Alta Portal
                  </label>
                </li>
            </div>
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="three columns">
              <li class="field">
                  <label for="colony">Colonia</label>
                  <input id="colony" class="text input" name="colony" type="text" placeholder="Colonia"> 
              </li>
            </div>

            <div class="three columns">
                <li class="field">
                  <label for="delegation">Municipio</label>
                  <input id="delegation" class="text input" name="delegation" type="text" placeholder="Municipio">
                </li>
            </div>

            <div class="three columns">
              <li class="field">
                  <label for="city">Ciudad</label>
                  <input id="city" class="text input" name="city" type="text" placeholder="Ciudad"> 
              </li>
            </div>

            <div class="three columns">
                <li class="field">
                  <label for="state">Estado</label>
                  <input id="state" class="text input" name="state" type="text" placeholder="Estado">
                </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="email">Correo Electrónico</label>
                  <input id="email" class="text input" name="email" type="text" placeholder="Correo Electrónico"> 
              </li>
            </div>

            <div class="three columns">
                <li class="field">
                  <label for="telephone">Tel. Particular</label>
                  <input id="telephone" class="text input" name="telephone" type="text" placeholder="Tel. Particular">
                </li>
            </div>

            <div class="three columns">
              <li class="field">
                  <label for="office-phone">Tel. Oficina</label>
                  <input id="office-phone" class="text input" name="office-phone" type="text" placeholder="Tel. Oficina"> 
              </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="three columns">
              <li class="field">
                  <label for="mobile">Tel. Celular</label>
                  <input id="mobile" class="text input" name="mobile" type="text" placeholder="Tel. Celular"> 
              </li>
            </div>

            <div class="six columns">
                <li class="field">
                  <label for="main-activity">Giro o Actividad</label>
                  <input id="main-activity" class="text input" name="main-activity" type="text" placeholder="Giro">
                </li>
            </div>

            <div class="three columns">
              <li class="field">
                  <label for="annual-salary">Ingresos Anuales</label>
                  <input id="annual-salary" class="text input" name="annual-salary" type="text" placeholder="Ingresos"> 
              </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="rfc">RFC</label>
                  <input id="rfc" class="text input" name="rfc" type="text" placeholder="RFC"> 
              </li>
            </div>

            <div class="six columns">
                <li class="field">
                  <label for="curp">CURP</label>
                  <input id="curp" class="text input" name="curp" type="text" placeholder="CURP">
                </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="fiel">Fiel(Opcional)</label>
                  <input id="fiel" class="text input" name="fiel" type="text" placeholder="Fiel"> 
              </li>
            </div>

            <div class="six columns">
                <li class="field">
                  <label for="folio">Folio mercantil(solo para Personas Morales )</label>
                  <input id="folio" class="text input" name="folio" type="text" placeholder="Folio mercantil">
                </li>
            </div>
            
          </ul>
        </div>


        <div class="row">
          <label class="default label"> Representante Legal</label>
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="agent-name">Nombre del Representante</label>
                  <input id="agent-name" class="text input" name="agent-name" type="text" placeholder="Nombre del Representante"> 
              </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="agent-nationality">Nacionalidad</label>
                  <input id="agent-nationality" class="text input" name="agent-nationality" type="text" placeholder="Nacionalidad">
                </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="agent-birthdate">Fecha de nacimiento</label>
                  <input id="agent-birthdate" class="text input" name="agent-birthdate" type="text" placeholder="dd/mm/aaaa">
                </li>
            </div>
          </ul>
        </div>

        </fieldset>
      </div>


      <div class="row">
        <fieldset >
          <legend style="font-weight:bold;" >III.-Datos Personales de Persona por Asegurar (Figura 1)</legend>

          <div class="row">
          <ul class="twelve columns" >
            <div class="five columns">
              <li class="field">
                  <label for="insured-name"> Nombre(s)</label>
                  <input id="insured-name" class="text input" name="insured-name" type="text" placeholder="Nombre"> 
              </li>
            </div>
            <div class="four columns">
                <li class="field">
                  <label for="insured-lastname"> Apellido Paterno </label>
                  <input id="insured-lastname" class="text input" name="insured-lastname" type="text" placeholder="Apellido Paterno">
                </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="insured-second-lastname"> Apellido Materno </label>
                  <input id="insured-second-lastname" class="text input" name="insured-second-lastname" type="text" placeholder="Apellido Materno">
                </li>
            </div>
          </ul>
        </div>


        <div class="row">
          <ul class="twelve columns" >

            <div class="two columns">
              <li class="field">
                  <label for="insured-birthdate"> Fec. Nac. o Const. </label>
                  
                    <input id="insured-birthdate" class="text input" name="insured-birthdate" type="text" placeholder="dd/mm/aaaa"> 
                  
              </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="insured-nationality"> Nacionalidad </label>
                  
                    <input id="insured-nationality" class="text input" name="insured-nationality" type="text" placeholder="Nacionalidad"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="insured-profession"> Profesión </label>
                  
                    <input id="insured-profession" class="text input" name="insured-profession" type="text" placeholder="Profesión"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="insured-birthdate-country"> País de Nac. </label>
                  
                    <input id="insured-birthdate-country" class="text input" name="insured-birthdate-country" type="text" placeholder="País"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <div class="picker">
                    <select name="insured-gender">
                      <option value="#">Sexo</option>
                      <option>Hombre</option>
                      <option>Mujer</option>
                    </select>
                  </div>
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <div class="picker">
                    <select name="insured-marital-status">
                      <option value="#">Estado Civil</option>
                      <option>Soltero(a)</option>
                      <option>Casado(a)</option>
                    </select>
                  </div>
                </li>
            </div>
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="insured-email">Correo Electrónico</label>
                  <input id="insured-email" class="text input" name="insured-email" type="text" placeholder="Correo Electrónico"> 
              </li>
            </div>

            <div class="three columns">
                <li class="field">
                  <label for="insured-telephone">Tel. Particular</label>
                  <input id="insured-telephone" class="text input" name="insured-telephone" type="text" placeholder="Tel. Particular">
                </li>
            </div>

            <div class="three columns">
              <li class="field">
                  <label for="insured-office-phone">Tel. Oficina</label>
                  <input id="insured-office-phone" class="text input" name="insured-office-phone" type="text" placeholder="Tel. Oficina"> 
              </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="three columns">
              <li class="field">
                  <label for="insured-mobile">Tel. Celular</label>
                  <input id="insured-mobile" class="text input" name="insured-mobile" type="text" placeholder="Tel. Celular"> 
              </li>
            </div>

            <div class="four columns">
                <li class="field">
                  <label for="relationship">Relación con el solicitante</label>
                  <input id="relationship" class="text input" name="relationship" type="text" placeholder="Relación con el solicitante">
                </li>
            </div>

            <div class="five columns">
              <li class="field">
                  <label for="company">Nombre de la empresa para la cual trabaja</label>
                  <input id="company" class="text input" name="company" type="text" placeholder="Nombre de empresa"> 
              </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="insured-rfc">RFC</label>
                  <input id="insured-rfc" class="text input" name="insured-rfc" type="text" placeholder="RFC"> 
              </li>
            </div>

            <div class="six columns">
                <li class="field">
                  <label for="insured-curp">CURP</label>
                  <input id="insured-curp" class="text input" name="insured-curp" type="text" placeholder="CURP">
                </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="four columns">
              <li class="field">
                  <label for="place">Lugar físico de laboles</label>
                  <input id="place" class="text input" name="place" type="text" placeholder="Lugar"> 
              </li>
            </div>

            <div class="four columns">
                <li class="field">
                  <label for="insured-main-activity">Giro o Actividad</label>
                  <input id="insured-main-activity" class="text input" name="insured-main-activity" type="text" placeholder="Giro">
                </li>
            </div>

            <div class="four columns">
              <li class="field">
                  <label for="insured-annual-salary">Ingresos Anuales</label>
                  <input id="insured-annual-salary" class="text input" name="insured-annual-salary" type="text" placeholder="Ingresos"> 
              </li>
            </div>
            
          </ul>
        </div>


        <div class="row">
          <ul class="twelve columns" >
            <div class="six columns">
              <li class="field">
                  <label for="work-description">Descripción de labores</label>
                  <input id="work-description" class="text input" name="work-description" type="text" placeholder="Labores"> 
              </li>
            </div>
            <div class="six columns">
              <li class="field">
                  <label for="insured-fiel">Fiel(Opcional)</label>
                  <input id="insured-fiel" class="text input" name="insured-fiel" type="text" placeholder="Fiel"> 
              </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="antique">Antigüedad en su empleo actual</label>
                  <input id="antique" class="text input" name="antique" type="text" placeholder="Antigüedad"> 
              </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="high">Estatura</label>
                  <input id="high" class="text input" name="high" type="text" placeholder="Estatura">
                </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="weight">Peso</label>
                  <input id="weight" class="text input" name="weight" type="text" placeholder="Peso">
                </li>
            </div>
          </ul>
        </div>

        </fieldset>
      </div>

       <div class="row">
        <fieldset >
          <legend style="font-weight:bold;" >IV.-Datos Personales de Persona Mancomunada</legend>

          <div class="row">
            <ul class="twelve columns" >
              <div class="five columns">
                <li class="field">
                    <label class="checkbox" for="figure-2">
                    <input id="figure-2" name="figure-2" type="checkbox"> 
                    <span></span> Figura 2
                  </label>
                </li>
              </div>
              <div class="four columns">
                  <li class="field">
                    <label class="checkbox" for="figure-3">
                    <input id="figure-3" name="figure-3" type="checkbox"> 
                    <span></span> CPV (Figura 3)
                  </li>
              </div>
              <div class="three columns">
                  <li class="field">
                    <label class="checkbox" for="figure-4">
                    <input id="figure-4" name="figure-4" type="checkbox"> 
                    <span></span> Persona por asegurar adapta(Figura 4)
                  </li>
              </div>
            </ul>
          </div>

          <div class="row">
          <ul class="twelve columns" >
            <div class="five columns">
              <li class="field">
                  <label for="figure-2-3-4-name"> Nombre(s)</label>
                  <input id="figure-2-3-4-name" class="text input" name="figure-2-3-4-name" type="text" placeholder="Nombre"> 
              </li>
            </div>
            <div class="four columns">
                <li class="field">
                  <label for="figure-2-3-4-lastname"> Apellido Paterno </label>
                  <input id="figure-2-3-4-lastname" class="text input" name="figure-2-3-4-lastname" type="text" placeholder="Apellido Paterno">
                </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="figure-2-3-4-second-lastname"> Apellido Materno </label>
                  <input id="figure-2-3-4-second-lastname" class="text input" name="figure-2-3-4-second-lastname" type="text" placeholder="Apellido Materno">
                </li>
            </div>
          </ul>
        </div>


        <div class="row">
          <ul class="twelve columns" >

            <div class="two columns">
              <li class="field">
                  <label for="figure-2-3-4-birthdate"> Fec. Nac. o Const. </label>
                  
                    <input id="figure-2-3-4-birthdate" class="text input" name="figure-2-3-4-birthdate" type="text" placeholder="dd/mm/aaaa"> 
                  
              </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="figure-2-3-4-nationality"> Nacionalidad </label>
                  
                    <input id="figure-2-3-4-nationality" class="text input" name="figure-2-3-4-nationality" type="text" placeholder="Nacionalidad"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="figure-2-3-4-profession"> Profesión </label>
                  
                    <input id="figure-2-3-4-profession" class="text input" name="figure-2-3-4-profession" type="text" placeholder="Profesión"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="figure-2-3-4-birthdate-country"> País de Nac. </label>
                  
                    <input id="figure-2-3-4-birthdate-country" class="text input" name="figure-2-3-4-birthdate-country" type="text" placeholder="País"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <div class="picker">
                    <select name="figure-2-3-4-gender">
                      <option value="#">Sexo</option>
                      <option>Hombre</option>
                      <option>Mujer</option>
                    </select>
                  </div>
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <div class="picker">
                    <select name="figure-2-3-4-marital-status">
                      <option value="#">Estado Civil</option>
                      <option>Soltero(a)</option>
                      <option>Casado(a)</option>
                    </select>
                  </div>
                </li>
            </div>
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="figure-2-3-4-email">Correo Electrónico</label>
                  <input id="figure-2-3-4-email" class="text input" name="figure-2-3-4-email" type="text" placeholder="Correo Electrónico"> 
              </li>
            </div>

            <div class="three columns">
                <li class="field">
                  <label for="figure-2-3-4-telephone">Tel. Particular</label>
                  <input id="figure-2-3-4-telephone" class="text input" name="figure-2-3-4-telephone" type="text" placeholder="Tel. Particular">
                </li>
            </div>

            <div class="three columns">
              <li class="field">
                  <label for="figure-2-3-4-office-phone">Tel. Oficina</label>
                  <input id="figure-2-3-4-office-phone" class="text input" name="figure-2-3-4-office-phone" type="text" placeholder="Tel. Oficina"> 
              </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="three columns">
              <li class="field">
                  <label for="figure-2-3-4-mobile">Tel. Celular</label>
                  <input id="figure-2-3-4-mobile" class="text input" name="figure-2-3-4-mobile" type="text" placeholder="Tel. Celular"> 
              </li>
            </div>

            <div class="four columns">
                <li class="field">
                  <label for="figure-2-3-4-relationship">Relación con el solicitante</label>
                  <input id="figure-2-3-4-relationship" class="text input" name="figure-2-3-4-relationship" type="text" placeholder="Relación con el solicitante">
                </li>
            </div>

            <div class="five columns">
              <li class="field">
                  <label for="figure-2-3-4-company">Nombre de la empresa para la cual trabaja</label>
                  <input id="figure-2-3-4-company" class="text input" name="figure-2-3-4-company" type="text" placeholder="Nombre de empresa"> 
              </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="figure-2-3-4-rfc">RFC</label>
                  <input id="figure-2-3-4-rfc" class="text input" name="figure-2-3-4-rfc" type="text" placeholder="RFC"> 
              </li>
            </div>

            <div class="six columns">
                <li class="field">
                  <label for="figure-2-3-4-curp">CURP</label>
                  <input id="figure-2-3-4-curp" class="text input" name="figure-2-3-4-curp" type="text" placeholder="CURP">
                </li>
            </div>
            
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="four columns">
              <li class="field">
                  <label for="figure-2-3-4-place">Lugar físico de laboles</label>
                  <input id="figure-2-3-4-place" class="text input" name="figure-2-3-4-place" type="text" placeholder="Lugar"> 
              </li>
            </div>

            <div class="four columns">
                <li class="field">
                  <label for="figure-2-3-4-main-activity">Giro o Actividad</label>
                  <input id="figure-2-3-4-main-activity" class="text input" name="figure-2-3-4-main-activity" type="text" placeholder="Giro">
                </li>
            </div>

            <div class="four columns">
              <li class="field">
                  <label for="figure-2-3-4-annual-salary">Ingresos Anuales</label>
                  <input id="figure-2-3-4-annual-salary" class="text input" name="figure-2-3-4-annual-salary" type="text" placeholder="Ingresos"> 
              </li>
            </div>
            
          </ul>
        </div>


        <div class="row">
          <ul class="twelve columns" >
            <div class="twelve columns">
              <li class="field">
                  <label for="figure-2-3-4-work-description">Descripción de labores</label>
                  <input id="figure-2-3-4-work-description" class="text input" name="figure-2-3-4-work-description" type="text" placeholder="Labores"> 
              </li>
            </div>
          </ul>
        </div>

        <div class="row">
          <ul class="twelve columns" >

            <div class="six columns">
              <li class="field">
                  <label for="figure-2-3-4-antique">Antigüedad en su empleo actual</label>
                  <input id="figure-2-3-4-antique" class="text input" name="figure-2-3-4-antique" type="text" placeholder="Antigüedad"> 
              </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="figure-2-3-4-high">Estatura</label>
                  <input id="figure-2-3-4-high" class="text input" name="figure-2-3-4-high" type="text" placeholder="Estatura">
                </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="figure-2-3-4-weight">Peso</label>
                  <input id="figure-2-3-4-weight" class="text input" name="figure-2-3-4-weight" type="text" placeholder="Peso">
                </li>
            </div>
          </ul>
        </div>

        </fieldset>
      </div>

      <div class="row">
        <fieldset >
          <legend style="font-weight:bold;" >V.-Datos Personales del Menor por Asegurar (Figura 5)</legend>

          <div class="row">
          <ul class="twelve columns" >
            <div class="five columns">
              <li class="field">
                  <label for="child-name"> Nombre(s)</label>
                  <input id="child-name" class="text input" name="child-name" type="text" placeholder="Nombre"> 
              </li>
            </div>
            <div class="four columns">
                <li class="field">
                  <label for="child-lastname"> Apellido Paterno </label>
                  <input id="child-lastname" class="text input" name="child-lastname" type="text" placeholder="Apellido Paterno">
                </li>
            </div>
            <div class="three columns">
                <li class="field">
                  <label for="child-second-lastname"> Apellido Materno </label>
                  <input id="child-second-lastname" class="text input" name="child-second-lastname" type="text" placeholder="Apellido Materno">
                </li>
            </div>
          </ul>
        </div>


        <div class="row">
          <ul class="twelve columns" >

            <div class="two columns">
              <li class="field">
                  <label for="child-birthdate"> Fec. Nac. o Const. </label>
                    <input id="child-birthdate" class="text input" name="child-birthdate" type="text" placeholder="dd/mm/aaaa"> 
                  
              </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="insured-nationality"> Nacionalidad </label>
                    <input id="insured-nationality" class="text input" name="insured-nationality" type="text" placeholder="Nacionalidad"> 
                  
                </li>
            </div>
            <div class="two columns">
                <li class="field">
                  <label for="child-profession"> Ocupación </label>
                    <input id="child-profession" class="text input" name="child-profession" type="text" placeholder="Ocupación"> 
                  
                </li>
            </div>
        
            <div class="two columns">
                <li class="field">
                  <div class="picker">
                    <select name="child-gender">
                      <option value="#">Sexo</option>
                      <option>Hombre</option>
                      <option>Mujer</option>
                    </select>
                  </div>
                </li>
            </div>

            <div class="two columns">
                <li class="field">
                  <label for="high">Estatura</label>
                  <input id="high" class="text input" name="high" type="text" placeholder="Estatura">
                </li>
            </div>

            <div class="two columns">
                <li class="field">
                  <label for="weight">Peso</label>
                  <input id="weight" class="text input" name="weight" type="text" placeholder="Peso">
                </li>
            </div>
            
          </ul>
        </div>

        </fieldset>
      </div>
    
          
    </form>

    </body>
</html>
