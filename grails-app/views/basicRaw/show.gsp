
<%@ page import="com.inovati.insurance.BasicRaw" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'basicRaw.label', default: 'BasicRaw')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-basicRaw" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-basicRaw" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list basicRaw">
			
				<g:if test="${basicRawInstance?.accountNumber}">
				<li class="fieldcontain">
					<span id="accountNumber-label" class="property-label"><g:message code="basicRaw.accountNumber.label" default="Account Number" /></span>
					
						<span class="property-value" aria-labelledby="accountNumber-label"><g:fieldValue bean="${basicRawInstance}" field="accountNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.annualizedRaw}">
				<li class="fieldcontain">
					<span id="annualizedRaw-label" class="property-label"><g:message code="basicRaw.annualizedRaw.label" default="Annualized Raw" /></span>
					
						<span class="property-value" aria-labelledby="annualizedRaw-label"><g:fieldValue bean="${basicRawInstance}" field="annualizedRaw"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.bank}">
				<li class="fieldcontain">
					<span id="bank-label" class="property-label"><g:message code="basicRaw.bank.label" default="Bank" /></span>
					
						<span class="property-value" aria-labelledby="bank-label"><g:fieldValue bean="${basicRawInstance}" field="bank"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.comissionRaw}">
				<li class="fieldcontain">
					<span id="comissionRaw-label" class="property-label"><g:message code="basicRaw.comissionRaw.label" default="Comission Raw" /></span>
					
						<span class="property-value" aria-labelledby="comissionRaw-label"><g:fieldValue bean="${basicRawInstance}" field="comissionRaw"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.currency}">
				<li class="fieldcontain">
					<span id="currency-label" class="property-label"><g:message code="basicRaw.currency.label" default="Currency" /></span>
					
						<span class="property-value" aria-labelledby="currency-label"><g:link controller="currency" action="show" id="${basicRawInstance?.currency?.id}">${basicRawInstance?.currency?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.expiration}">
				<li class="fieldcontain">
					<span id="expiration-label" class="property-label"><g:message code="basicRaw.expiration.label" default="Expiration" /></span>
					
						<span class="property-value" aria-labelledby="expiration-label"><g:formatDate date="${basicRawInstance?.expiration}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.firstReceipt}">
				<li class="fieldcontain">
					<span id="firstReceipt-label" class="property-label"><g:message code="basicRaw.firstReceipt.label" default="First Receipt" /></span>
					
						<span class="property-value" aria-labelledby="firstReceipt-label"><g:fieldValue bean="${basicRawInstance}" field="firstReceipt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.paymentConduit}">
				<li class="fieldcontain">
					<span id="paymentConduit-label" class="property-label"><g:message code="basicRaw.paymentConduit.label" default="Payment Conduit" /></span>
					
						<span class="property-value" aria-labelledby="paymentConduit-label"><g:fieldValue bean="${basicRawInstance}" field="paymentConduit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.paymentForm}">
				<li class="fieldcontain">
					<span id="paymentForm-label" class="property-label"><g:message code="basicRaw.paymentForm.label" default="Payment Form" /></span>
					
						<span class="property-value" aria-labelledby="paymentForm-label"><g:link controller="paymentForm" action="show" id="${basicRawInstance?.paymentForm?.id}">${basicRawInstance?.paymentForm?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.policys}">
				<li class="fieldcontain">
					<span id="policys-label" class="property-label"><g:message code="basicRaw.policys.label" default="Policys" /></span>
					
						<g:each in="${basicRawInstance.policys}" var="p">
						<span class="property-value" aria-labelledby="policys-label"><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.securityCode}">
				<li class="fieldcontain">
					<span id="securityCode-label" class="property-label"><g:message code="basicRaw.securityCode.label" default="Security Code" /></span>
					
						<span class="property-value" aria-labelledby="securityCode-label"><g:fieldValue bean="${basicRawInstance}" field="securityCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basicRawInstance?.subsecuentReceipt}">
				<li class="fieldcontain">
					<span id="subsecuentReceipt-label" class="property-label"><g:message code="basicRaw.subsecuentReceipt.label" default="Subsecuent Receipt" /></span>
					
						<span class="property-value" aria-labelledby="subsecuentReceipt-label"><g:fieldValue bean="${basicRawInstance}" field="subsecuentReceipt"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${basicRawInstance?.id}" />
					<g:link class="edit" action="edit" id="${basicRawInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
