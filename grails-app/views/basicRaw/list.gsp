
<%@ page import="com.inovati.insurance.BasicRaw" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'basicRaw.label', default: 'BasicRaw')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-basicRaw" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-basicRaw" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="accountNumber" title="${message(code: 'basicRaw.accountNumber.label', default: 'Account Number')}" />
					
						<g:sortableColumn property="annualizedRaw" title="${message(code: 'basicRaw.annualizedRaw.label', default: 'Annualized Raw')}" />
					
						<g:sortableColumn property="bank" title="${message(code: 'basicRaw.bank.label', default: 'Bank')}" />
					
						<g:sortableColumn property="comissionRaw" title="${message(code: 'basicRaw.comissionRaw.label', default: 'Comission Raw')}" />
					
						<th><g:message code="basicRaw.currency.label" default="Currency" /></th>
					
						<g:sortableColumn property="expiration" title="${message(code: 'basicRaw.expiration.label', default: 'Expiration')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${basicRawInstanceList}" status="i" var="basicRawInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${basicRawInstance.id}">${fieldValue(bean: basicRawInstance, field: "accountNumber")}</g:link></td>
					
						<td>${fieldValue(bean: basicRawInstance, field: "annualizedRaw")}</td>
					
						<td>${fieldValue(bean: basicRawInstance, field: "bank")}</td>
					
						<td>${fieldValue(bean: basicRawInstance, field: "comissionRaw")}</td>
					
						<td>${fieldValue(bean: basicRawInstance, field: "currency")}</td>
					
						<td><g:formatDate date="${basicRawInstance.expiration}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${basicRawInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
