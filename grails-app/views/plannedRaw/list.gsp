
<%@ page import="com.inovati.insurance.PlannedRaw" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plannedRaw.label', default: 'PlannedRaw')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plannedRaw" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-plannedRaw" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="accountNumber" title="${message(code: 'plannedRaw.accountNumber.label', default: 'Account Number')}" />
					
						<g:sortableColumn property="annualiedPlannedRaw" title="${message(code: 'plannedRaw.annualiedPlannedRaw.label', default: 'Annualied Planned Raw')}" />
					
						<g:sortableColumn property="bank" title="${message(code: 'plannedRaw.bank.label', default: 'Bank')}" />
					
						<g:sortableColumn property="chargue" title="${message(code: 'plannedRaw.chargue.label', default: 'Chargue')}" />
					
						<g:sortableColumn property="chargueDay" title="${message(code: 'plannedRaw.chargueDay.label', default: 'Chargue Day')}" />
					
						<g:sortableColumn property="expiration" title="${message(code: 'plannedRaw.expiration.label', default: 'Expiration')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${plannedRawInstanceList}" status="i" var="plannedRawInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${plannedRawInstance.id}">${fieldValue(bean: plannedRawInstance, field: "accountNumber")}</g:link></td>
					
						<td>${fieldValue(bean: plannedRawInstance, field: "annualiedPlannedRaw")}</td>
					
						<td>${fieldValue(bean: plannedRawInstance, field: "bank")}</td>
					
						<td>${fieldValue(bean: plannedRawInstance, field: "chargue")}</td>
					
						<td><g:formatDate date="${plannedRawInstance.chargueDay}" /></td>
					
						<td><g:formatDate date="${plannedRawInstance.expiration}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${plannedRawInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
