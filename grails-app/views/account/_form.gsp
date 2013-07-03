<%@ page import="com.inovati.insurance.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'account', 'error')} required">
	<label for="account">
		<g:message code="account.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="account" name="account.id" from="${com.inovati.insurance.Account.list()}" optionKey="id" required="" value="${accountInstance?.account?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountNumber', 'error')} required">
	<label for="accountNumber">
		<g:message code="account.accountNumber.label" default="Account Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="accountNumber" type="number" value="${accountInstance.accountNumber}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'basicRaw', 'error')} ">
	<label for="basicRaw">
		<g:message code="account.basicRaw.label" default="Basic Raw" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${accountInstance?.basicRaw?}" var="b">
    <li><g:link controller="basicRaw" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="basicRaw" action="create" params="['account.id': accountInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'basicRaw.label', default: 'BasicRaw')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'expiration', 'error')} required">
	<label for="expiration">
		<g:message code="account.expiration.label" default="Expiration" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expiration" precision="day"  value="${accountInstance?.expiration}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="account.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${com.inovati.insurance.Person.list()}" optionKey="id" required="" value="${accountInstance?.person?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'plannedRaw', 'error')} ">
	<label for="plannedRaw">
		<g:message code="account.plannedRaw.label" default="Planned Raw" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${accountInstance?.plannedRaw?}" var="p">
    <li><g:link controller="plannedRaw" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="plannedRaw" action="create" params="['account.id': accountInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'plannedRaw.label', default: 'PlannedRaw')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'securityCode', 'error')} required">
	<label for="securityCode">
		<g:message code="account.securityCode.label" default="Security Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="securityCode" type="number" value="${accountInstance.securityCode}" required=""/>
</div>

