<%@ page import="com.inovati.insurance.Renewals" %>



<div class="fieldcontain ${hasErrors(bean: renewalsInstance, field: 'policy', 'error')} required">
	<label for="policy">
		<g:message code="renewals.policy.label" default="Policy" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="policy" name="policy.id" from="${com.inovati.insurance.Policy.list()}" optionKey="id" required="" value="${renewalsInstance?.policy?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: renewalsInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="renewals.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${renewalsInstance?.date}"  />
</div>

