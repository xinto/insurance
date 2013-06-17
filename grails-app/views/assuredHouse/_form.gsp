<%@ page import="com.inovati.insurance.AssuredHouse" %>



<div class="fieldcontain ${hasErrors(bean: assuredHouseInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="assuredHouse.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="address" name="address.id" from="${com.inovati.insurance.Address.list()}" optionKey="id" required="" value="${assuredHouseInstance?.address?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: assuredHouseInstance, field: 'estimatedValue', 'error')} required">
	<label for="estimatedValue">
		<g:message code="assuredHouse.estimatedValue.label" default="Estimated Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estimatedValue" type="number" value="${assuredHouseInstance.estimatedValue}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: assuredHouseInstance, field: 'policys', 'error')} ">
	<label for="policys">
		<g:message code="assuredHouse.policys.label" default="Policys" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${assuredHouseInstance?.policys?}" var="p">
    <li><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="policy" action="create" params="['assuredHouse.id': assuredHouseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'policy.label', default: 'Policy')])}</g:link>
</li>
</ul>

</div>

