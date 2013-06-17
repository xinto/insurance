<%@ page import="com.inovati.insurance.PaymentMethod" %>



<div class="fieldcontain ${hasErrors(bean: paymentMethodInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="paymentMethod.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${paymentMethodInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentMethodInstance, field: 'policys', 'error')} ">
	<label for="policys">
		<g:message code="paymentMethod.policys.label" default="Policys" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${paymentMethodInstance?.policys?}" var="p">
    <li><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="policy" action="create" params="['paymentMethod.id': paymentMethodInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'policy.label', default: 'Policy')])}</g:link>
</li>
</ul>

</div>

