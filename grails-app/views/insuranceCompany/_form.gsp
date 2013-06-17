<%@ page import="com.inovati.insurance.InsuranceCompany" %>



<div class="fieldcontain ${hasErrors(bean: insuranceCompanyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="insuranceCompany.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${insuranceCompanyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCompanyInstance, field: 'companyTradeProducts', 'error')} ">
	<label for="companyTradeProducts">
		<g:message code="insuranceCompany.companyTradeProducts.label" default="Company Trade Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${insuranceCompanyInstance?.companyTradeProducts?}" var="c">
    <li><g:link controller="companyTradeProducts" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="companyTradeProducts" action="create" params="['insuranceCompany.id': insuranceCompanyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCompanyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="insuranceCompany.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${insuranceCompanyInstance?.description}"/>
</div>

