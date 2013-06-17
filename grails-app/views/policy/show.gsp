
<%@ page import="com.inovati.insurance.Policy" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'policy.label', default: 'Policy')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-policy" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-policy" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list policy">
			
				<g:if test="${policyInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="policy.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${policyInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.assuredAmount}">
				<li class="fieldcontain">
					<span id="assuredAmount-label" class="property-label"><g:message code="policy.assuredAmount.label" default="Assured Amount" /></span>
					
						<span class="property-value" aria-labelledby="assuredAmount-label"><g:fieldValue bean="${policyInstance}" field="assuredAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.assuredCar}">
				<li class="fieldcontain">
					<span id="assuredCar-label" class="property-label"><g:message code="policy.assuredCar.label" default="Assured Car" /></span>
					
						<span class="property-value" aria-labelledby="assuredCar-label"><g:link controller="assuredCar" action="show" id="${policyInstance?.assuredCar?.id}">${policyInstance?.assuredCar?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.assuredHouse}">
				<li class="fieldcontain">
					<span id="assuredHouse-label" class="property-label"><g:message code="policy.assuredHouse.label" default="Assured House" /></span>
					
						<span class="property-value" aria-labelledby="assuredHouse-label"><g:link controller="assuredHouse" action="show" id="${policyInstance?.assuredHouse?.id}">${policyInstance?.assuredHouse?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.basicRaw}">
				<li class="fieldcontain">
					<span id="basicRaw-label" class="property-label"><g:message code="policy.basicRaw.label" default="Basic Raw" /></span>
					
						<span class="property-value" aria-labelledby="basicRaw-label"><g:link controller="basicRaw" action="show" id="${policyInstance?.basicRaw?.id}">${policyInstance?.basicRaw?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.beneficiarys}">
				<li class="fieldcontain">
					<span id="beneficiarys-label" class="property-label"><g:message code="policy.beneficiarys.label" default="Beneficiarys" /></span>
					
						<g:each in="${policyInstance.beneficiarys}" var="b">
						<span class="property-value" aria-labelledby="beneficiarys-label"><g:link controller="beneficiary" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.chargingDate}">
				<li class="fieldcontain">
					<span id="chargingDate-label" class="property-label"><g:message code="policy.chargingDate.label" default="Charging Date" /></span>
					
						<span class="property-value" aria-labelledby="chargingDate-label"><g:formatDate date="${policyInstance?.chargingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.companyTrade}">
				<li class="fieldcontain">
					<span id="companyTrade-label" class="property-label"><g:message code="policy.companyTrade.label" default="Company Trade" /></span>
					
						<span class="property-value" aria-labelledby="companyTrade-label"><g:link controller="companyTrade" action="show" id="${policyInstance?.companyTrade?.id}">${policyInstance?.companyTrade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.contractor}">
				<li class="fieldcontain">
					<span id="contractor-label" class="property-label"><g:message code="policy.contractor.label" default="Contractor" /></span>
					
						<span class="property-value" aria-labelledby="contractor-label"><g:link controller="person" action="show" id="${policyInstance?.contractor?.id}">${policyInstance?.contractor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.insureds}">
				<li class="fieldcontain">
					<span id="insureds-label" class="property-label"><g:message code="policy.insureds.label" default="Insureds" /></span>
					
						<g:each in="${policyInstance.insureds}" var="i">
						<span class="property-value" aria-labelledby="insureds-label"><g:link controller="insured" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.payer}">
				<li class="fieldcontain">
					<span id="payer-label" class="property-label"><g:message code="policy.payer.label" default="Payer" /></span>
					
						<span class="property-value" aria-labelledby="payer-label"><g:link controller="person" action="show" id="${policyInstance?.payer?.id}">${policyInstance?.payer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.paymentForm}">
				<li class="fieldcontain">
					<span id="paymentForm-label" class="property-label"><g:message code="policy.paymentForm.label" default="Payment Form" /></span>
					
						<span class="property-value" aria-labelledby="paymentForm-label"><g:link controller="paymentForm" action="show" id="${policyInstance?.paymentForm?.id}">${policyInstance?.paymentForm?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.paymentMethod}">
				<li class="fieldcontain">
					<span id="paymentMethod-label" class="property-label"><g:message code="policy.paymentMethod.label" default="Payment Method" /></span>
					
						<span class="property-value" aria-labelledby="paymentMethod-label"><g:link controller="paymentMethod" action="show" id="${policyInstance?.paymentMethod?.id}">${policyInstance?.paymentMethod?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.payments}">
				<li class="fieldcontain">
					<span id="payments-label" class="property-label"><g:message code="policy.payments.label" default="Payments" /></span>
					
						<g:each in="${policyInstance.payments}" var="p">
						<span class="property-value" aria-labelledby="payments-label"><g:link controller="payments" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.plannedRaw}">
				<li class="fieldcontain">
					<span id="plannedRaw-label" class="property-label"><g:message code="policy.plannedRaw.label" default="Planned Raw" /></span>
					
						<span class="property-value" aria-labelledby="plannedRaw-label"><g:link controller="plannedRaw" action="show" id="${policyInstance?.plannedRaw?.id}">${policyInstance?.plannedRaw?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.policyNumber}">
				<li class="fieldcontain">
					<span id="policyNumber-label" class="property-label"><g:message code="policy.policyNumber.label" default="Policy Number" /></span>
					
						<span class="property-value" aria-labelledby="policyNumber-label"><g:fieldValue bean="${policyInstance}" field="policyNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.protectionYears}">
				<li class="fieldcontain">
					<span id="protectionYears-label" class="property-label"><g:message code="policy.protectionYears.label" default="Protection Years" /></span>
					
						<span class="property-value" aria-labelledby="protectionYears-label"><g:fieldValue bean="${policyInstance}" field="protectionYears"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.renewals}">
				<li class="fieldcontain">
					<span id="renewals-label" class="property-label"><g:message code="policy.renewals.label" default="Renewals" /></span>
					
						<g:each in="${policyInstance.renewals}" var="r">
						<span class="property-value" aria-labelledby="renewals-label"><g:link controller="renewals" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="policy.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${policyInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${policyInstance?.yearsToPay}">
				<li class="fieldcontain">
					<span id="yearsToPay-label" class="property-label"><g:message code="policy.yearsToPay.label" default="Years To Pay" /></span>
					
						<span class="property-value" aria-labelledby="yearsToPay-label"><g:fieldValue bean="${policyInstance}" field="yearsToPay"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${policyInstance?.id}" />
					<g:link class="edit" action="edit" id="${policyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
