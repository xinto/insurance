<%@ page import="com.inovati.insurance.Person" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="layout" content="main"/>
	</head>
	<body>

    <div class="wrapper shaded">
      <div class="row topspace">
        <div class="ten columns">
          <h4>
            <label style="font-weight: bold;">Lista de Clientes</label>
          </h4>
            </div>
            <div class="two columns pull_right">
              <div class="btn primary medium"><a href="#" class="switch" gumby-trigger="#new-gender-modal">Nuevo</a></div>
            </div>
          </div>
      </div>
	

	<div class="row">
		<div class="twelve columns ">
      <div class="message" role="status">${flash.message}</div>
      <div class="errors" role="status">${flash.errors}</div>

			<table class="striped rounded">
        <thead>
    			<tr>
            <th>ID</th>
    				<th>Folio</th>
            <th>Nombre</th>
            <th>Segundo Nombre</th>
            <th>Apellido</th>
            <th>Segundo Apellido</th>
    			</tr>
        </thead>
        <tbody>
          <g:each in="${payersList}" status="i" var="payer">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
               <td>${fieldValue(bean: payer, field: "id")}</td>
               <td>${fieldValue(bean: payer, field: "isPayer")}</td>
               <td style="width: 100px;">
                <g:link action="show" id="${payer.id}">${fieldValue(bean: payer, field: "name")}</g:link>
                
              </td>
               <td style="width: 80px;">${fieldValue(bean: payer, field: "secondName")}</td>
               <td>${fieldValue(bean: payer, field: "lastname")}</td>
               <td>${fieldValue(bean: payer, field: "secondLastname")}</td>
            </tr>
          </g:each>
        </tbody>
			 </table>

      </div>
    </div>
	
	</body>
</html>