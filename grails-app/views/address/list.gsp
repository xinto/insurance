
<%@ page import="com.inovati.insurance.Address" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-address" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="city" title="${message(code: 'address.city.label', default: 'City')}" />
					
						<g:sortableColumn property="colony" title="${message(code: 'address.colony.label', default: 'Colony')}" />
					
						<g:sortableColumn property="delegation" title="${message(code: 'address.delegation.label', default: 'Delegation')}" />
					
						<g:sortableColumn property="number" title="${message(code: 'address.number.label', default: 'Number')}" />
					
						<g:sortableColumn property="postalCode" title="${message(code: 'address.postalCode.label', default: 'Postal Code')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'address.state.label', default: 'State')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${addressInstanceList}" status="i" var="addressInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${addressInstance.id}">${fieldValue(bean: addressInstance, field: "city")}</g:link></td>
					
						<td>${fieldValue(bean: addressInstance, field: "colony")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "delegation")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "number")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "postalCode")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "state")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${addressInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
