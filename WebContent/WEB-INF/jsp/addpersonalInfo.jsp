<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Here</title>

</head>
<body>
<br><br>

<form:form action="/SpringJDBCTemplate/addpersonalInfo" modelAttribute="personalVO">
<b><i>Enter The personal detail here..</i></b><br>
<table>
<tr>
<td><form:label path="firstName">First Name</form:label></td><td><form:input path="firstName"/></td><td><form:errors path="firstName" cssClass="error"/></td></tr>

<tr>
<td><form:label path="middletName"/>Middle Name
<td><form:input path="middletName"/></td>
<td><form:errors path="middletName"/></td></tr>

<tr>
<td><form:label path="lastName"/>last Name
<td><form:input path="lastName"/></td>
<td><form:errors path="lastName"/></td></tr>

<tr>
<td><form:label path="gender"/>Gender:</td>
<td><form:radiobutton path="gender" value="male"/>Male &nbsp;<form:radiobutton path="gender" value="female"/>Female </td>
<td><form:errors path="gender"/>
</tr>
<tr><td></td><td><input type="submit" value="Submit"></tr>
</table>
</form:form>

</body>
</html>