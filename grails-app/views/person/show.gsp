
<%@ page import="com.inovati.insurance.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="person.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${personInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.secondName}">
				<li class="fieldcontain">
					<span id="secondName-label" class="property-label"><g:message code="person.secondName.label" default="Second Name" /></span>
					
						<span class="property-value" aria-labelledby="secondName-label"><g:fieldValue bean="${personInstance}" field="secondName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="person.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${personInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.secondLastname}">
				<li class="fieldcontain">
					<span id="secondLastname-label" class="property-label"><g:message code="person.secondLastname.label" default="Second Lastname" /></span>
					
						<span class="property-value" aria-labelledby="secondLastname-label"><g:fieldValue bean="${personInstance}" field="secondLastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="person.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:link controller="gender" action="show" id="${personInstance?.gender?.id}">${personInstance?.gender?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.profession}">
				<li class="fieldcontain">
					<span id="profession-label" class="property-label"><g:message code="person.profession.label" default="Profession" /></span>
					
						<span class="property-value" aria-labelledby="profession-label"><g:link controller="profession" action="show" id="${personInstance?.profession?.id}">${personInstance?.profession?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="person.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${personInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.personalAddress}">
				<li class="fieldcontain">
					<span id="personalAddress-label" class="property-label"><g:message code="person.personalAddress.label" default="Personal Address" /></span>
					
						<span class="property-value" aria-labelledby="personalAddress-label"><g:link controller="address" action="show" id="${personInstance?.personalAddress?.id}">${personInstance?.personalAddress?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.workCompanyName}">
				<li class="fieldcontain">
					<span id="workCompanyName-label" class="property-label"><g:message code="person.workCompanyName.label" default="Work Company Name" /></span>
					
						<span class="property-value" aria-labelledby="workCompanyName-label"><g:fieldValue bean="${personInstance}" field="workCompanyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.workAddress}">
				<li class="fieldcontain">
					<span id="workAddress-label" class="property-label"><g:message code="person.workAddress.label" default="Work Address" /></span>
					
						<span class="property-value" aria-labelledby="workAddress-label"><g:link controller="address" action="show" id="${personInstance?.workAddress?.id}">${personInstance?.workAddress?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.personalPhone}">
				<li class="fieldcontain">
					<span id="personalPhone-label" class="property-label"><g:message code="person.personalPhone.label" default="Personal Phone" /></span>
					
						<span class="property-value" aria-labelledby="personalPhone-label"><g:fieldValue bean="${personInstance}" field="personalPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.officePhone}">
				<li class="fieldcontain">
					<span id="officePhone-label" class="property-label"><g:message code="person.officePhone.label" default="Office Phone" /></span>
					
						<span class="property-value" aria-labelledby="officePhone-label"><g:fieldValue bean="${personInstance}" field="officePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.cellphone}">
				<li class="fieldcontain">
					<span id="cellphone-label" class="property-label"><g:message code="person.cellphone.label" default="Cellphone" /></span>
					
						<span class="property-value" aria-labelledby="cellphone-label"><g:fieldValue bean="${personInstance}" field="cellphone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="person.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.preferedName}">
				<li class="fieldcontain">
					<span id="preferedName-label" class="property-label"><g:message code="person.preferedName.label" default="Prefered Name" /></span>
					
						<span class="property-value" aria-labelledby="preferedName-label"><g:fieldValue bean="${personInstance}" field="preferedName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.rfc}">
				<li class="fieldcontain">
					<span id="rfc-label" class="property-label"><g:message code="person.rfc.label" default="Rfc" /></span>
					
						<span class="property-value" aria-labelledby="rfc-label"><g:fieldValue bean="${personInstance}" field="rfc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.curp}">
				<li class="fieldcontain">
					<span id="curp-label" class="property-label"><g:message code="person.curp.label" default="Curp" /></span>
					
						<span class="property-value" aria-labelledby="curp-label"><g:fieldValue bean="${personInstance}" field="curp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="person.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${personInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.isPayer}">
				<li class="fieldcontain">
					<span id="isPayer-label" class="property-label"><g:message code="person.isPayer.label" default="Is Payer" /></span>
					
						<span class="property-value" aria-labelledby="isPayer-label"><g:fieldValue bean="${personInstance}" field="isPayer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.isContractor}">
				<li class="fieldcontain">
					<span id="isContractor-label" class="property-label"><g:message code="person.isContractor.label" default="Is Contractor" /></span>
					
						<span class="property-value" aria-labelledby="isContractor-label"><g:formatBoolean boolean="${personInstance?.isContractor}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.accounts}">
				<li class="fieldcontain">
					<span id="accounts-label" class="property-label"><g:message code="person.accounts.label" default="Accounts" /></span>
					
						<g:each in="${personInstance.accounts}" var="a">
						<span class="property-value" aria-labelledby="accounts-label"><g:link controller="account" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.insured}">
				<li class="fieldcontain">
					<span id="insured-label" class="property-label"><g:message code="person.insured.label" default="Insured" /></span>
					
						<g:each in="${personInstance.insured}" var="i">
						<span class="property-value" aria-labelledby="insured-label"><g:link controller="insured" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.policyContractor}">
				<li class="fieldcontain">
					<span id="policyContractor-label" class="property-label"><g:message code="person.policyContractor.label" default="Policy Contractor" /></span>
					
						<g:each in="${personInstance.policyContractor}" var="p">
						<span class="property-value" aria-labelledby="policyContractor-label"><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.policyPayer}">
				<li class="fieldcontain">
					<span id="policyPayer-label" class="property-label"><g:message code="person.policyPayer.label" default="Policy Payer" /></span>
					
						<g:each in="${personInstance.policyPayer}" var="p">
						<span class="property-value" aria-labelledby="policyPayer-label"><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personInstance?.id}" />
					<g:link class="edit" action="edit" id="${personInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
