<%@ page import="com.teks.emp.entity.Employees, java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Employees</title>

 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
          crossorigin="anonymous">

    <style>
        body {
            background: whitesmoke;
        }
        .container {
            background-color: #fff;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 40px;
            border-radius: 10px;
        }
        .table thead {
            background-color: #17a2b8;
            color: white;
        }
        .action-links a {
            margin-right: 10px;
            text-decoration: none;
            font-weight: 500;
        }
        .action-links a.edit {
            color: #007bff;
        }
        .action-links a.delete {
            color: #dc3545;
        }
        .header-title {
            text-align: center;
            color: #17a2b8;
            font-weight: bold;
            margin-bottom: 25px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2 class="header-title">Employee List</h2>

        <table class="table table-hover table-bordered text-center align-middle">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Role</th>
                    <th scope="col">Salary</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Employees> empList = (List<Employees>) request.getAttribute("employees");
                    if (empList != null && !empList.isEmpty()) {
                        for (Employees emp : empList) {
                %>
                <tr>
                    <td><%= emp.getId() %></td>
                    <td><%= emp.getName() %></td>
                    <td><%= emp.getEmail() %></td>
                    <td><%= emp.getRole() %></td>
                    <td><%= emp.getSalary() %></td>
                    <td class="action-links">
                        <a href="edit/<%= emp.getId() %>" class="edit">Edit</a>
                        <a href="delete/<%= emp.getId() %>" class="delete"
                           onclick="return confirm('Are you sure you want to delete this employee?');">
                           Delete
                        </a>
                    </td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="6" class="text-muted">No employees found</td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <div class="text-center mt-3">
            <a href="employeeform" class="btn btn-success">Add New Employee</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</body>
</html>
