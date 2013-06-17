<%@ page import="com.inovati.insurance.Currency" %>



<div class="fieldcontain ${hasErrors(bean: currencyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="currency.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${currencyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: currencyInstance, field: 'basicRaws', 'error')} ">
	<label for="basicRaws">
		<g:message code="currency.basicRaws.label" default="Basic Raws" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${currencyInstance?.basicRaws?}" var="b">
    <li><g:link controller="basicRaw" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="basicRaw" action="create" params="['currency.id': currencyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'basicRaw.label', default: 'BasicRaw')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: currencyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="currency.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${currencyInstance?.description}"/>
</div>

