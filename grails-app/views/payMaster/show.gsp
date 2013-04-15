
<%@ page import="com.inovati.insurance.PayMaster" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payMaster.label', default: 'PayMaster')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-payMaster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-payMaster" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list payMaster">
			
				<g:if test="${payMasterInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="payMaster.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${payMasterInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payMasterInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="payMaster.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${payMasterInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${payMasterInstance?.contractors}">
				<li class="fieldcontain">
					<span id="contractors-label" class="property-label"><g:message code="payMaster.contractors.label" default="Contractors" /></span>
					
						<g:each in="${payMasterInstance.contractors}" var="c">
						<span class="property-value" aria-labelledby="contractors-label"><g:link controller="contractor" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${payMasterInstance?.id}" />
					<g:link class="edit" action="edit" id="${payMasterInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
