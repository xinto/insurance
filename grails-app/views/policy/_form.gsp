<%@ page import="com.inovati.insurance.Policy" %>



<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="policy.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${policyInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'assuredAmount', 'error')} required">
	<label for="assuredAmount">
		<g:message code="policy.assuredAmount.label" default="Assured Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="assuredAmount" type="number" value="${policyInstance.assuredAmount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'assuredCar', 'error')} required">
	<label for="assuredCar">
		<g:message code="policy.assuredCar.label" default="Assured Car" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assuredCar" name="assuredCar.id" from="${com.inovati.insurance.AssuredCar.list()}" optionKey="id" required="" value="${policyInstance?.assuredCar?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'assuredHouse', 'error')} required">
	<label for="assuredHouse">
		<g:message code="policy.assuredHouse.label" default="Assured House" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assuredHouse" name="assuredHouse.id" from="${com.inovati.insurance.AssuredHouse.list()}" optionKey="id" required="" value="${policyInstance?.assuredHouse?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'basicRaw', 'error')} required">
	<label for="basicRaw">
		<g:message code="policy.basicRaw.label" default="Basic Raw" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="basicRaw" name="basicRaw.id" from="${com.inovati.insurance.BasicRaw.list()}" optionKey="id" required="" value="${policyInstance?.basicRaw?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'beneficiarys', 'error')} ">
	<label for="beneficiarys">
		<g:message code="policy.beneficiarys.label" default="Beneficiarys" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${policyInstance?.beneficiarys?}" var="b">
    <li><g:link controller="beneficiary" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="beneficiary" action="create" params="['policy.id': policyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'beneficiary.label', default: 'Beneficiary')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'chargingDate', 'error')} required">
	<label for="chargingDate">
		<g:message code="policy.chargingDate.label" default="Charging Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="chargingDate" precision="day"  value="${policyInstance?.chargingDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'companyTrade', 'error')} required">
	<label for="companyTrade">
		<g:message code="policy.companyTrade.label" default="Company Trade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="companyTrade" name="companyTrade.id" from="${com.inovati.insurance.CompanyTrade.list()}" optionKey="id" required="" value="${policyInstance?.companyTrade?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'contractor', 'error')} required">
	<label for="contractor">
		<g:message code="policy.contractor.label" default="Contractor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="contractor" name="contractor.id" from="${com.inovati.insurance.Person.list()}" optionKey="id" required="" value="${policyInstance?.contractor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'insureds', 'error')} ">
	<label for="insureds">
		<g:message code="policy.insureds.label" default="Insureds" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${policyInstance?.insureds?}" var="i">
    <li><g:link controller="insured" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="insured" action="create" params="['policy.id': policyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'insured.label', default: 'Insured')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'payer', 'error')} required">
	<label for="payer">
		<g:message code="policy.payer.label" default="Payer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="payer" name="payer.id" from="${com.inovati.insurance.Person.list()}" optionKey="id" required="" value="${policyInstance?.payer?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'paymentForm', 'error')} required">
	<label for="paymentForm">
		<g:message code="policy.paymentForm.label" default="Payment Form" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paymentForm" name="paymentForm.id" from="${com.inovati.insurance.PaymentForm.list()}" optionKey="id" required="" value="${policyInstance?.paymentForm?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'paymentMethod', 'error')} required">
	<label for="paymentMethod">
		<g:message code="policy.paymentMethod.label" default="Payment Method" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paymentMethod" name="paymentMethod.id" from="${com.inovati.insurance.PaymentMethod.list()}" optionKey="id" required="" value="${policyInstance?.paymentMethod?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'payments', 'error')} ">
	<label for="payments">
		<g:message code="policy.payments.label" default="Payments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${policyInstance?.payments?}" var="p">
    <li><g:link controller="payments" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="payments" action="create" params="['policy.id': policyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'payments.label', default: 'Payments')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'plannedRaw', 'error')} required">
	<label for="plannedRaw">
		<g:message code="policy.plannedRaw.label" default="Planned Raw" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plannedRaw" name="plannedRaw.id" from="${com.inovati.insurance.PlannedRaw.list()}" optionKey="id" required="" value="${policyInstance?.plannedRaw?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'policyNumber', 'error')} ">
	<label for="policyNumber">
		<g:message code="policy.policyNumber.label" default="Policy Number" />
		
	</label>
	<g:textField name="policyNumber" value="${policyInstance?.policyNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'protectionYears', 'error')} required">
	<label for="protectionYears">
		<g:message code="policy.protectionYears.label" default="Protection Years" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="protectionYears" type="number" value="${policyInstance.protectionYears}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'renewals', 'error')} ">
	<label for="renewals">
		<g:message code="policy.renewals.label" default="Renewals" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${policyInstance?.renewals?}" var="r">
    <li><g:link controller="renewals" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="renewals" action="create" params="['policy.id': policyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'renewals.label', default: 'Renewals')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="policy.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${policyInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: policyInstance, field: 'yearsToPay', 'error')} required">
	<label for="yearsToPay">
		<g:message code="policy.yearsToPay.label" default="Years To Pay" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="yearsToPay" type="number" value="${policyInstance.yearsToPay}" required=""/>
</div>

