
<%@ page import="com.inovati.insurance.AssuredCar" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'assuredCar.label', default: 'AssuredCar')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-assuredCar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-assuredCar" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list assuredCar">
			
				<g:if test="${assuredCarInstance?.plateNumber}">
				<li class="fieldcontain">
					<span id="plateNumber-label" class="property-label"><g:message code="assuredCar.plateNumber.label" default="Plate Number" /></span>
					
						<span class="property-value" aria-labelledby="plateNumber-label"><g:fieldValue bean="${assuredCarInstance}" field="plateNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assuredCarInstance?.estimatedValue}">
				<li class="fieldcontain">
					<span id="estimatedValue-label" class="property-label"><g:message code="assuredCar.estimatedValue.label" default="Estimated Value" /></span>
					
						<span class="property-value" aria-labelledby="estimatedValue-label"><g:fieldValue bean="${assuredCarInstance}" field="estimatedValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assuredCarInstance?.carModel}">
				<li class="fieldcontain">
					<span id="carModel-label" class="property-label"><g:message code="assuredCar.carModel.label" default="Car Model" /></span>
					
						<span class="property-value" aria-labelledby="carModel-label"><g:link controller="carModel" action="show" id="${assuredCarInstance?.carModel?.id}">${assuredCarInstance?.carModel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${assuredCarInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="assuredCar.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${assuredCarInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assuredCarInstance?.policies}">
				<li class="fieldcontain">
					<span id="policies-label" class="property-label"><g:message code="assuredCar.policies.label" default="Policies" /></span>
					
						<g:each in="${assuredCarInstance.policies}" var="p">
						<span class="property-value" aria-labelledby="policies-label"><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${assuredCarInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="assuredCar.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${assuredCarInstance}" field="year"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${assuredCarInstance?.id}" />
					<g:link class="edit" action="edit" id="${assuredCarInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
