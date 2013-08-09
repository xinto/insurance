<%@ page import="com.inovati.insurance.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'account', 'error')} required">
	<label for="account">
		<g:message code="account.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="account" name="account.id" from="${com.inovati.insurance.Account.list()}" optionKey="id" required="" value="${accountInstance?.account?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountNumber', 'error')} ">
	<label for="accountNumber">
		<g:message code="account.accountNumber.label" default="Account Number" />
		
	</label>
	<g:textField name="accountNumber" value="${accountInstance?.accountNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="account.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${accountInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'basicRaw', 'error')} ">
	<label for="basicRaw">
		<g:message code="account.basicRaw.label" default="Basic Raw" />
		
	</label>
	<g:select name="basicRaw" from="${com.inovati.insurance.BasicRaw.list()}" multiple="multiple" optionKey="id" size="5" value="${accountInstance?.basicRaw*.id}" class="many-to-many"/>
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
	<g:select name="plannedRaw" from="${com.inovati.insurance.PlannedRaw.list()}" multiple="multiple" optionKey="id" size="5" value="${accountInstance?.plannedRaw*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'securityCode', 'error')} ">
	<label for="securityCode">
		<g:message code="account.securityCode.label" default="Security Code" />
		
	</label>
	<g:textField name="securityCode" value="${accountInstance?.securityCode}"/>
</div>

