<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
   <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <title>Student List</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
    }
    
    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    
    th {
      background-color: #f2f2f2;
    }
  </style>
</head>
<body>
  <h2>Student List</h2>
  <table>
    <thead>
      <tr>
        <th>Student ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
        <th>Mobile Number</th>
        <th>action</th>
      </tr>
    </thead>
    <tbody>
   
     <c:forEach var="students" items="${students}">  
     <tr>
       <td>${students.id}</td>
       <td>${students.firstName}</td>
       <td>${students.lastName}</td>
       <td>${students.age}</td>
       <td>${students.mobile}</td>
       <td><a href="delete?id=${students.id}">delete</a></td>
       <td><a href="update?id=${students.id}">update</a></td>
     </tr>
 
</c:forEach>
   
   
    </tbody>
  </table>
</body>
</html>
    