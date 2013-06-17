
<%@ page import="com.inovati.insurance.Beneficiary" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'beneficiary.label', default: 'Beneficiary')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-beneficiary" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-beneficiary" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="beneficiary.policy.label" default="Policy" /></th>
					
						<g:sortableColumn property="type" title="${message(code: 'beneficiary.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'beneficiary.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="percentage" title="${message(code: 'beneficiary.percentage.label', default: 'Percentage')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${beneficiaryInstanceList}" status="i" var="beneficiaryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${beneficiaryInstance.id}">${fieldValue(bean: beneficiaryInstance, field: "policy")}</g:link></td>
					
						<td>${fieldValue(bean: beneficiaryInstance, field: "type")}</td>
					
						<td>${fieldValue(bean: beneficiaryInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: beneficiaryInstance, field: "percentage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${beneficiaryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
