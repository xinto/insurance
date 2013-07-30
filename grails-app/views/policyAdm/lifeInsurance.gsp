<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
      <meta name="layout" content="main"/>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <link rel="shortcut icon" type="image/vnd.microsoft.icon" href="img/favicon.ico" />
        <title>Seguros Monterrey</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <meta name="author" content="Gerardo Ayala Diego">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <script type="text/javascript">
                    $(document).ready(function() {
                      if ( typeof datepicker  !== 'undefined' ) {
                           $.datepicker.regional['es'] = {
                            closeText: 'Cerrar',
                            prevText: '<Ant',
                            nextText: 'Sig>',
                            currentText: 'Hoy',
                            monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                            monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
                            dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
                            dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
                            dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
                            weekHeader: 'Sm',
                            dateFormat: 'dd/mm/yy',
                            firstDay: 1,
                            isRTL: false,
                            changeYear: true,
                            showMonthAfterYear: false,
                            yearSuffix: ''};
                            
                         $.datepicker.setDefaults($.datepicker.regional['es']);
                      }
                      $("#application-date").datepicker({dateFormat: 'dd/mm/yy'});
                      $("#birth-date-representant").datepicker({dateFormat: 'dd/mm/yy'});
                    })
                </script>

    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
            <div class="container">

        <!--row of 16's (16 columns)-->
        <div class="row">

            <div class="col_1">
                <div class="header">
                <h2>Solicitud de Seguro de Vida Individual</h2>
                </div>
            </div>
        </div>
    <form class="form-horizontal">
        <div class="row">
            <div class="col_3">
                       <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="application-date">Fecha de Emision</label>
              <div class="controls">
                <input id="application-date" name="application-date" type="text" placeholder="Selecciona una fecha" class="input-small" required="">
                
              </div>
            </div>
            </div>
            <div class="col_3 center">
           <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="application-date">Tramite Inicial</label>
              <div class="controls">
                <input id="initial" name="initial" type="checkbox">
                
              </div>
            </div>
            </div>
            <div class="col_3">
           <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="application-date">Poliza</label>
              <div class="controls">
                <input id="policy-number" name="policy-number" type="text" placeholder="Número de Poliza">
                
              </div>
            </div>
            </div>
      </div>

      <div class="row">           
        <div class="col_6">
                <label class="checkbox inline" for="filing-type-0">
                  <input type="checkbox" name="filing-type" id="filing-type-0" value="Incremento">
                  Incremento Suma Asegurada
                </label>
        </div>
        <div class="col_6">
                <label class="checkbox inline" for="filing-type-1">
                  <input type="checkbox" name="filing-type" id="filing-type-1" value="Cambio en las coberturas">
                  Cambio en las coberturas
                </label>
        </div>
        <div class="col_6">  
                <label class="checkbox inline" for="filing-type-2">
                  <input type="checkbox" name="filing-type" id="filing-type-2" value="Inclusión de asegurado">
                  Inclusión de asegurado
                </label>
        </div>
        <div class="col_6">
                <label class="checkbox inline" for="filing-type-3">
                  <input type="checkbox" name="filing-type" id="filing-type-3" value="Rehabilitación">
                  Rehabilitación
                </label>
        </div>
        <div class="col_6">
                <label class="checkbox inline" for="filing-type-4">
                  <input type="checkbox" name="filing-type" id="filing-type-4" value="Rehabilitación con cambio">
                  Rehabilitación con cambio
                </label>
        </div>
        <div class="col_6">          
                <input id="detail" name="detail" type="text" placeholder="Detalle del cambio">
        </div>
      </div>

      <div class="row">
        <div class="col_2">
          <div class="control-group">
            <label class="control-label" for="name-plan">I.-Nombre del Plan Solicitado</label>
            <div class="controls">
              <input id="name-plan" name="name-plan" type="text" placeholder=" Nombre del Plan">
              
            </div>
          </div>
        </div>
        <div class="col_4">
          <div class="control-group">
            <label class="control-label" for="sum-insured">Suma Asegurada/Renta</label>
            <div class="controls">
              <input id="sum-insured" name="sum-insured" type="text" placeholder="">
              
            </div>
          </div>
        </div>
        <div class="col_4 center">
                     <div class="control-group">
              <label class="control-label" for="basic">Básica</label>
              <div class="controls">
                <input id="basic" name="basic" type="checkbox">
                
              </div>
            </div>
        </div>
      </div>

      <div class="row">
        <div class="col_3">
          <div class="control-group">
            <label class="control-label" for="name-plan">Moneda</label>
            <div class="controls">
              <select id="currency" name="currency">
                <option value="1">M.N.</option>
                <option value="2">DLS.</option>
                <option value="3">UDI</option>

              </select>
              
            </div>
          </div>
        </div>

        <div class="col_6">
                <label class="checkbox inline" for="filing-type-4">
                  <input type="checkbox" name="filing-type" id="filing-type-4" value="Rehabilitación con cambio">
                  Preferente
                </label>
        </div>
        
      </div>

      <div class="row">
        <div class="col_1">
          <h4>II.-Datos Personales del Solicitante</h4>
              <table class="table table-striped">
                <tr>
                  <td colspan="2">
              <input id="nombre" name="name" type="text" placeholder="Nombre(s) o Razón Social">
                  </td>
                  <td colspan="2">
              <input id="maiden" name="maiden" type="text" placeholder="Apellido Paterno">
                  </td>
                  <td colspan="2">
              <input id="middle" name="middle" type="text" placeholder="Apellido Materno">
                  </td>
                </tr>
             <tr>
                  <td>
              <input id="birth_date" name="birth_date" type="text" placeholder="Fecha de Nacimiento o de Constitución" class="datepicker">
                  </td>
                  <td>
              <input id="nationality" name="nationality" type="text" placeholder="Nacionalidad">
                  </td>
                  <td>
              <input id="occupation" name="occupation" type="text" placeholder="Ocupación o Profesión">
                  </td>
                  <td>
              <input id="birth_place" name="birth_place" type="text" placeholder="País de Nacimiento">
                  </td>
                  <td>
                  <label class="radio inline" for="gender-0">
                    <input type="radio" name="gender" id="gender-0" value="M" checked="checked">
                    Mujer
                  </label>
                  <label class="radio inline" for="gender-1">
                    <input type="radio" name="gender" id="gender-1" value="H">
                    Hombre
                  </label>
                  </td>
                  <td>
                   <label class="radio inline" for="state-c-0">
                    <input type="radio" name="state-c" id="state-c-0" value="M" checked="checked">
                    Soltero
                  </label>
                  <label class="radio inline" for="state-c-1">
                    <input type="radio" name="state-c" id="state-c-1" value="H">
                    Casado
                  </label>
                  </td>
                </tr>
                <tr>
                  <td>
              <input id="col" name="col" type="text" placeholder="Colonia o Fraccionamiento">
                  </td>
                  <td>
              <input id="street" name="street" type="text" placeholder="Calle">
                  </td>
                  <td>
              <input id="ext-number" name="ext-numer" type="text" placeholder="Número Exterior">
                  </td>
                  <td>
              <input id="int-number" name="int-number" type="text" placeholder="Número Interior">
                  </td>
                  <td>
              <input id="cp" name="cp" type="text" placeholder="CP: 00000">
                  </td>
                  <td>
                 <select name="portal" id="portal">
                  <option value="">Alta Portal</option>
                  <option value="Si">Si</option>
                  <option value="No">No</option>
                 </select>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
              <input id="municipality" name="municipality" type="text" placeholder="Delegación o Municipio">
                  </td>
                  <td colspan="2">
              <input id="city" name="city" type="text" placeholder="Ciudad">
                  </td>
                  <td colspan="2">
                    <select name="estate">
                            <option value="">Estado</option>
                            <option value="Aguascalientes">Aguascalientes</option>
                            <option value="Baja California">Baja California</option>
                            <option value="Baja California Sur">Baja California Sur</option>
                            <option value="Campeche">Campeche</option>
                            <option value="Chiapas">Chiapas</option>
                            <option value="Chihuahua">Chihuahua</option>
                            <option value="Coahuila">Coahuila</option>
                            <option value="Colima">Colima</option>
                            <option value="Distrito Federal">Distrito Federal</option>
                            <option value="Durango">Durango</option>
                            <option value="Guanajuato">Guanajuato</option>
                            <option value="Guerrero">Guerrero</option>
                            <option value="Hidalgo">Hidalgo</option>
                            <option value="Jalisco">Jalisco</option>
                            <option value="Mexico">Mexico</option>
                            <option value="Michoacan">Michoacan</option>
                            <option value="Morelos">Morelos</option>
                            <option value="Nayarit">Nayarit</option>
                            <option value="Nuevo Leon">Nuevo Leon</option>
                            <option value="Oaxaca">Oaxaca</option>
                            <option value="Puebla">Puebla</option>
                            <option value="Queretaro">Queretaro</option>
                            <option value="Quintana Roo">Quintana Roo</option>
                            <option value="San Luis Potosi">San Luis Potosi</option>
                            <option value="Sinaloa">Sinaloa</option>
                            <option value="Sonora">Sonora</option>
                            <option value="Tabasco">Tabasco</option>
                            <option value="Tamaulipas">Tamaulipas</option>
                            <option value="Tlaxcala">Tlaxcala</option>
                            <option value="Veracruz">Veracruz</option>
                            <option value="Yucatan">Yucatan</option>
                            <option value="Zacatecas">Zacatecas</option>
                    </select>
                  </td>
                </tr>
               <tr>
                  <td colspan="3">
              <input id="email" name="email" type="text" placeholder="e-mail">
                  </td>
                  <td>
              <input id="particular-phone" name="particular-phone" type="text" placeholder="Tel. Particular">
                  </td>
                  <td>
              <input id="office-phone" name="office-phone" type="text" placeholder="Tel. Oficina">
                  </td>
                  <td>
              <input id="cellphone" name="cellphone" type="text" placeholder="Tel. Celular">
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
              <input id="cute-business" name="cute-business" type="text" placeholder="Giro, actividad u objeto social">
                  </td>
                  <td>
              <input id="income" name="income" type="text" placeholder="Ingresos anuales $">
                  </td>
                  <td colspan="2">
              <input id="patrimony" name="patrimony" type="text" placeholder="Origen del patrimonio">
                  </td>
                  <td>
              <input id="rfc" name="rfc" type="text" placeholder="RFC o CURP">
                  </td>
                </tr>
                <tr>
                  <td colspan="3">
              <input id="fiel" name="fiel" type="text" placeholder="Fiel (opcional)">
                  </td>
                  <td colspan="3">
              <input id="folio-merc" name="folio-merc" type="text" placeholder="Folio Mercantil (Personas Morales)">
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
              <input id="name-representant" name="name-representant" type="text" placeholder="Nombre del Representante Legal">
                  </td>
                  <td colspan="2">
              <input id="nationality-representant" name="nationality-representant" type="text" placeholder="Nacionalidad">
                  </td>
                  <td colspan="2">
              <input id="birth-date-representant" name="birth-date-representant" type="text" placeholder="Fecha de Nacimiento" class="datepicker">
                  </td>
                </tr>
              </table>
        </div>
      </div>
      <div class="row">
        <div class="col_1">
          <h4>III.-Datos Personales de Persona por Asegurar</h4>
              <table class="table table-striped">
                <tr>
                  <td colspan="2">
              <input id="nombre" name="name-ensure" type="text" placeholder="Nombre(s)">
                  </td>
                  <td colspan="2">
              <input id="maiden" name="maiden-ensure" type="text" placeholder="Apellido Paterno">
                  </td>
                  <td colspan="2">
              <input id="middle" name="middle-ensure" type="text" placeholder="Apellido Materno">
                  </td>
                </tr>
             <tr>
                  <td>
              <input id="birth_date" name="birth_date-ensure" type="text" placeholder="Fecha de Nacimiento" class="datepicker">
                  </td>
                  <td>
              <input id="nationality" name="nationality-ensure" type="text" placeholder="Nacionalidad">
                  </td>
                  <td>
              <input id="occupation" name="occupation-ensure" type="text" placeholder="Ocupación o Profesión">
                  </td>
                  <td>
              <input id="birth_place" name="birth_place-ensure" type="text" placeholder="Lugar de Nacimiento">
                  </td>
                  <td>
                  <label class="radio inline" for="gender-ensure-0">
                    <input type="radio" name="gender-ensure" id="gender-ensure-0" value="M" checked="checked">
                    Mujer
                  </label>
                  <label class="radio inline" for="gender-1">
                    <input type="radio" name="gender-ensure" id="gender-ensure-1" value="H">
                    Hombre
                  </label>
                  </td>
                  <td>
                   <label class="radio inline" for="state-c-ensure-0">
                    <input type="radio" name="state-c-ensure" id="state-ensure-c-0" value="M" checked="checked">
                    Soltero
                  </label>
                  <label class="radio inline" for="state-c-ensure-1">
                    <input type="radio" name="state-c-ensure" id="state-c-ensure-1" value="H">
                    Casado
                  </label>
                  </td>
                </tr>
                <tr>
                  <td>
              <input id="col-ensure" name="col-ensure" type="text" placeholder="Colonia o Fraccionamiento">
                  </td>
                  <td>
              <input id="street-ensure" name="street-ensure" type="text" placeholder="Calle">
                  </td>
                  <td>
              <input id="ext-number-ensure" name="ext-numer-ensure" type="text" placeholder="Número Exterior">
                  </td>
                  <td>
              <input id="int-number-ensure" name="int-number-ensure" type="text" placeholder="Número Interior">
                  </td>
                  <td>
              <input id="cp-ensure" name="cp-ensure" type="text" placeholder="CP: 00000">
                  </td>
                  <td>
                 <select name="portal-ensure" id="portal-ensure">
                  <option value="">Alta Portal</option>
                  <option value="Si">Si</option>
                  <option value="No">No</option>
                 </select>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
              <input id="municipality-ensure" name="municipality-ensure" type="text" placeholder="Delegación o Municipio">
                  </td>
                  <td colspan="2">
              <input id="city-ensure" name="city-ensure" type="text" placeholder="Ciudad">
                  </td>
                  <td colspan="2">
                    <select name="estate-ensure">
                            <option value="">Estado</option>
                            <option value="Aguascalientes">Aguascalientes</option>
                            <option value="Baja California">Baja California</option>
                            <option value="Baja California Sur">Baja California Sur</option>
                            <option value="Campeche">Campeche</option>
                            <option value="Chiapas">Chiapas</option>
                            <option value="Chihuahua">Chihuahua</option>
                            <option value="Coahuila">Coahuila</option>
                            <option value="Colima">Colima</option>
                            <option value="Distrito Federal">Distrito Federal</option>
                            <option value="Durango">Durango</option>
                            <option value="Guanajuato">Guanajuato</option>
                            <option value="Guerrero">Guerrero</option>
                            <option value="Hidalgo">Hidalgo</option>
                            <option value="Jalisco">Jalisco</option>
                            <option value="Mexico">Mexico</option>
                            <option value="Michoacan">Michoacan</option>
                            <option value="Morelos">Morelos</option>
                            <option value="Nayarit">Nayarit</option>
                            <option value="Nuevo Leon">Nuevo Leon</option>
                            <option value="Oaxaca">Oaxaca</option>
                            <option value="Puebla">Puebla</option>
                            <option value="Queretaro">Queretaro</option>
                            <option value="Quintana Roo">Quintana Roo</option>
                            <option value="San Luis Potosi">San Luis Potosi</option>
                            <option value="Sinaloa">Sinaloa</option>
                            <option value="Sonora">Sonora</option>
                            <option value="Tabasco">Tabasco</option>
                            <option value="Tamaulipas">Tamaulipas</option>
                            <option value="Tlaxcala">Tlaxcala</option>
                            <option value="Veracruz">Veracruz</option>
                            <option value="Yucatan">Yucatan</option>
                            <option value="Zacatecas">Zacatecas</option>
                    </select>
                  </td>
                </tr>
               <tr>
                  <td colspan="3">
              <input id="email-ensure" name="email-ensure" type="text" placeholder="e-mail">
                  </td>
                  <td>
              <input id="particular-phone-ensure" name="particular-phone-ensure" type="text" placeholder="Tel. Particular">
                  </td>
                  <td>
              <input id="office-phone-ensure" name="office-phone-ensure" type="text" placeholder="Tel. Oficina">
                  </td>
                  <td>
              <input id="cellphone-ensure" name="cellphone-ensure" type="text" placeholder="Tel. Celular">
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
              <input id="relation-solicitant" name="relation-solicitant" type="text" placeholder="Relación con el Solicitante">
                  </td>
                  <td>
              <input id="name-enterprise" name="name-enterprise" type="text" placeholder="Nombre de la Empresa">
                  </td>
                  <td colspan="2">
              <input id="placework" name="placework" type="text" placeholder="Descripción del área física de trabajo">
                  </td>
                  <td>
              <input id="rfc" name="rfc" type="text" placeholder="RFC o CURP">
                  </td>
                </tr>
                <tr>
                <td>
              <input id="cute-business-ensure" name="cute-business-ensure" type="text" placeholder="Giro, actividad u objeto social">
                  </td>
                  <td>
              <input id="income-ensure" name="income-ensure" type="text" placeholder="Ingresos anuales $">
                  </td>
                  <td>
              <input id="job-description" name="job-description" type="text" placeholder="Descripción de Labores">
                  </td>                
                  <td>
              <input id="fiel-ensure" name="fiel-ensure" type="text" placeholder="Fiel (Opcional)">
                  </td>
                  <td>
              <input id="height-ensure" name="height-ensure" type="text" placeholder="Altura">
                  </td>
                  <td>
              <input id="weight" name="weight" type="text" placeholder="Peso">
                  </td>
                </tr>
              </table>
        </div>
      </div>
       <div class="row">
        <div class="col_1">
          <h4>IV.-Datos Por asegurar (Anote del Mayor al Menor)</h4>
              <table class="table table-striped">
            <!--    <tr>
                  <th>No. Figura</th>
                  <th>Nombre(s)</th>
                  <th>Apellido Paterno</th>
                  <th>Apellido Materno</th>
                  <th>Sexo</th>
                  <th>Riesgo Preferente</th>
                  <th>Peso(Kgs)</th>
                  <th>Estatuta(Mts. y Cms)</th>
                  <th>Fecha de Nacimiento</th>
                </tr>
            -->
                <tr>
                  <td>
              2
                  </td>
                  <td>
              <input id="name-ensure-dependent" name="name-ensure-dependent" type="text" placeholder="Nombre(s) Cónyuge">
                  </td>
                  <td>
              <input id="maiden-ensure-dependent" name="maiden-ensure-dependent" type="text" placeholder="Apellido Paterno">
                  </td>
                  <td>
              <input id="middle-ensure-dependent" name="middle-ensure-dependent" type="text" placeholder="Apellido Materno">
                  </td>
                  <td>
                  <label class="radio inline" for="gender-ensure-dependant-0">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-0" value="M" checked="checked">
                    M
                  </label>
                  <label class="radio inline" for="gender-dependant-1">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-1" value="H">
                    H
                  </label>
                  </td>
                  <td>
                  <label class="radio inline" for="risk-ensure-dependant-0">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-0" value="1" checked="checked">
                  Si
                  </label>
                  <label class="radio inline" for="risk-dependant-1">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-1" value="0">
                  No
                  </label>
                  </td>
                  <td>
              <input id="weight-ensure-dependent" name="weight-ensure-dependent" type="text" placeholder="Peso">
                  </td>
                  <td>
              <input id="height-ensure-dependent" name="height-ensure-dependent" type="text" placeholder="Altura">
                  </td>
                  <td>
              <input id="birth_date-ensure-dependent" name="birth_date-ensure-dependent" type="text" placeholder="Fecha de Nacimiento" class="datepicker">
                  </td>
                </tr>
                  <tr>
                  <td>
              3
                  </td>
                  <td>
              <input id="name-ensure-dependent" name="name-ensure-dependent" type="text" placeholder="Nombre(s) Hijo">
                  </td>
                  <td>
              <input id="maiden-ensure-dependent" name="maiden-ensure-dependent" type="text" placeholder="Apellido Paterno">
                  </td>
                  <td>
              <input id="middle-ensure-dependent" name="middle-ensure-dependent" type="text" placeholder="Apellido Materno">
                  </td>
                  <td>
                  <label class="radio inline" for="gender-ensure-dependant-0">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-0" value="M" checked="checked">
                    M
                  </label>
                  <label class="radio inline" for="gender-dependant-1">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-1" value="H">
                    H
                  </label>
                  </td>
                  <td>
                  <label class="radio inline" for="risk-ensure-dependant-0">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-0" value="1" checked="checked">
                  Si
                  </label>
                  <label class="radio inline" for="risk-dependant-1">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-1" value="0">
                  No
                  </label>
                  </td>
                  <td>
              <input id="weight-ensure-dependent" name="weight-ensure-dependent" type="text" placeholder="Peso">
                  </td>
                  <td>
              <input id="height-ensure-dependent" name="height-ensure-dependent" type="text" placeholder="Altura">
                  </td>
                  <td>
              <input id="birth_date-ensure-dependent" name="birth_date-ensure-dependent" type="text" placeholder="Fecha de Nacimiento" class="datepicker">
                  </td>
                </tr>
                  <tr>
                  <td>
              4
                  </td>
                  <td>
              <input id="name-ensure-dependent" name="name-ensure-dependent" type="text" placeholder="Nombre(s) Hijo">
                  </td>
                  <td>
              <input id="maiden-ensure-dependent" name="maiden-ensure-dependent" type="text" placeholder="Apellido Paterno">
                  </td>
                  <td>
              <input id="middle-ensure-dependent" name="middle-ensure-dependent" type="text" placeholder="Apellido Materno">
                  </td>
                  <td>
                  <label class="radio inline" for="gender-ensure-dependant-0">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-0" value="M" checked="checked">
                    M
                  </label>
                  <label class="radio inline" for="gender-dependant-1">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-1" value="H">
                    H
                  </label>
                  </td>
                  <td>
                  <label class="radio inline" for="risk-ensure-dependant-0">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-0" value="1" checked="checked">
                  Si
                  </label>
                  <label class="radio inline" for="risk-dependant-1">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-1" value="0">
                  No
                  </label>
                  </td>
                  <td>
              <input id="weight-ensure-dependent" name="weight-ensure-dependent" type="text" placeholder="Peso">
                  </td>
                  <td>
              <input id="height-ensure-dependent" name="height-ensure-dependent" type="text" placeholder="Altura">
                  </td>
                  <td>
              <input id="birth_date-ensure-dependent" name="birth_date-ensure-dependent" type="text" placeholder="Fecha de Nacimiento" class="datepicker">
                  </td>
                </tr>
                  <tr>
                  <td>
              5
                  </td>
                  <td>
              <input id="name-ensure-dependent" name="name-ensure-dependent" type="text" placeholder="Nombre(s) Hijo">
                  </td>
                  <td>
              <input id="maiden-ensure-dependent" name="maiden-ensure-dependent" type="text" placeholder="Apellido Paterno">
                  </td>
                  <td>
              <input id="middle-ensure-dependent" name="middle-ensure-dependent" type="text" placeholder="Apellido Materno">
                  </td>
                  <td>
                  <label class="radio inline" for="gender-ensure-dependant-0">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-0" value="M" checked="checked">
                    M
                  </label>
                  <label class="radio inline" for="gender-dependant-1">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-1" value="H">
                    H
                  </label>
                  </td>
                  <td>
                  <label class="radio inline" for="risk-ensure-dependant-0">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-0" value="1" checked="checked">
                  Si
                  </label>
                  <label class="radio inline" for="risk-dependant-1">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-1" value="0">
                  No
                  </label>
                  </td>
                  <td>
              <input id="weight-ensure-dependent" name="weight-ensure-dependent" type="text" placeholder="Peso">
                  </td>
                  <td>
              <input id="height-ensure-dependent" name="height-ensure-dependent" type="text" placeholder="Altura">
                  </td>
                  <td>
              <input id="birth_date-ensure-dependent" name="birth_date-ensure-dependent" type="text" placeholder="Fecha de Nacimiento" class="datepicker">
                  </td>
                </tr>
                  <tr>
                  <td>
              6
                  </td>
                  <td>
              <input id="name-ensure-dependent" name="name-ensure-dependent" type="text" placeholder="Nombre(s) Hijo">
                  </td>
                  <td>
              <input id="maiden-ensure-dependent" name="maiden-ensure-dependent" type="text" placeholder="Apellido Paterno">
                  </td>
                  <td>
              <input id="middle-ensure-dependent" name="middle-ensure-dependent" type="text" placeholder="Apellido Materno">
                  </td>
                  <td>
                  <label class="radio inline" for="gender-ensure-dependant-0">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-0" value="M" checked="checked">
                    M
                  </label>
                  <label class="radio inline" for="gender-dependant-1">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-1" value="H">
                    H
                  </label>
                  </td>
                  <td>
                  <label class="radio inline" for="risk-ensure-dependant-0">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-0" value="1" checked="checked">
                  Si
                  </label>
                  <label class="radio inline" for="risk-dependant-1">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-1" value="0">
                  No
                  </label>
                  </td>
                  <td>
              <input id="weight-ensure-dependent" name="weight-ensure-dependent" type="text" placeholder="Peso">
                  </td>
                  <td>
              <input id="height-ensure-dependent" name="height-ensure-dependent" type="text" placeholder="Altura">
                  </td>
                  <td>
              <input id="birth_date-ensure-dependent" name="birth_date-ensure-dependent" type="text" placeholder="Fecha de Nacimiento" class="datepicker">
                  </td>
                </tr>
                                  <tr>
                  <td>
              
              <input id="fig-dependent" name="fig-dependent" type="text" placeholder="No. Figura">
                  </td>
                  <td>
              <input id="name-ensure-dependent" name="name-ensure-dependent" type="text" placeholder="Nombre(s) Hijo">
                  </td>
                  <td>
              <input id="maiden-ensure-dependent" name="maiden-ensure-dependent" type="text" placeholder="Apellido Paterno">
                  </td>
                  <td>
              <input id="middle-ensure-dependent" name="middle-ensure-dependent" type="text" placeholder="Apellido Materno">
                  </td>
                  <td>
                  <label class="radio inline" for="gender-ensure-dependant-0">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-0" value="M" checked="checked">
                    M
                  </label>
                  <label class="radio inline" for="gender-dependant-1">
                    <input type="radio" name="gender-ensure-dependant" id="gender-ensure-dependant-1" value="H">
                    H
                  </label>
                  </td>
                  <td>
                  <label class="radio inline" for="risk-ensure-dependant-0">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-0" value="1" checked="checked">
                  Si
                  </label>
                  <label class="radio inline" for="risk-dependant-1">
                    <input type="radio" name="risk-ensure-dependant" id="risk-ensure-dependant-1" value="0">
                  No
                  </label>
                  </td>
                  <td>
              <input id="weight-ensure-dependent" name="weight-ensure-dependent" type="text" placeholder="Peso">
                  </td>
                  <td>
              <input id="height-ensure-dependent" name="height-ensure-dependent" type="text" placeholder="Altura">
                  </td>
                  <td>
              <input id="birth_date-ensure-dependent" name="birth_date-ensure-dependent" type="text" placeholder="Fecha de Nacimiento" class="datepicker">
                  </td>
                </tr>
              </table>
        </div>
      </div>
              
        </div>
    </form>
        </div>
    </body>
</html>
