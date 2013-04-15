<%@ page import="com.inovati.insurance.PayMaster" %>



<div class="fieldcontain ${hasErrors(bean: payMasterInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="payMaster.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${payMasterInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: payMasterInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="payMaster.lastname.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" required="" value="${payMasterInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: payMasterInstance, field: 'contractors', 'error')} ">
	<label for="contractors">
		<g:message code="payMaster.contractors.label" default="Contractors" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${payMasterInstance?.contractors?}" var="c">
    <li><g:link controller="contractor" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contractor" action="create" params="['payMaster.id': payMasterInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contractor.label', default: 'Contractor')])}</g:link>
</li>
</ul>

</div>

