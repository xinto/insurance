
<%@ page import="com.inovati.insurance.Gender" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gender.label', default: 'Gender')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-gender" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-gender" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="genderKey" title="${message(code: 'gender.genderKey.label', default: 'Gender Key')}" />
					
						<g:sortableColumn property="remark" title="${message(code: 'gender.remark.label', default: 'Remark')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${genderInstanceList}" status="i" var="genderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${genderInstance.id}">${fieldValue(bean: genderInstance, field: "genderKey")}</g:link></td>
					
						<td>${fieldValue(bean: genderInstance, field: "remark")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${genderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
