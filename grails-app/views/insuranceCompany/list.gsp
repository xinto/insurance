
<%@ page import="com.inovati.insurance.InsuranceCompany" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'insuranceCompany.label', default: 'InsuranceCompany')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-insuranceCompany" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-insuranceCompany" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'insuranceCompany.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'insuranceCompany.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'insuranceCompany.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${insuranceCompanyInstanceList}" status="i" var="insuranceCompanyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${insuranceCompanyInstance.id}">${fieldValue(bean: insuranceCompanyInstance, field: "name")}</g:link></td>
					
						<td><g:formatBoolean boolean="${insuranceCompanyInstance.active}" /></td>
					
						<td>${fieldValue(bean: insuranceCompanyInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${insuranceCompanyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
