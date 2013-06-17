
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
			
				<g:if test="${personInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="person.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${personInstance?.birthDate}" /></span>
					
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
			
				<g:if test="${personInstance?.personalAddress}">
				<li class="fieldcontain">
					<span id="personalAddress-label" class="property-label"><g:message code="person.personalAddress.label" default="Personal Address" /></span>
					
						<span class="property-value" aria-labelledby="personalAddress-label"><g:link controller="address" action="show" id="${personInstance?.personalAddress?.id}">${personInstance?.personalAddress?.encodeAsHTML()}</g:link></span>
					
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
			
				<g:if test="${personInstance?.profession}">
				<li class="fieldcontain">
					<span id="profession-label" class="property-label"><g:message code="person.profession.label" default="Profession" /></span>
					
						<span class="property-value" aria-labelledby="profession-label"><g:link controller="profession" action="show" id="${personInstance?.profession?.id}">${personInstance?.profession?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.telephone1}">
				<li class="fieldcontain">
					<span id="telephone1-label" class="property-label"><g:message code="person.telephone1.label" default="Telephone1" /></span>
					
						<span class="property-value" aria-labelledby="telephone1-label"><g:fieldValue bean="${personInstance}" field="telephone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.telephone2}">
				<li class="fieldcontain">
					<span id="telephone2-label" class="property-label"><g:message code="person.telephone2.label" default="Telephone2" /></span>
					
						<span class="property-value" aria-labelledby="telephone2-label"><g:fieldValue bean="${personInstance}" field="telephone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.workAddress}">
				<li class="fieldcontain">
					<span id="workAddress-label" class="property-label"><g:message code="person.workAddress.label" default="Work Address" /></span>
					
						<span class="property-value" aria-labelledby="workAddress-label"><g:link controller="address" action="show" id="${personInstance?.workAddress?.id}">${personInstance?.workAddress?.encodeAsHTML()}</g:link></span>
					
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
