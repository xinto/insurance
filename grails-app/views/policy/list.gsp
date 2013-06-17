
<%@ page import="com.inovati.insurance.Policy" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'policy.label', default: 'Policy')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-policy" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-policy" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="active" title="${message(code: 'policy.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="assuredAmount" title="${message(code: 'policy.assuredAmount.label', default: 'Assured Amount')}" />
					
						<th><g:message code="policy.assuredCar.label" default="Assured Car" /></th>
					
						<th><g:message code="policy.assuredHouse.label" default="Assured House" /></th>
					
						<th><g:message code="policy.basicRaw.label" default="Basic Raw" /></th>
					
						<g:sortableColumn property="chargingDate" title="${message(code: 'policy.chargingDate.label', default: 'Charging Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${policyInstanceList}" status="i" var="policyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${policyInstance.id}">${fieldValue(bean: policyInstance, field: "active")}</g:link></td>
					
						<td>${fieldValue(bean: policyInstance, field: "assuredAmount")}</td>
					
						<td>${fieldValue(bean: policyInstance, field: "assuredCar")}</td>
					
						<td>${fieldValue(bean: policyInstance, field: "assuredHouse")}</td>
					
						<td>${fieldValue(bean: policyInstance, field: "basicRaw")}</td>
					
						<td><g:formatDate date="${policyInstance.chargingDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${policyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
