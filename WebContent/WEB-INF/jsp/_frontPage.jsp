<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>_frontPage</title>
</head>
<body>
<%
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String lname=request.getParameter("lname");
String gender=request.getParameter("gender");
session.setAttribute("fname", fname);
session.setAttribute("mname", mname);
session.setAttribute("lname", lname);
session.setAttribute("gender", gender);
response.sendRedirect("/html/middlePage.html");


%>>
</body>
</html>