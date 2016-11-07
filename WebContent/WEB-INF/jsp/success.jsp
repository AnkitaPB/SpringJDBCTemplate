
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Completed</title>
</head>
<body>

<h3>********************Personal Info****************************</h3><hr>
First Name:<c:out value="${personalVO.firstName}"></c:out><br>
Middle Name:<c:out value="${personalVO.middletName}"></c:out><br>
Last Name:<c:out value="${personalVO.lastName}"></c:out><br>
Gender:<c:out value="${personalVO.gender}"></c:out><br>

<h3>********************Address Details****************************</h3><hr>
Address:<c:out value="${contactVO.address}"></c:out><br>
City<c:out value="${contactVO.city}"></c:out><br>
State:<c:out value="${contactVO.state}"></c:out><br>
Country:<c:out value="${contactVO.country}"></c:out><br>
Pin Code:<c:out value="${contactVO.pinCode}"></c:out><br>

<h3>********************Bank Details****************************</h3><hr>
Bank Name:<c:out value="${bankVO.bankName}"></c:out> <br>
Account Number:<c:out value="${bankVO.accountNumber}"></c:out><br>
SSN:<c:out value="${bankVO.ssn}"></c:out><br>





</body>
</html>