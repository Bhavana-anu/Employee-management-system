<%@page import="com.user.entity.Users"%>
<%@page import="com.user.helper.UserFactory"%>
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
<h1>Task assign to the employee </h1>

<% 
	List<Users> users=UserFactory.getUserDao().getEmployeeList(); 
	
%>
<form action="addtask" method="post">

	Task Description : <textarea rows="3" cols="30" name="Task_Description"  required="required"></textarea> <br><br>
	Status Of Task : <input type="text" value="assign" disabled="disabled" name="Task_status"><br><br>
	Employee Id :  
	<select name="Employee_Id">
	<%for(Users user:users){%>
		<option value="<%= user.getUser_Id() %>"><%= user.getUser_Id() %></option>
	<% }%>
	</select>
	<br><br>
	<input type="submit" value="Assign">
</form>
<br>
<a href="logout.jsp"><button>Logout</button></a>
</body>
</html>