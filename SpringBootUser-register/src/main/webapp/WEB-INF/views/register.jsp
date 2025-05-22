<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>Register User</h1>
    <form:form action="/saveUser" method="post" modelAttribute="user">
    
          <table>
             <tr>
                <td>First Name : </td>
                <td><form:input path="firstName"/>
             </tr>
             <tr>
                <td>Last Name : </td>
                <td><form:input path="lastName"/>
             </tr>
             <tr>
                <td>Email : </td>
                <td><form:input path="email"/>
             </tr>
             <tr>
                <td>Gender : </td>
                <td>
                   <form:radiobutton path="gender" value="male"/> Male
                   <form:radiobutton path="gender" value="female"/> Female
                </td>
             </tr>
             <tr>
                <td>Course : </td>
                <td>
                  <form:select path="course">
                  <form:option value="">--Select--</form:option>
                  <form:option value="Java">Java</form:option>
                  <form:option value="Spring boot">Spring Boot</form:option>
                  <form:option value="php">PHP</form:option>
                  </form:select>
                </td>
             </tr>
             <tr>
                <td>Timing : </td>
                <td>
                   <form:radiobutton path="timing" value="Morning"/> Morning
                   <form:radiobutton path="timing" value="Evening"/> Evening
                   <form:radiobutton path="timing" value="Night"/> Night
                </td>
             </tr>
             <tr>
               <td>
                 <button type="submit">Register</button>
               </td>
             </tr>
          </table>
    </form:form>
</body>
</html>