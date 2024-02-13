
<%@page import="com.user.entity.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Users user=(Users)session.getAttribute("user"); %>
<form action="update" method="post">
<input type="hidden" value="<%=user.getUser_Id() %>" name="user_Id">

User Name is : <input type="text" value=<%=user.getUser_Name() %> name="user_Name"><br><br>
User Email is : <input type="text" value=<%= user.getUser_Email()%> name="user_Email"><br><br>
User Password is : <input type="text" value=<%= user.getUser_Password()%> name="user_Password"><br><br>
User Designation is : <input type="text" value=<%= user.getUser_Designation()%> name="user_Designation"><br><br>
User Salary is : <input type="text" value=<%= user.getUser_Salary()%> name="user_Salary"><br><br>
<input type="submit" value="update">

</form>
<a href="logout.jsp"><button>logout</button></a>
</body>
</html>