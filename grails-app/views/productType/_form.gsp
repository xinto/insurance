<%@ page import="com.inovati.insurance.ProductType" %>



<div class="fieldcontain ${hasErrors(bean: productTypeInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="productType.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${productTypeInstance?.type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productTypeInstance, field: 'productsProductTypes', 'error')} ">
	<label for="productsProductTypes">
		<g:message code="productType.productsProductTypes.label" default="Products Product Types" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productTypeInstance?.productsProductTypes?}" var="p">
    <li><g:link controller="productsProductTypes" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="productsProductTypes" action="create" params="['productType.id': productTypeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes')])}</g:link>
</li>
</ul>

</div>

