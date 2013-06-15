
<%@ page import="com.inovati.insurance.Gender" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gender.label', default: 'Gender')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-gender" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gender" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gender">
			
				<g:if test="${genderInstance?.genderKey}">
				<li class="fieldcontain">
					<span id="genderKey-label" class="property-label"><g:message code="gender.genderKey.label" default="Gender Key" /></span>
					
						<span class="property-value" aria-labelledby="genderKey-label"><g:fieldValue bean="${genderInstance}" field="genderKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${genderInstance?.remark}">
				<li class="fieldcontain">
					<span id="remark-label" class="property-label"><g:message code="gender.remark.label" default="Remark" /></span>
					
						<span class="property-value" aria-labelledby="remark-label"><g:fieldValue bean="${genderInstance}" field="remark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${genderInstance?.people}">
				<li class="fieldcontain">
					<span id="people-label" class="property-label"><g:message code="gender.people.label" default="People" /></span>
					
						<g:each in="${genderInstance.people}" var="p">
						<span class="property-value" aria-labelledby="people-label"><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${genderInstance?.id}" />
					<g:link class="edit" action="edit" id="${genderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
