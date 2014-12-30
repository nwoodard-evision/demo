<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="saturn">
<g:set var="entityName"
	value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<ol class="breadcrumb" role="navigation">

		<li><a class="home" href="\${createLink(uri: '/')}"> <g:message
					code="default.home.label" /></a></li>
		<li><g:link class="create" action="create">
				<g:message code="default.new.label" args="[entityName]" />
			</g:link></li>
	</ol>
	<div id="create-${domainClass.propertyName}"
		class="content scaffold-create" role="main">
		 
		<g:if test="\${flash.message}">
			<saturn:alert></saturn:alert>
		</g:if>
		<g:hasErrors bean="\${${propertyName}}">
			<ul class="errors" role="alert">
				<g:eachError bean="\${${propertyName}}" var="error">
					<li
						<g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message
							error="\${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
	<g:render template="edit"></g:render>
		</div>
</body>
</html>
