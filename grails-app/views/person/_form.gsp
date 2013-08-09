<%@ page import="com.inovati.insurance.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="person.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${personInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'secondName', 'error')} ">
	<label for="secondName">
		<g:message code="person.secondName.label" default="Second Name" />
		
	</label>
	<g:textField name="secondName" value="${personInstance?.secondName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastname', 'error')} ">
	<label for="lastname">
		<g:message code="person.lastname.label" default="Lastname" />
		
	</label>
	<g:textField name="lastname" value="${personInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'secondLastname', 'error')} ">
	<label for="secondLastname">
		<g:message code="person.secondLastname.label" default="Second Lastname" />
		
	</label>
	<g:textField name="secondLastname" value="${personInstance?.secondLastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="person.gender.label" default="Gender" />
		
	</label>
	<g:select id="gender" name="gender.id" from="${com.inovati.insurance.Gender.list()}" optionKey="id" value="${personInstance?.gender?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'profession', 'error')} ">
	<label for="profession">
		<g:message code="person.profession.label" default="Profession" />
		
	</label>
	<g:select id="profession" name="profession.id" from="${com.inovati.insurance.Profession.list()}" optionKey="id" value="${personInstance?.profession?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'birthDate', 'error')} ">
	<label for="birthDate">
		<g:message code="person.birthDate.label" default="Birth Date" />
		
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${personInstance?.birthDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'personalAddress', 'error')} ">
	<label for="personalAddress">
		<g:message code="person.personalAddress.label" default="Personal Address" />
		
	</label>
	<g:select id="personalAddress" name="personalAddress.id" from="${com.inovati.insurance.Address.list()}" optionKey="id" value="${personInstance?.personalAddress?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'workCompanyName', 'error')} ">
	<label for="workCompanyName">
		<g:message code="person.workCompanyName.label" default="Work Company Name" />
		
	</label>
	<g:textField name="workCompanyName" value="${personInstance?.workCompanyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'workAddress', 'error')} ">
	<label for="workAddress">
		<g:message code="person.workAddress.label" default="Work Address" />
		
	</label>
	<g:select id="workAddress" name="workAddress.id" from="${com.inovati.insurance.Address.list()}" optionKey="id" value="${personInstance?.workAddress?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'telephone1', 'error')} ">
	<label for="telephone1">
		<g:message code="person.telephone1.label" default="Telephone1" />
		
	</label>
	<g:textField name="telephone1" value="${personInstance?.telephone1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'telephone2', 'error')} ">
	<label for="telephone2">
		<g:message code="person.telephone2.label" default="Telephone2" />
		
	</label>
	<g:textField name="telephone2" value="${personInstance?.telephone2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="person.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${personInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'preferedName', 'error')} ">
	<label for="preferedName">
		<g:message code="person.preferedName.label" default="Prefered Name" />
		
	</label>
	<g:textField name="preferedName" value="${personInstance?.preferedName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'rfc', 'error')} ">
	<label for="rfc">
		<g:message code="person.rfc.label" default="Rfc" />
		
	</label>
	<g:textField name="rfc" value="${personInstance?.rfc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="person.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${personInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'isPayer', 'error')} ">
	<label for="isPayer">
		<g:message code="person.isPayer.label" default="Is Payer" />
		
	</label>
	<g:textField name="isPayer" value="${personInstance?.isPayer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'isContractor', 'error')} ">
	<label for="isContractor">
		<g:message code="person.isContractor.label" default="Is Contractor" />
		
	</label>
	<g:checkBox name="isContractor" value="${personInstance?.isContractor}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'accounts', 'error')} ">
	<label for="accounts">
		<g:message code="person.accounts.label" default="Accounts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.accounts?}" var="a">
    <li><g:link controller="account" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="account" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'account.label', default: 'Account')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'curp', 'error')} ">
	<label for="curp">
		<g:message code="person.curp.label" default="Curp" />
		
	</label>
	<g:textField name="curp" value="${personInstance?.curp}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'insured', 'error')} ">
	<label for="insured">
		<g:message code="person.insured.label" default="Insured" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.insured?}" var="i">
    <li><g:link controller="insured" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="insured" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'insured.label', default: 'Insured')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'policyContractor', 'error')} ">
	<label for="policyContractor">
		<g:message code="person.policyContractor.label" default="Policy Contractor" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.policyContractor?}" var="p">
    <li><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="policy" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'policy.label', default: 'Policy')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'policyPayer', 'error')} ">
	<label for="policyPayer">
		<g:message code="person.policyPayer.label" default="Policy Payer" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.policyPayer?}" var="p">
    <li><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="policy" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'policy.label', default: 'Policy')])}</g:link>
</li>
</ul>

</div>

