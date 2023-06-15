<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <title>Student Information Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 20px;
    }
    
    h2 {
      margin-top: 0;
    }
    
    .student-info {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    .student-info p {
      margin: 0;
      margin-bottom: 10px;
    }
    
    .student-info strong {
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="student-info">
    <h2>Student Information</h2>
    
    <p><strong>First Name:</strong>${student.firstName }</p>
    <p><strong>Last Name:</strong> ${student.lastName }</p>
    <p><strong>Age:</strong> ${student.age }</p>
    <p><strong>Mobile Number:</strong> ${student.mobile }</p>
    
 <form action="studentList" method="post">
 <input type="submit" value="StudentList"/>
 
 </form>
    
  </div>

  
</body>
</html>
    