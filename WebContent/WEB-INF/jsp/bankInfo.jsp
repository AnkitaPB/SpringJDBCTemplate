<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank detail..</title>
</head>
<body>
<br><br>

<form:form action="/SpringJDBCTemplate/bankInfo" modelAttribute="bankVO">
<b><i>Enter Bank detail here..</i></b><br>
<hr color="green"><br><br>

<table>
<tr>
<td>Bank Name:</td><td>
<form:select path="bankName">
<form:option value="bank of America">Bank of America</form:option>
<form:option value="Chase">Chase</form:option>
<form:option value="wells Fargo">Wells Fargo</form:option>
</form:select>
<form:errors path="bankName"/>
</td></tr>
<tr>
<td>Account number:</td>
<td><form:input path="accountNumber"/></td>
<td><form:errors path="accountNumber"/>
</tr><tr>
<td>SSN:</td><td><form:input path="ssn"/></td>
<td><form:errors path="ssn"/>
</tr><tr><td></td>
<td><input type="submit" value="Submit">
</tr>
</table>
</form:form>

</body>
</html>