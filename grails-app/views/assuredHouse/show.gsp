
<%@ page import="com.inovati.insurance.AssuredHouse" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'assuredHouse.label', default: 'AssuredHouse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-assuredHouse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-assuredHouse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list assuredHouse">
			
				<g:if test="${assuredHouseInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="assuredHouse.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:link controller="address" action="show" id="${assuredHouseInstance?.address?.id}">${assuredHouseInstance?.address?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${assuredHouseInstance?.estimatedValue}">
				<li class="fieldcontain">
					<span id="estimatedValue-label" class="property-label"><g:message code="assuredHouse.estimatedValue.label" default="Estimated Value" /></span>
					
						<span class="property-value" aria-labelledby="estimatedValue-label"><g:fieldValue bean="${assuredHouseInstance}" field="estimatedValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assuredHouseInstance?.policys}">
				<li class="fieldcontain">
					<span id="policys-label" class="property-label"><g:message code="assuredHouse.policys.label" default="Policys" /></span>
					
						<g:each in="${assuredHouseInstance.policys}" var="p">
						<span class="property-value" aria-labelledby="policys-label"><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${assuredHouseInstance?.id}" />
					<g:link class="edit" action="edit" id="${assuredHouseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
