<%@ page import="com.inovati.insurance.CarModel" %>



<div class="fieldcontain ${hasErrors(bean: carModelInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="carModel.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${carModelInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carModelInstance, field: 'assuredCars', 'error')} ">
	<label for="assuredCars">
		<g:message code="carModel.assuredCars.label" default="Assured Cars" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${carModelInstance?.assuredCars?}" var="a">
    <li><g:link controller="assuredCar" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="assuredCar" action="create" params="['carModel.id': carModelInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'assuredCar.label', default: 'AssuredCar')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: carModelInstance, field: 'carBrand', 'error')} required">
	<label for="carBrand">
		<g:message code="carModel.carBrand.label" default="Car Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="carBrand" name="carBrand.id" from="${com.inovati.insurance.CarBrand.list()}" optionKey="id" required="" value="${carModelInstance?.carBrand?.id}" class="many-to-one"/>
</div>

