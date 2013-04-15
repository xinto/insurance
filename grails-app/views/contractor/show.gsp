
<%@ page import="com.inovati.insurance.Contractor" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contractor.label', default: 'Contractor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contractor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contractor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contractor">
			
				<g:if test="${contractorInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="contractor.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${contractorInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="contractor.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${contractorInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorInstance?.paymaster}">
				<li class="fieldcontain">
					<span id="paymaster-label" class="property-label"><g:message code="contractor.paymaster.label" default="Paymaster" /></span>
					
						<span class="property-value" aria-labelledby="paymaster-label"><g:link controller="payMaster" action="show" id="${contractorInstance?.paymaster?.id}">${contractorInstance?.paymaster?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contractorInstance?.id}" />
					<g:link class="edit" action="edit" id="${contractorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
