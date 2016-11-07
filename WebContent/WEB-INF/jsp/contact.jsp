
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Your Address</title>
</head>
<body>
<br><br>
 
<form:form  action="/SpringJDBCTemplate/contact" modelAttribute="contactVO">
<b><i>Contact Details..</i></b><br>
<hr color="green"><br><br>

<table>
<tr>
<td><form:label path="address">Address</form:label></td>
<td><form:input path="address"/></td>
<td><form:errors path="address"/></td>
</tr>

<tr>
<td>City:</td><td>
<form:select path="city"> 
<form:option value=""/>
<form:option value="san francisco">San Francisco</form:option>
<form:option value="san Jose">San jose</form:option>
</form:select>
</td>
<td><form:errors path="city"/></td>
</tr>

<tr><td>State:</td><td>
<form:select path="state">
<option value=""></option>
<option>California</option>
<option>New York</option>
<option>Texas</option>
<option>Nevada</option>
</form:select>
</td>
<td><form:errors path="state"/></td>

</tr>
<tr>
<td>Country:</td><td>
<form:select path="country">
<option value=""></option>
<option> United State</option>
<option>India</option>
<option>United Kingdom</option>
</form:select> </td>
<td><form:errors path="country"/></td>

</tr>


<tr>
<td><form:label path="pinCode">Pin Code</form:label></td>
<td><form:input path="pinCode"/></td>
<td><form:errors path="pinCode"/></td>
</tr>
<tr><td><input type="submit" value="Submit"></tr>
</table>
</form:form>
</body>
</html>