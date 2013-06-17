
<%@ page import="com.inovati.insurance.ProductsProductTypes" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productsProductTypes.label', default: 'ProductsProductTypes')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productsProductTypes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-productsProductTypes" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productsProductTypes">
			
				<g:if test="${productsProductTypesInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="productsProductTypes.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${productsProductTypesInstance?.product?.id}">${productsProductTypesInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productsProductTypesInstance?.productType}">
				<li class="fieldcontain">
					<span id="productType-label" class="property-label"><g:message code="productsProductTypes.productType.label" default="Product Type" /></span>
					
						<span class="property-value" aria-labelledby="productType-label"><g:link controller="productType" action="show" id="${productsProductTypesInstance?.productType?.id}">${productsProductTypesInstance?.productType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productsProductTypesInstance?.companyTradeProducts}">
				<li class="fieldcontain">
					<span id="companyTradeProducts-label" class="property-label"><g:message code="productsProductTypes.companyTradeProducts.label" default="Company Trade Products" /></span>
					
						<g:each in="${productsProductTypesInstance.companyTradeProducts}" var="c">
						<span class="property-value" aria-labelledby="companyTradeProducts-label"><g:link controller="companyTradeProducts" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productsProductTypesInstance?.id}" />
					<g:link class="edit" action="edit" id="${productsProductTypesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
