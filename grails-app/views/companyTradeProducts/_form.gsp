<%@ page import="com.inovati.insurance.CompanyTradeProducts" %>



<div class="fieldcontain ${hasErrors(bean: companyTradeProductsInstance, field: 'insuranceCompany', 'error')} required">
	<label for="insuranceCompany">
		<g:message code="companyTradeProducts.insuranceCompany.label" default="Insurance Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insuranceCompany" name="insuranceCompany.id" from="${com.inovati.insurance.InsuranceCompany.list()}" optionKey="id" required="" value="${companyTradeProductsInstance?.insuranceCompany?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyTradeProductsInstance, field: 'companyTrade', 'error')} required">
	<label for="companyTrade">
		<g:message code="companyTradeProducts.companyTrade.label" default="Company Trade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="companyTrade" name="companyTrade.id" from="${com.inovati.insurance.CompanyTrade.list()}" optionKey="id" required="" value="${companyTradeProductsInstance?.companyTrade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyTradeProductsInstance, field: 'policys', 'error')} ">
	<label for="policys">
		<g:message code="companyTradeProducts.policys.label" default="Policys" />
		
	</label>
	<g:select name="policys" from="${com.inovati.insurance.Policy.list()}" multiple="multiple" optionKey="id" size="5" value="${companyTradeProductsInstance?.policys*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyTradeProductsInstance, field: 'productsProductTypes', 'error')} required">
	<label for="productsProductTypes">
		<g:message code="companyTradeProducts.productsProductTypes.label" default="Products Product Types" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="productsProductTypes" name="productsProductTypes.id" from="${com.inovati.insurance.ProductsProductTypes.list()}" optionKey="id" required="" value="${companyTradeProductsInstance?.productsProductTypes?.id}" class="many-to-one"/>
</div>

