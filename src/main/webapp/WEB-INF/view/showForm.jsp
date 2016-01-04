<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form method="post" modelAttribute="user"
	action="/DemoApp-0.0.1-SNAPSHOT/saveUser">
	<tr>
        <td><form:label path="firstName">First Name</form:label></td>
		<form:input path="firstName" type="text" />
	</tr>
	<tr>
        <td><form:label path="middleName">Middle Name</form:label></td>
		<form:input path="middleName" type="text" />
	</tr>
	<tr>
        <td><form:label path="lastName">Last Name</form:label></td>
		<form:input path="lastName" type="text" />
	</tr>
	<tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
	<!-- bind to user.name-->
	<form:errors path="middleName" />
	<form:errors path="firstName" />
	<form:errors path="lastName" />
</form:form>