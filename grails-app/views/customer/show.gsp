
<%@ page import="com.aatn.data.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="saturn">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<ol class="breadcrumb" role="navigation">
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ol>
		 
		<div id="show-customer" class="content scaffold-show" role="main">
			 <g:if test="${flash.message}">
			  <saturn:alert></saturn:alert>
			</g:if>
			<g:render template="show"></g:render>
			
		</div>
	</body>
</html>
