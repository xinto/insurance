
<%@ page import="com.inovati.insurance.ProductsProductTypes" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productsProductTypes.label', default: 'ProductsProductTypes')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productsProductTypes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productsProductTypes" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="productsProductTypes.product.label" default="Product" /></th>
					
						<th><g:message code="productsProductTypes.productType.label" default="Product Type" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productsProductTypesInstanceList}" status="i" var="productsProductTypesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productsProductTypesInstance.id}">${fieldValue(bean: productsProductTypesInstance, field: "product")}</g:link></td>
					
						<td>${fieldValue(bean: productsProductTypesInstance, field: "productType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productsProductTypesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
