
<%@ page import="com.inovati.insurance.Account" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list account">
			
				<g:if test="${accountInstance?.account}">
				<li class="fieldcontain">
					<span id="account-label" class="property-label"><g:message code="account.account.label" default="Account" /></span>
					
						<span class="property-value" aria-labelledby="account-label"><g:link controller="account" action="show" id="${accountInstance?.account?.id}">${accountInstance?.account?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.accountNumber}">
				<li class="fieldcontain">
					<span id="accountNumber-label" class="property-label"><g:message code="account.accountNumber.label" default="Account Number" /></span>
					
						<span class="property-value" aria-labelledby="accountNumber-label"><g:fieldValue bean="${accountInstance}" field="accountNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.basicRaw}">
				<li class="fieldcontain">
					<span id="basicRaw-label" class="property-label"><g:message code="account.basicRaw.label" default="Basic Raw" /></span>
					
						<g:each in="${accountInstance.basicRaw}" var="b">
						<span class="property-value" aria-labelledby="basicRaw-label"><g:link controller="basicRaw" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.expiration}">
				<li class="fieldcontain">
					<span id="expiration-label" class="property-label"><g:message code="account.expiration.label" default="Expiration" /></span>
					
						<span class="property-value" aria-labelledby="expiration-label"><g:formatDate date="${accountInstance?.expiration}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="account.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${accountInstance?.person?.id}">${accountInstance?.person?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.plannedRaw}">
				<li class="fieldcontain">
					<span id="plannedRaw-label" class="property-label"><g:message code="account.plannedRaw.label" default="Planned Raw" /></span>
					
						<g:each in="${accountInstance.plannedRaw}" var="p">
						<span class="property-value" aria-labelledby="plannedRaw-label"><g:link controller="plannedRaw" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.securityCode}">
				<li class="fieldcontain">
					<span id="securityCode-label" class="property-label"><g:message code="account.securityCode.label" default="Security Code" /></span>
					
						<span class="property-value" aria-labelledby="securityCode-label"><g:fieldValue bean="${accountInstance}" field="securityCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:link class="edit" action="edit" id="${accountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
