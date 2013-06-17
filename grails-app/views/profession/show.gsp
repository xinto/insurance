
<%@ page import="com.inovati.insurance.Profession" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profession.label', default: 'Profession')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profession" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profession" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profession">
			
				<g:if test="${professionInstance?.professionKey}">
				<li class="fieldcontain">
					<span id="professionKey-label" class="property-label"><g:message code="profession.professionKey.label" default="Profession Key" /></span>
					
						<span class="property-value" aria-labelledby="professionKey-label"><g:fieldValue bean="${professionInstance}" field="professionKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professionInstance?.remark}">
				<li class="fieldcontain">
					<span id="remark-label" class="property-label"><g:message code="profession.remark.label" default="Remark" /></span>
					
						<span class="property-value" aria-labelledby="remark-label"><g:fieldValue bean="${professionInstance}" field="remark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professionInstance?.people}">
				<li class="fieldcontain">
					<span id="people-label" class="property-label"><g:message code="profession.people.label" default="People" /></span>
					
						<g:each in="${professionInstance.people}" var="p">
						<span class="property-value" aria-labelledby="people-label"><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${professionInstance?.id}" />
					<g:link class="edit" action="edit" id="${professionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
