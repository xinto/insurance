
<%@ page import="com.inovati.insurance.Payments" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payments.label', default: 'Payments')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-payments" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-payments" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="payments.policy.label" default="Policy" /></th>
					
						<g:sortableColumn property="date" title="${message(code: 'payments.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="amount" title="${message(code: 'payments.amount.label', default: 'Amount')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${paymentsInstanceList}" status="i" var="paymentsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${paymentsInstance.id}">${fieldValue(bean: paymentsInstance, field: "policy")}</g:link></td>
					
						<td><g:formatDate date="${paymentsInstance.date}" /></td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "amount")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${paymentsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
