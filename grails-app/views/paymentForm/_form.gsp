<%@ page import="com.inovati.insurance.PaymentForm" %>



<div class="fieldcontain ${hasErrors(bean: paymentFormInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="paymentForm.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${paymentFormInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentFormInstance, field: 'basicRaws', 'error')} ">
	<label for="basicRaws">
		<g:message code="paymentForm.basicRaws.label" default="Basic Raws" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${paymentFormInstance?.basicRaws?}" var="b">
    <li><g:link controller="basicRaw" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="basicRaw" action="create" params="['paymentForm.id': paymentFormInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'basicRaw.label', default: 'BasicRaw')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: paymentFormInstance, field: 'plannedRaws', 'error')} ">
	<label for="plannedRaws">
		<g:message code="paymentForm.plannedRaws.label" default="Planned Raws" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${paymentFormInstance?.plannedRaws?}" var="p">
    <li><g:link controller="plannedRaw" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="plannedRaw" action="create" params="['paymentForm.id': paymentFormInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: paymentFormInstance, field: 'policys', 'error')} ">
	<label for="policys">
		<g:message code="paymentForm.policys.label" default="Policys" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${paymentFormInstance?.policys?}" var="p">
    <li><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="policy" action="create" params="['paymentForm.id': paymentFormInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'policy.label', default: 'Policy')])}</g:link>
</li>
</ul>

</div>

