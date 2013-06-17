
<%@ page import="com.inovati.insurance.AssuredCar" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'assuredCar.label', default: 'AssuredCar')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-assuredCar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-assuredCar" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="plateNumber" title="${message(code: 'assuredCar.plateNumber.label', default: 'Plate Number')}" />
					
						<g:sortableColumn property="estimatedValue" title="${message(code: 'assuredCar.estimatedValue.label', default: 'Estimated Value')}" />
					
						<th><g:message code="assuredCar.carModel.label" default="Car Model" /></th>
					
						<g:sortableColumn property="color" title="${message(code: 'assuredCar.color.label', default: 'Color')}" />
					
						<g:sortableColumn property="year" title="${message(code: 'assuredCar.year.label', default: 'Year')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${assuredCarInstanceList}" status="i" var="assuredCarInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${assuredCarInstance.id}">${fieldValue(bean: assuredCarInstance, field: "plateNumber")}</g:link></td>
					
						<td>${fieldValue(bean: assuredCarInstance, field: "estimatedValue")}</td>
					
						<td>${fieldValue(bean: assuredCarInstance, field: "carModel")}</td>
					
						<td>${fieldValue(bean: assuredCarInstance, field: "color")}</td>
					
						<td>${fieldValue(bean: assuredCarInstance, field: "year")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${assuredCarInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
