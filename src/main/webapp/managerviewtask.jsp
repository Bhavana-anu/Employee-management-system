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
<%
List<Users> users=UserFactory.getUserDao().getEmployeeList();
for(Users user: users){
	List<Task> task=user.getTasks();
%>
<h2><u>Task Assiged To</u></h2>
<h3>Employee ID is : <%=user.getUser_Id() %></h3>
<h3>Employee Name is :<%=user.getUser_Name() %></h3>
<h3>---------------------------Task List-------------------------------</h3>
<h3><u>Task list of</u> <%=user.getUser_Name() %></h3>
<% for(Task tasks: task){
	String task_Status=tasks.getTask_Status();%>
<h3>Task ID is :<%=tasks.getTask_Id() %> </h3>
<h3>Task Description is :<%=tasks.getTask_Description() %></h3>
<h3>Task Assigned Time is :<%=tasks.getCreate_Time() %></h3>
<h3>Task Status is :<%=task_Status%></h3>
<% if(!(task_Status.equals("assigned"))){ %>
<h3>Task Submited time :<%= tasks.getUpdate_Time() %></h3>
<%} %>
<h3>------------------------------------------------------------------</h3>
<%} %>
<%} %>
&nbsp;&nbsp;
<a href="logout.jsp"><button>Logout</button></a>
</body>
</html>