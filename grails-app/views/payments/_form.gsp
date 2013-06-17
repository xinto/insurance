<%@ page import="com.inovati.insurance.Payments" %>



<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'policy', 'error')} required">
	<label for="policy">
		<g:message code="payments.policy.label" default="Policy" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="policy" name="policy.id" from="${com.inovati.insurance.Policy.list()}" optionKey="id" required="" value="${paymentsInstance?.policy?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="payments.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${paymentsInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="payments.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" type="number" value="${paymentsInstance.amount}" required=""/>
</div>

