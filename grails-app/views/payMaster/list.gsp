
<%@ page import="com.inovati.insurance.PayMaster" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payMaster.label', default: 'PayMaster')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-payMaster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-payMaster" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'payMaster.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="lastname" title="${message(code: 'payMaster.lastname.label', default: 'Lastname')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${payMasterInstanceList}" status="i" var="payMasterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${payMasterInstance.id}">${fieldValue(bean: payMasterInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: payMasterInstance, field: "lastname")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${payMasterInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
