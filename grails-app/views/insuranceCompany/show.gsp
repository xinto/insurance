
<%@ page import="com.inovati.insurance.InsuranceCompany" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'insuranceCompany.label', default: 'InsuranceCompany')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-insuranceCompany" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-insuranceCompany" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list insuranceCompany">
			
				<g:if test="${insuranceCompanyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="insuranceCompany.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${insuranceCompanyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCompanyInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="insuranceCompany.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${insuranceCompanyInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCompanyInstance?.companyTradeProducts}">
				<li class="fieldcontain">
					<span id="companyTradeProducts-label" class="property-label"><g:message code="insuranceCompany.companyTradeProducts.label" default="Company Trade Products" /></span>
					
						<g:each in="${insuranceCompanyInstance.companyTradeProducts}" var="c">
						<span class="property-value" aria-labelledby="companyTradeProducts-label"><g:link controller="companyTradeProducts" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCompanyInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="insuranceCompany.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${insuranceCompanyInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${insuranceCompanyInstance?.id}" />
					<g:link class="edit" action="edit" id="${insuranceCompanyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
