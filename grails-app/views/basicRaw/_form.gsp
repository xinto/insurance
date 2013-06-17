<%@ page import="com.inovati.insurance.BasicRaw" %>



<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'accountNumber', 'error')} required">
	<label for="accountNumber">
		<g:message code="basicRaw.accountNumber.label" default="Account Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="accountNumber" type="number" value="${basicRawInstance.accountNumber}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'annualizedRaw', 'error')} ">
	<label for="annualizedRaw">
		<g:message code="basicRaw.annualizedRaw.label" default="Annualized Raw" />
		
	</label>
	<g:textField name="annualizedRaw" value="${basicRawInstance?.annualizedRaw}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'bank', 'error')} ">
	<label for="bank">
		<g:message code="basicRaw.bank.label" default="Bank" />
		
	</label>
	<g:textField name="bank" value="${basicRawInstance?.bank}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'comissionRaw', 'error')} ">
	<label for="comissionRaw">
		<g:message code="basicRaw.comissionRaw.label" default="Comission Raw" />
		
	</label>
	<g:textField name="comissionRaw" value="${basicRawInstance?.comissionRaw}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'currency', 'error')} required">
	<label for="currency">
		<g:message code="basicRaw.currency.label" default="Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="currency" name="currency.id" from="${com.inovati.insurance.Currency.list()}" optionKey="id" required="" value="${basicRawInstance?.currency?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'expiration', 'error')} required">
	<label for="expiration">
		<g:message code="basicRaw.expiration.label" default="Expiration" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expiration" precision="day"  value="${basicRawInstance?.expiration}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'firstReceipt', 'error')} ">
	<label for="firstReceipt">
		<g:message code="basicRaw.firstReceipt.label" default="First Receipt" />
		
	</label>
	<g:textField name="firstReceipt" value="${basicRawInstance?.firstReceipt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'paymentConduit', 'error')} ">
	<label for="paymentConduit">
		<g:message code="basicRaw.paymentConduit.label" default="Payment Conduit" />
		
	</label>
	<g:textField name="paymentConduit" value="${basicRawInstance?.paymentConduit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'paymentForm', 'error')} required">
	<label for="paymentForm">
		<g:message code="basicRaw.paymentForm.label" default="Payment Form" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paymentForm" name="paymentForm.id" from="${com.inovati.insurance.PaymentForm.list()}" optionKey="id" required="" value="${basicRawInstance?.paymentForm?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'policys', 'error')} ">
	<label for="policys">
		<g:message code="basicRaw.policys.label" default="Policys" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${basicRawInstance?.policys?}" var="p">
    <li><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="policy" action="create" params="['basicRaw.id': basicRawInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'policy.label', default: 'Policy')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'securityCode', 'error')} required">
	<label for="securityCode">
		<g:message code="basicRaw.securityCode.label" default="Security Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="securityCode" type="number" value="${basicRawInstance.securityCode}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: basicRawInstance, field: 'subsecuentReceipt', 'error')} ">
	<label for="subsecuentReceipt">
		<g:message code="basicRaw.subsecuentReceipt.label" default="Subsecuent Receipt" />
		
	</label>
	<g:textField name="subsecuentReceipt" value="${basicRawInstance?.subsecuentReceipt}"/>
</div>

