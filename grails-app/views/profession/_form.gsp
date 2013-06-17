<%@ page import="com.inovati.insurance.Profession" %>



<div class="fieldcontain ${hasErrors(bean: professionInstance, field: 'professionKey', 'error')} required">
	<label for="professionKey">
		<g:message code="profession.professionKey.label" default="Profession Key" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="professionKey" required="" value="${professionInstance?.professionKey}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professionInstance, field: 'remark', 'error')} ">
	<label for="remark">
		<g:message code="profession.remark.label" default="Remark" />
		
	</label>
	<g:textField name="remark" value="${professionInstance?.remark}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professionInstance, field: 'people', 'error')} ">
	<label for="people">
		<g:message code="profession.people.label" default="People" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${professionInstance?.people?}" var="p">
    <li><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="person" action="create" params="['profession.id': professionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'person.label', default: 'Person')])}</g:link>
</li>
</ul>

</div>

