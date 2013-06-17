<%@ page import="com.inovati.insurance.ProductsProductTypes" %>



<div class="fieldcontain ${hasErrors(bean: productsProductTypesInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="productsProductTypes.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${com.inovati.insurance.Product.list()}" optionKey="id" required="" value="${productsProductTypesInstance?.product?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productsProductTypesInstance, field: 'productType', 'error')} required">
	<label for="productType">
		<g:message code="productsProductTypes.productType.label" default="Product Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="productType" name="productType.id" from="${com.inovati.insurance.ProductType.list()}" optionKey="id" required="" value="${productsProductTypesInstance?.productType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productsProductTypesInstance, field: 'companyTradeProducts', 'error')} ">
	<label for="companyTradeProducts">
		<g:message code="productsProductTypes.companyTradeProducts.label" default="Company Trade Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productsProductTypesInstance?.companyTradeProducts?}" var="c">
    <li><g:link controller="companyTradeProducts" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="companyTradeProducts" action="create" params="['productsProductTypes.id': productsProductTypesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts')])}</g:link>
</li>
</ul>

</div>

