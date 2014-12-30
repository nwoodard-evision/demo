<%@ page import="com.aatn.data.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="customer.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${customerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="customer.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${customerInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="customer.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${customerInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="customer.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${customerInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="customer.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${customerInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="customer.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${customerInstance?.zipCode}"/>

</div>

