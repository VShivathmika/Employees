<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Employee Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 80px;
            max-width: 600px;
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }
        .header-title {
            text-align: center;
            font-weight: bold;
            color: #17a2b8;
            margin-bottom: 30px;
        }
        .nav-links a {
            display: block;
            margin: 12px 0;
            padding: 12px;
            border-radius: 8px;
            text-align: center;
            font-size: 18px;
            font-weight: 500;
            text-decoration: none;
            transition: all 0.3s ease-in-out;
        }
        .nav-links a:hover {
            transform: scale(1.05);
            color: #fff;
        }
        .nav-links .add { background-color: #28a745; color: #fff; }
        .nav-links .get { background-color: #007bff; color: #fff; }
        .nav-links .getall { background-color: #17a2b8; color: #fff; }
    </style>
</head>

<body>
    <div class="container">
        <h2 class="header-title">Employee Management System</h2>

        <div class="nav-links">
            <a href="employeeform" class="add"> Add Employee</a>
<!--            <a href="get" class="get">Get Employee By ID</a>-->
            <a href="getAll" class="getall"> View All Employees</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</body>
</html>
