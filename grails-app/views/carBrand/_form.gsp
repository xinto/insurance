<%@ page import="com.inovati.insurance.CarBrand" %>



<div class="fieldcontain ${hasErrors(bean: carBrandInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="carBrand.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${carBrandInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carBrandInstance, field: 'carModel', 'error')} ">
	<label for="carModel">
		<g:message code="carBrand.carModel.label" default="Car Model" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${carBrandInstance?.carModel?}" var="c">
    <li><g:link controller="carModel" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="carModel" action="create" params="['carBrand.id': carBrandInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'carModel.label', default: 'CarModel')])}</g:link>
</li>
</ul>

</div>

