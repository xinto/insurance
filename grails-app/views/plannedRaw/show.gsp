
<%@ page import="com.inovati.insurance.PlannedRaw" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plannedRaw.label', default: 'PlannedRaw')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-plannedRaw" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-plannedRaw" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list plannedRaw">
			
				<g:if test="${plannedRawInstance?.accountNumber}">
				<li class="fieldcontain">
					<span id="accountNumber-label" class="property-label"><g:message code="plannedRaw.accountNumber.label" default="Account Number" /></span>
					
						<span class="property-value" aria-labelledby="accountNumber-label"><g:fieldValue bean="${plannedRawInstance}" field="accountNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plannedRawInstance?.annualiedPlannedRaw}">
				<li class="fieldcontain">
					<span id="annualiedPlannedRaw-label" class="property-label"><g:message code="plannedRaw.annualiedPlannedRaw.label" default="Annualied Planned Raw" /></span>
					
						<span class="property-value" aria-labelledby="annualiedPlannedRaw-label"><g:fieldValue bean="${plannedRawInstance}" field="annualiedPlannedRaw"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plannedRawInstance?.bank}">
				<li class="fieldcontain">
					<span id="bank-label" class="property-label"><g:message code="plannedRaw.bank.label" default="Bank" /></span>
					
						<span class="property-value" aria-labelledby="bank-label"><g:fieldValue bean="${plannedRawInstance}" field="bank"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plannedRawInstance?.chargue}">
				<li class="fieldcontain">
					<span id="chargue-label" class="property-label"><g:message code="plannedRaw.chargue.label" default="Chargue" /></span>
					
						<span class="property-value" aria-labelledby="chargue-label"><g:fieldValue bean="${plannedRawInstance}" field="chargue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plannedRawInstance?.chargueDay}">
				<li class="fieldcontain">
					<span id="chargueDay-label" class="property-label"><g:message code="plannedRaw.chargueDay.label" default="Chargue Day" /></span>
					
						<span class="property-value" aria-labelledby="chargueDay-label"><g:formatDate date="${plannedRawInstance?.chargueDay}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plannedRawInstance?.expiration}">
				<li class="fieldcontain">
					<span id="expiration-label" class="property-label"><g:message code="plannedRaw.expiration.label" default="Expiration" /></span>
					
						<span class="property-value" aria-labelledby="expiration-label"><g:formatDate date="${plannedRawInstance?.expiration}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plannedRawInstance?.paymentForm}">
				<li class="fieldcontain">
					<span id="paymentForm-label" class="property-label"><g:message code="plannedRaw.paymentForm.label" default="Payment Form" /></span>
					
						<span class="property-value" aria-labelledby="paymentForm-label"><g:link controller="paymentForm" action="show" id="${plannedRawInstance?.paymentForm?.id}">${plannedRawInstance?.paymentForm?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${plannedRawInstance?.policys}">
				<li class="fieldcontain">
					<span id="policys-label" class="property-label"><g:message code="plannedRaw.policys.label" default="Policys" /></span>
					
						<g:each in="${plannedRawInstance.policys}" var="p">
						<span class="property-value" aria-labelledby="policys-label"><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${plannedRawInstance?.securityCode}">
				<li class="fieldcontain">
					<span id="securityCode-label" class="property-label"><g:message code="plannedRaw.securityCode.label" default="Security Code" /></span>
					
						<span class="property-value" aria-labelledby="securityCode-label"><g:fieldValue bean="${plannedRawInstance}" field="securityCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${plannedRawInstance?.id}" />
					<g:link class="edit" action="edit" id="${plannedRawInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
