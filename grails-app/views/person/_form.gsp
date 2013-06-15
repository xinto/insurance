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

