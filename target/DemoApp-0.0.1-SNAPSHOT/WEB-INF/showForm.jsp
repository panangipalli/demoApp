<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form method="post" modelAttribute="user"
	action="/saveUser}">
	<form:input path="userName" type="text" />
	<form:input path="firstName" type="text" />
	<form:input path="lastName" type="text" />
	<!-- bind to user.name-->
	<form:errors path="name" />
</form:form>