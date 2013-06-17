
<%@ page import="com.inovati.insurance.CompanyTradeProducts" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-companyTradeProducts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-companyTradeProducts" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="companyTradeProducts.insuranceCompany.label" default="Insurance Company" /></th>
					
						<th><g:message code="companyTradeProducts.companyTrade.label" default="Company Trade" /></th>
					
						<th><g:message code="companyTradeProducts.productsProductTypes.label" default="Products Product Types" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${companyTradeProductsInstanceList}" status="i" var="companyTradeProductsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${companyTradeProductsInstance.id}">${fieldValue(bean: companyTradeProductsInstance, field: "insuranceCompany")}</g:link></td>
					
						<td>${fieldValue(bean: companyTradeProductsInstance, field: "companyTrade")}</td>
					
						<td>${fieldValue(bean: companyTradeProductsInstance, field: "productsProductTypes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${companyTradeProductsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
