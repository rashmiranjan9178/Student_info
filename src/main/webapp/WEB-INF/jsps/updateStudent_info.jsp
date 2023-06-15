<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
    <title>Landing Page with Animations</title>
    <style>
        /* Add your CSS styles here */
        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(20px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        body {
            font-family: Arial, sans-serif;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .lead-form {
            max-width: 400px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            animation: fadeIn 1s ease;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input,
        .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            width: 200px;
            height: 100%;
            background-color:#f5f5f5;
            padding: 20px;
            animation: fadeIn 1s ease;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .sidebar li {
            margin-bottom: 10px;
        }
        .sidebar a {
            text-decoration: none;
            color: #333;
        }
        .sidebar .logo {
            margin-bottom: 20px;
            animation: fadeIn 1s ease;
        }
        .sidebar .logo img {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="logo">
                <img src="logo.png" alt="Logo">
            </div>
            <ul>
                 <li><a href="createStudent">CREATE STUDENT</a></li>
                <li><a href="studentList">LISTOFSTUDENTS</a></li>
            
            </ul>
        </div>
        <div class="lead-form">
            <h2>Update Student Information</h2>
            <form method="post" action="updateInfo">
            
                <div class="form-group">
                        <input type="hidden" id="id" value="${studentUpd.id}" name="id" required>
                </div>
                
                <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" value="${studentUpd.firstName}" name="firstName" required>
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" value="${studentUpd.lastName}" name="lastName" required>
                </div>
                <div class="form-group">
                    <label for="age">Age:</label>
                    <input type="number" id="email" value="${studentUpd.age}" name="age">
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile:</label>
                    <input type="tel" id="mobile" value="${studentUpd.mobile}"  name="mobile"required>
                </div>
               
                <button type="submit">Update</button>
            </form>
            
            ${msg}
        </div>
    </div>
    <script>
        // Add your JavaScript animations here
        const leadForm = document.querySelector('.lead-form');
        const sidebar = document.querySelector('.sidebar');

        setTimeout(() => {
            leadForm.style.animation = '';
            sidebar.style.animation = '';
        }, 1000);
    </script>
</body>
</html>