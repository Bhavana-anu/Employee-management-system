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
<h1>Employee Home Page</h1>
<% Users user=(Users)session.getAttribute("employee"); %>
<h2>Welcome to the Dashboard, <%=user.getUser_Name() %></h2>
<a href="employeeviewtask.jsp"><button>View Task</button></a>
&nbsp;&nbsp;
<a href="details.jsp"><button>Details</button></a>
&nbsp;&nbsp;
<a href="logout.jsp"><button>Logout</button></a>
</body>
</html>