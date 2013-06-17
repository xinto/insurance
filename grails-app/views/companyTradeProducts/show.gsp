
<%@ page import="com.inovati.insurance.CompanyTradeProducts" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-companyTradeProducts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-companyTradeProducts" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list companyTradeProducts">
			
				<g:if test="${companyTradeProductsInstance?.insuranceCompany}">
				<li class="fieldcontain">
					<span id="insuranceCompany-label" class="property-label"><g:message code="companyTradeProducts.insuranceCompany.label" default="Insurance Company" /></span>
					
						<span class="property-value" aria-labelledby="insuranceCompany-label"><g:link controller="insuranceCompany" action="show" id="${companyTradeProductsInstance?.insuranceCompany?.id}">${companyTradeProductsInstance?.insuranceCompany?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyTradeProductsInstance?.companyTrade}">
				<li class="fieldcontain">
					<span id="companyTrade-label" class="property-label"><g:message code="companyTradeProducts.companyTrade.label" default="Company Trade" /></span>
					
						<span class="property-value" aria-labelledby="companyTrade-label"><g:link controller="companyTrade" action="show" id="${companyTradeProductsInstance?.companyTrade?.id}">${companyTradeProductsInstance?.companyTrade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyTradeProductsInstance?.policys}">
				<li class="fieldcontain">
					<span id="policys-label" class="property-label"><g:message code="companyTradeProducts.policys.label" default="Policys" /></span>
					
						<g:each in="${companyTradeProductsInstance.policys}" var="p">
						<span class="property-value" aria-labelledby="policys-label"><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${companyTradeProductsInstance?.productsProductTypes}">
				<li class="fieldcontain">
					<span id="productsProductTypes-label" class="property-label"><g:message code="companyTradeProducts.productsProductTypes.label" default="Products Product Types" /></span>
					
						<span class="property-value" aria-labelledby="productsProductTypes-label"><g:link controller="productsProductTypes" action="show" id="${companyTradeProductsInstance?.productsProductTypes?.id}">${companyTradeProductsInstance?.productsProductTypes?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${companyTradeProductsInstance?.id}" />
					<g:link class="edit" action="edit" id="${companyTradeProductsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
