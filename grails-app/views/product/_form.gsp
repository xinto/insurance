<%@ page import="com.inovati.insurance.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productsProductTypes', 'error')} ">
	<label for="productsProductTypes">
		<g:message code="product.productsProductTypes.label" default="Products Product Types" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productInstance?.productsProductTypes?}" var="p">
    <li><g:link controller="productsProductTypes" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="productsProductTypes" action="create" params="['product.id': productInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'productsProductTypes.label', default: 'ProductsProductTypes')])}</g:link>
</li>
</ul>

</div>

