<%@page import="dto.Dto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    padding: 20px;
  }

  form {
    max-width: 400px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
     cursor: pointer;
  }

  button:hover {
    background-color: #45a049;
  }
  .container h1 {
      text-align: center;
    }
</style>
<body>
<pre>
<div class="container"><u><h1>Update-Page</h1></u></div>
<form action="emvc">
<%Dto dto=(Dto)request.getAttribute("obj");%>
Id:<input type="number" name="id" value="<%= dto.getId()%>"><br>
Name:<input type="text" name="name" value="<%= dto.getName()%>"><br>
EMail:<input type="email" name="mail" value="<%= dto.getMail()%>"><br>
Gender:
Male:<input type="radio" name="gender" value="male">
Female:<input type="radio" name="gender" value="female"><br>
password:<input type="number" name="password" value="<%= dto.getPassword()%>"><br>
Confirmpassword:<input type="number" name="confirmpassword" value="<%= dto.getConfirmpassword()%>"><br>
Country:<input type="text" name="country" value="<%= dto.getCountry()%>"><br>
State:<input type="text" name="state" value="<%= dto.getState()%>"><br>
Checkbox:<input type="checkbox" name="checkbox" value="<%= dto.getCheckbox()%>"><br>
<button>Update</button>       <button type="reset">Reset</button>

</form>
</pre>
</body>
</html>