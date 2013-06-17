<%@ page import="com.inovati.insurance.Beneficiary" %>



<div class="fieldcontain ${hasErrors(bean: beneficiaryInstance, field: 'policy', 'error')} required">
	<label for="policy">
		<g:message code="beneficiary.policy.label" default="Policy" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="policy" name="policy.id" from="${com.inovati.insurance.Policy.list()}" optionKey="id" required="" value="${beneficiaryInstance?.policy?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: beneficiaryInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="beneficiary.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${beneficiaryInstance?.type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: beneficiaryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="beneficiary.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${beneficiaryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: beneficiaryInstance, field: 'percentage', 'error')} required">
	<label for="percentage">
		<g:message code="beneficiary.percentage.label" default="Percentage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentage" type="number" value="${beneficiaryInstance.percentage}" required=""/>
</div>

