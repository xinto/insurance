<%@ page import="com.inovati.insurance.CompanyTrade" %>



<div class="fieldcontain ${hasErrors(bean: companyTradeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="companyTrade.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${companyTradeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyTradeInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="companyTrade.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${companyTradeInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: companyTradeInstance, field: 'companyTradeProducts', 'error')} ">
	<label for="companyTradeProducts">
		<g:message code="companyTrade.companyTradeProducts.label" default="Company Trade Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${companyTradeInstance?.companyTradeProducts?}" var="c">
    <li><g:link controller="companyTradeProducts" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="companyTradeProducts" action="create" params="['companyTrade.id': companyTradeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'companyTradeProducts.label', default: 'CompanyTradeProducts')])}</g:link>
</li>
</ul>

</div>

