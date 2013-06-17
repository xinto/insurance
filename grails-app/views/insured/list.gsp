
<%@ page import="com.inovati.insurance.Insured" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'insured.label', default: 'Insured')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-insured" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-insured" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="insured.person.label" default="Person" /></th>
					
						<th><g:message code="insured.policy.label" default="Policy" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${insuredInstanceList}" status="i" var="insuredInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${insuredInstance.id}">${fieldValue(bean: insuredInstance, field: "person")}</g:link></td>
					
						<td>${fieldValue(bean: insuredInstance, field: "policy")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${insuredInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
