<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <style>
        body {
            background: whitesmoke;
        }
        .form-container {
            max-width: 600px;
            background: white;
            box-shadow: 0 6px 15px rgba(0, 191, 255, 0.3);
            border-radius: 12px;
            margin: 60px auto;
            padding: 40px;
        }
        .form-title {
            color: #0dcaf0;
            font-weight: bold;
            margin-bottom: 30px;
        }
        .btn-submit {
            width: 50%;
        }
    </style>
</head>

<body>
    <div class="container form-container">
        <div class="text-center">
            <h2 class="form-title">Add New Employee</h2>
        </div>

        <form class="row g-3" action="addemp" method="post">

           
            <div class="col-12">
                <label class="form-label fw-bold">Name</label>
                <input type="text" class="form-control" name="name"
                       placeholder="Enter Employee Name" required>
            </div>

          
            <div class="col-12">
                <label class="form-label fw-bold">Email</label>
                <input type="email" class="form-control" name="email"
                       placeholder="employee@gmail.com" required>
            </div>

         
            <div class="col-12">
                <label class="form-label fw-bold">Role</label>
                <input type="text" class="form-control" name="role"
                       placeholder="Enter Role" required>
            </div>

           
            <div class="col-12">
                <label class="form-label fw-bold">Salary</label>
                <input type="number" class="form-control" name="salary"
                       placeholder="Enter Salary" required>
            </div>

            
            <div class="col-12 text-center">
                <button class="btn btn-info btn-submit" type="submit">Submit</button>
            </div>
        </form>
    </div>

   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</body>
</html>
