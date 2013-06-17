<%@ page import="com.inovati.insurance.Insured" %>



<div class="fieldcontain ${hasErrors(bean: insuredInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="insured.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${com.inovati.insurance.Person.list()}" optionKey="id" required="" value="${insuredInstance?.person?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuredInstance, field: 'policy', 'error')} required">
	<label for="policy">
		<g:message code="insured.policy.label" default="Policy" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="policy" name="policy.id" from="${com.inovati.insurance.Policy.list()}" optionKey="id" required="" value="${insuredInstance?.policy?.id}" class="many-to-one"/>
</div>

