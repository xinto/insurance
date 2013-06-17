
<%@ page import="com.inovati.insurance.PaymentForm" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paymentForm.label', default: 'PaymentForm')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paymentForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paymentForm" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paymentForm">
			
				<g:if test="${paymentFormInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="paymentForm.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${paymentFormInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentFormInstance?.basicRaws}">
				<li class="fieldcontain">
					<span id="basicRaws-label" class="property-label"><g:message code="paymentForm.basicRaws.label" default="Basic Raws" /></span>
					
						<g:each in="${paymentFormInstance.basicRaws}" var="b">
						<span class="property-value" aria-labelledby="basicRaws-label"><g:link controller="basicRaw" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${paymentFormInstance?.plannedRaws}">
				<li class="fieldcontain">
					<span id="plannedRaws-label" class="property-label"><g:message code="paymentForm.plannedRaws.label" default="Planned Raws" /></span>
					
						<g:each in="${paymentFormInstance.plannedRaws}" var="p">
						<span class="property-value" aria-labelledby="plannedRaws-label"><g:link controller="plannedRaw" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${paymentFormInstance?.policys}">
				<li class="fieldcontain">
					<span id="policys-label" class="property-label"><g:message code="paymentForm.policys.label" default="Policys" /></span>
					
						<g:each in="${paymentFormInstance.policys}" var="p">
						<span class="property-value" aria-labelledby="policys-label"><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${paymentFormInstance?.id}" />
					<g:link class="edit" action="edit" id="${paymentFormInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
