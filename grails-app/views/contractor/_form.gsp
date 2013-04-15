<%@ page import="com.inovati.insurance.Contractor" %>



<div class="fieldcontain ${hasErrors(bean: contractorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="contractor.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${contractorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contractorInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="contractor.lastname.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" required="" value="${contractorInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contractorInstance, field: 'paymaster', 'error')} required">
	<label for="paymaster">
		<g:message code="contractor.paymaster.label" default="Paymaster" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paymaster" name="paymaster.id" from="${com.inovati.insurance.PayMaster.list()}" optionKey="id" required="" value="${contractorInstance?.paymaster?.id}" class="many-to-one"/>
</div>

