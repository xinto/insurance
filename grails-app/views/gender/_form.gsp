<%@ page import="com.inovati.insurance.Gender" %>



<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'genderKey', 'error')} required">
	<label for="genderKey">
		<g:message code="gender.genderKey.label" default="Gender Key" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="genderKey" required="" value="${genderInstance?.genderKey}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'remark', 'error')} ">
	<label for="remark">
		<g:message code="gender.remark.label" default="Remark" />
		
	</label>
	<g:textField name="remark" value="${genderInstance?.remark}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'people', 'error')} ">
	<label for="people">
		<g:message code="gender.people.label" default="People" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${genderInstance?.people?}" var="p">
    <li><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="person" action="create" params="['gender.id': genderInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'person.label', default: 'Person')])}</g:link>
</li>
</ul>

</div>

