<%@ page import="com.inovati.insurance.PlannedRaw" %>



<div class="fieldcontain ${hasErrors(bean: plannedRawInstance, field: 'accountNumber', 'error')} ">
	<label for="accountNumber">
		<g:message code="plannedRaw.accountNumber.label" default="Account Number" />
		
	</label>
	<g:textField name="accountNumber" value="${plannedRawInstance?.accountNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: plannedRawInstance, field: 'annualiedPlannedRaw', 'error')} required">
	<label for="annualiedPlannedRaw">
		<g:message code="plannedRaw.annualiedPlannedRaw.label" default="Annualied Planned Raw" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="annualiedPlannedRaw" value="${fieldValue(bean: plannedRawInstance, field: 'annualiedPlannedRaw')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: plannedRawInstance, field: 'bank', 'error')} ">
	<label for="bank">
		<g:message code="plannedRaw.bank.label" default="Bank" />
		
	</label>
	<g:textField name="bank" value="${plannedRawInstance?.bank}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: plannedRawInstance, field: 'chargue', 'error')} required">
	<label for="chargue">
		<g:message code="plannedRaw.chargue.label" default="Chargue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="chargue" type="number" value="${plannedRawInstance.chargue}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: plannedRawInstance, field: 'chargueDay', 'error')} required">
	<label for="chargueDay">
		<g:message code="plannedRaw.chargueDay.label" default="Chargue Day" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="chargueDay" precision="day"  value="${plannedRawInstance?.chargueDay}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: plannedRawInstance, field: 'expiration', 'error')} required">
	<label for="expiration">
		<g:message code="plannedRaw.expiration.label" default="Expiration" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expiration" precision="day"  value="${plannedRawInstance?.expiration}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: plannedRawInstance, field: 'paymentForm', 'error')} required">
	<label for="paymentForm">
		<g:message code="plannedRaw.paymentForm.label" default="Payment Form" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paymentForm" name="paymentForm.id" from="${com.inovati.insurance.PaymentForm.list()}" optionKey="id" required="" value="${plannedRawInstance?.paymentForm?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: plannedRawInstance, field: 'policys', 'error')} ">
	<label for="policys">
		<g:message code="plannedRaw.policys.label" default="Policys" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${plannedRawInstance?.policys?}" var="p">
    <li><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="policy" action="create" params="['plannedRaw.id': plannedRawInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'policy.label', default: 'Policy')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: plannedRawInstance, field: 'securityCode', 'error')} ">
	<label for="securityCode">
		<g:message code="plannedRaw.securityCode.label" default="Security Code" />
		
	</label>
	<g:textField name="securityCode" value="${plannedRawInstance?.securityCode}"/>
</div>

