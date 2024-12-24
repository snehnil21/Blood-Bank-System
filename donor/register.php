<?php
if(isset($_POST['register'])){
    include('../includes/connection.php');
    $query = "insert into donors values(null,'$_POST[name]','$_POST[email]','$_POST[password]',$_POST[mobile])";
    $query_result = mysqli_query($connection,$query);
    if($query_result){
        echo "<script type='text/javascript'>
              alert('Donor registered successfully...');
            window.location.href = 'login.php';  
          </script>";
    }
    else{
        echo "<script type='text/javascript'>
              alert('Error...Plz try again.');
              window.location.href = 'login.php';
          </script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <!-- Bootstrap files -->
    <link rel="stylesheet" href="../bootstrap/css//bootstrap.min.css">
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <!-- External CSS file -->
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
    <div class="login-page bk-img" style="background-image: url(img/3.jpg);">
    <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
        <a class="navbar-brand" href="index.php">E-Blood Bank</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="../index.php">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../admin/login.php">Admin</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../donor/login.php">Donor</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../patient/login.php">Patient</a>
            </li>
            </ul>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row" style="margin-top: 5%;">
            <div class="col-md-4 mx-auto" id="login-container">
                <center><h4>Register Page</h4></center>
                <form action="" method="POST">
                <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" name="name" placeholder="Enter your name" required>
                    </div><br>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" name="email" placeholder="Enter email ID" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
                    </div><br>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" name="password" placeholder="Enter Password" required>
                    </div><br>
                    <div class="form-group">
                        <label for="mobile">Mobile</label>
                        <input type="text" class="form-control" name="mobile"  pattern="\d{1,10}" placeholder="Mobile No." maxlength="10" pattern="[0-9]+" required>
                    </div><br>
                    <input type="submit" class="btn btn-danger" value="Register" name="register">
                    <strong>Already registered? </strong><a href="login.php">Login here</a>
                </form>
            </div>
        </div>
    </div>
<div class="container-fluid">
<div class="row">
    <div class="col-md-12 bg-danger" id="footer">
    &copy 2023 <a href="mailto:jijaibloodcentre@gmail.com">JijaiBloodCentre</a>
    </div>
</div>
</div>
</body>
</html>