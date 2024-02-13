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
<h2><u>USER DETAILS </u></h2>
<%Users user=(Users)session.getAttribute("user");
%>

<h2>User Id is : <%=user.getUser_Id() %></h2>
<h2>User Name is : <%=user.getUser_Name() %></h2>
<h2>User Email is :<%=user.getUser_Email() %></h2>
<h2>User Password is : <%=user.getUser_Password() %></h2>
<h2>User Role is :<%=user.getRole() %></h2>
<h2>User Designation is : <%=user.getUser_Designation() %></h2>
<h2>User Salary is : <%=user.getUser_Salary() %></h2>
<br>

<a href="edit.jsp"><button>edit</button></a>
&nbsp;&nbsp;
<a href="logout.jsp"><button>logout</button></a>

</body>
</html>