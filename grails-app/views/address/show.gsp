
<%@ page import="com.inovati.insurance.Address" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-address" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list address">
			
				<g:if test="${addressInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="address.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${addressInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.colony}">
				<li class="fieldcontain">
					<span id="colony-label" class="property-label"><g:message code="address.colony.label" default="Colony" /></span>
					
						<span class="property-value" aria-labelledby="colony-label"><g:fieldValue bean="${addressInstance}" field="colony"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.delegation}">
				<li class="fieldcontain">
					<span id="delegation-label" class="property-label"><g:message code="address.delegation.label" default="Delegation" /></span>
					
						<span class="property-value" aria-labelledby="delegation-label"><g:fieldValue bean="${addressInstance}" field="delegation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.houses}">
				<li class="fieldcontain">
					<span id="houses-label" class="property-label"><g:message code="address.houses.label" default="Houses" /></span>
					
						<g:each in="${addressInstance.houses}" var="h">
						<span class="property-value" aria-labelledby="houses-label"><g:link controller="assuredHouse" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="address.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${addressInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.peoplePersonal}">
				<li class="fieldcontain">
					<span id="peoplePersonal-label" class="property-label"><g:message code="address.peoplePersonal.label" default="People Personal" /></span>
					
						<g:each in="${addressInstance.peoplePersonal}" var="p">
						<span class="property-value" aria-labelledby="peoplePersonal-label"><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.peopleWork}">
				<li class="fieldcontain">
					<span id="peopleWork-label" class="property-label"><g:message code="address.peopleWork.label" default="People Work" /></span>
					
						<g:each in="${addressInstance.peopleWork}" var="p">
						<span class="property-value" aria-labelledby="peopleWork-label"><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="address.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${addressInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="address.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${addressInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.street}">
				<li class="fieldcontain">
					<span id="street-label" class="property-label"><g:message code="address.street.label" default="Street" /></span>
					
						<span class="property-value" aria-labelledby="street-label"><g:fieldValue bean="${addressInstance}" field="street"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${addressInstance?.id}" />
					<g:link class="edit" action="edit" id="${addressInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
