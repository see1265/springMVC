<%@page import="dto.Dto"%>
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
<table border="2px">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Gender</th>
<th>Password</th>
<th>Confirm_Password</th>
<th>Country</th>
<th>State</th>
<th>Check_box</th>
<th>Delete</th>
<th>Update</th>
</tr>
<%List<Dto> d1=(List<Dto>)request.getAttribute("list"); %>
<%for(Dto l1:d1){ %>
<tr>
<td><%=l1.getId() %></td>
<td><%=l1.getName() %></td>
<td><%=l1.getMail() %></td>
<td><%=l1.getGender() %></td>
<td><%=l1.getPassword() %></td>
<td><%=l1.getConfirmpassword() %></td>
<td><%=l1.getCountry() %></td>
<td><%=l1.getState() %></td>
<td><%=l1.getCheckbox() %></td>
<td> <a href="delete.jsp?id=<%= l1.getId()%>">Delete</a></td>
<td> <a href="update?id=<%= l1.getId()%>">Update</a></td>
</tr>
<%}%>
</table>
</body>
</html>