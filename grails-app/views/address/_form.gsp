<%@ page import="com.inovati.insurance.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'colony', 'error')} ">
	<label for="colony">
		<g:message code="address.colony.label" default="Colony" />
		
	</label>
	<g:textField name="colony" value="${addressInstance?.colony}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'delegation', 'error')} ">
	<label for="delegation">
		<g:message code="address.delegation.label" default="Delegation" />
		
	</label>
	<g:textField name="delegation" value="${addressInstance?.delegation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'houses', 'error')} ">
	<label for="houses">
		<g:message code="address.houses.label" default="Houses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${addressInstance?.houses?}" var="h">
    <li><g:link controller="assuredHouse" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="assuredHouse" action="create" params="['address.id': addressInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'assuredHouse.label', default: 'AssuredHouse')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'number', 'error')} ">
	<label for="number">
		<g:message code="address.number.label" default="Number" />
		
	</label>
	<g:textField name="number" value="${addressInstance?.number}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'peoplePersonal', 'error')} ">
	<label for="peoplePersonal">
		<g:message code="address.peoplePersonal.label" default="People Personal" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${addressInstance?.peoplePersonal?}" var="p">
    <li><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="person" action="create" params="['address.id': addressInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'person.label', default: 'Person')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'peopleWork', 'error')} ">
	<label for="peopleWork">
		<g:message code="address.peopleWork.label" default="People Work" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${addressInstance?.peopleWork?}" var="p">
    <li><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="person" action="create" params="['address.id': addressInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'person.label', default: 'Person')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'postalCode', 'error')} required">
	<label for="postalCode">
		<g:message code="address.postalCode.label" default="Postal Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="postalCode" type="number" value="${addressInstance.postalCode}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${addressInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'street', 'error')} ">
	<label for="street">
		<g:message code="address.street.label" default="Street" />
		
	</label>
	<g:textField name="street" value="${addressInstance?.street}"/>
</div>

