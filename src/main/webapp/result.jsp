<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Gender</th>
<th>Country</th>
<th>State</th>
<th>Password</th>
<th>Confirm_Password</th>
<th>Checkbox</th>
</tr>
<c:forEach items="${list}" var="dto">
<tr>
<td>${dto.getId()}</td>
<td>${dto.getName()}</td>
<td>${dto.getMail()}</td>
<td>${dto.getGender()}</td>
<td>${dto.getCountry()}</td>
<td>${dto.getState()}</td>
<td>${dto.getPassword()}</td>
<td>${dto.getConfirmpassword()}</td>
<td>${dto.getCheckbox()}</td>
</tr>
</c:forEach>

</table>
</body>
</html>