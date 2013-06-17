<%@ page import="com.inovati.insurance.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="person.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${personInstance?.name}"/>
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

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="person.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gender" name="gender.id" from="${com.inovati.insurance.Gender.list()}" optionKey="id" required="" value="${personInstance?.gender?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="person.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${personInstance?.birthDate}"  />
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

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'personalAddress', 'error')} required">
	<label for="personalAddress">
		<g:message code="person.personalAddress.label" default="Personal Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="personalAddress" name="personalAddress.id" from="${com.inovati.insurance.Address.list()}" optionKey="id" required="" value="${personInstance?.personalAddress?.id}" class="many-to-one"/>
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

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'profession', 'error')} required">
	<label for="profession">
		<g:message code="person.profession.label" default="Profession" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profession" name="profession.id" from="${com.inovati.insurance.Profession.list()}" optionKey="id" required="" value="${personInstance?.profession?.id}" class="many-to-one"/>
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

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'workAddress', 'error')} required">
	<label for="workAddress">
		<g:message code="person.workAddress.label" default="Work Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="workAddress" name="workAddress.id" from="${com.inovati.insurance.Address.list()}" optionKey="id" required="" value="${personInstance?.workAddress?.id}" class="many-to-one"/>
</div>

