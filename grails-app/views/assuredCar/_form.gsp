<%@ page import="com.inovati.insurance.AssuredCar" %>



<div class="fieldcontain ${hasErrors(bean: assuredCarInstance, field: 'plateNumber', 'error')} required">
	<label for="plateNumber">
		<g:message code="assuredCar.plateNumber.label" default="Plate Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plateNumber" required="" value="${assuredCarInstance?.plateNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: assuredCarInstance, field: 'estimatedValue', 'error')} required">
	<label for="estimatedValue">
		<g:message code="assuredCar.estimatedValue.label" default="Estimated Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estimatedValue" type="number" value="${assuredCarInstance.estimatedValue}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: assuredCarInstance, field: 'carModel', 'error')} required">
	<label for="carModel">
		<g:message code="assuredCar.carModel.label" default="Car Model" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="carModel" name="carModel.id" from="${com.inovati.insurance.CarModel.list()}" optionKey="id" required="" value="${assuredCarInstance?.carModel?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: assuredCarInstance, field: 'color', 'error')} ">
	<label for="color">
		<g:message code="assuredCar.color.label" default="Color" />
		
	</label>
	<g:textField name="color" value="${assuredCarInstance?.color}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: assuredCarInstance, field: 'policys', 'error')} ">
	<label for="policys">
		<g:message code="assuredCar.policys.label" default="Policys" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${assuredCarInstance?.policys?}" var="p">
    <li><g:link controller="policy" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="policy" action="create" params="['assuredCar.id': assuredCarInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'policy.label', default: 'Policy')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: assuredCarInstance, field: 'year', 'error')} required">
	<label for="year">
		<g:message code="assuredCar.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="year" type="number" value="${assuredCarInstance.year}" required=""/>
</div>

