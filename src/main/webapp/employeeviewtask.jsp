<%@page import="com.user.entity.Task"%>
<%@page import="com.user.helper.UserFactory"%>
<%@page import="com.user.entity.Users"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><u>Task details :</u></h1>
<% Users user=(Users)session.getAttribute("employee");
List<Task> task=UserFactory.getUserDao().viewAllTask(user.getUser_Id());
for(Task tasks:task){
%>
<h3>Task ID is :<%=tasks.getTask_Id() %> </h3>
<h3>Task Description is :<%=tasks.getTask_Description() %></h3>
<h3>Task Assigned Time is :<%=tasks.getCreate_Time() %></h3>
<h3>Task Status is :<%=tasks.getTask_Status()%></h3>
<form action="edit_task_status" method="post">
Assign Status to :
<select name="task_status">
<option value="assigned">assigned</option>
<option value="completed">completed</option>
</select>
<button name="task_id" value="<%= tasks.getTask_Id()%>">update</button>
</form>
<h3>--------------------------------------------------------------</h3>
<%} %>

&nbsp;&nbsp;
<a href="logout.jsp"><button>Logout</button></a>

</body>
</html>