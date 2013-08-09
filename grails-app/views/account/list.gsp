
<%@ page import="com.inovati.insurance.Account" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-account" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="account.account.label" default="Account" /></th>
					
						<g:sortableColumn property="accountNumber" title="${message(code: 'account.accountNumber.label', default: 'Account Number')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'account.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="expiration" title="${message(code: 'account.expiration.label', default: 'Expiration')}" />
					
						<th><g:message code="account.person.label" default="Person" /></th>
					
						<g:sortableColumn property="securityCode" title="${message(code: 'account.securityCode.label', default: 'Security Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "account")}</g:link></td>
					
						<td>${fieldValue(bean: accountInstance, field: "accountNumber")}</td>
					
						<td><g:formatBoolean boolean="${accountInstance.active}" /></td>
					
						<td><g:formatDate date="${accountInstance.expiration}" /></td>
					
						<td>${fieldValue(bean: accountInstance, field: "person")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "securityCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
