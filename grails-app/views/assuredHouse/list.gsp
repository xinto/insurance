
<%@ page import="com.inovati.insurance.AssuredHouse" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'assuredHouse.label', default: 'AssuredHouse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-assuredHouse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-assuredHouse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="assuredHouse.address.label" default="Address" /></th>
					
						<g:sortableColumn property="estimatedValue" title="${message(code: 'assuredHouse.estimatedValue.label', default: 'Estimated Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${assuredHouseInstanceList}" status="i" var="assuredHouseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${assuredHouseInstance.id}">${fieldValue(bean: assuredHouseInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: assuredHouseInstance, field: "estimatedValue")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${assuredHouseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
