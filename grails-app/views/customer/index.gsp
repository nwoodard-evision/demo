

<%@ page import="com.aatn.data.Customer" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="saturn">
<g:set var="entityName"
	value="${message(code: 'customer.label', default: 'Customer')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<ol class="breadcrumb" role="navigation">

		<li><a class="home" href="${createLink(uri: '/')}">
		     <g:message code="default.home.label" /></a>
		</li>
		<li>
		  <g:link class="create" action="create">	<g:message code="default.new.label" args="[entityName]" /></g:link>
		</li>
	</ol>
    <g:render template="list"/>

</body>
</html>
