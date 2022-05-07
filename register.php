<?php

$mysqli = mysqli_connect("localhost:8111","root","","enebla");

if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($mysqli, $_POST['username']);
   $fname = mysqli_real_escape_string($mysqli, $_POST['fullname']);
   $email = mysqli_real_escape_string($mysqli, $_POST['email']);
   $number = mysqli_real_escape_string($mysqli, $_POST['number']);
   $pass = mysqli_real_escape_string($mysqli, md5($_POST['password']));
   $city = mysqli_real_escape_string($mysqli, $_POST['city']);
   $role = "Customer";
   $gender = mysqli_real_escape_string($mysqli, $_POST['gender']);
   $date = date('Y-m-d H:i:s');

  //  $select = mysqli_query($conn, "SELECT * FROM `user_form` WHERE email = '$email' AND password = '$pass'");
    
   
   mysqli_query($mysqli, "INSERT INTO `users`( user_name, full_name, user_phone, user_email, user_city, user_role, user_gender, date, password) VALUES('$name','$fname','$number', '$email','$city','$role','$gender','$date', '$pass')");
   $message[] = 'registered successfully!';
   header('location:login.php');
}

?>



<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon.png" />
    <title>Enebla Steak House| Register</title>

    <link rel="stylesheet" href="register.css?v=<?php echo time(); ?>">  </head>
  <body>
    <div class="container">
      <center><div class="title">Enebla Steak Registration</div></center>
      <div class="content">
        <form action="" method="POST" >
          <div class="user-details">
            <div class="input-box">
              <span class="details">Full Name</span>
              <input type="text" name="fullname" placeholder="Enter your name" required>
            </div>
            <div class="input-box">
              <span class="details">Username</span>
              <input type="text" name="username" placeholder="Enter your username" required>
            </div>
            <div class="input-box">
              <span class="details">Email</span>
              <input type="text" name="email" placeholder="Enter your email" required>
            </div>
            <div class="input-box">
              <span class="details">Phone Number</span>
              <input type="text" name="number" placeholder="Enter your number" required>
            </div>
            <div class="input-box">
              <span class="details">Password</span>
              <input type="text" name="password" placeholder="Enter your password" required>
            </div>
            <div class="input-box">
              <span class="details">City</span>
              <input type="text" name="city" placeholder="Enter Your City" required>
            </div>
          </div>
          <!-- <div class="role-details">
            <input type="radio" name="role" id="role-1"value="Admin">
            <input type="radio" name="role" id="role-2" value="User">
            <input type="radio" name="role" id="role-3" value="Manager">
            <span class="role-title">Role</span>
            <div class="category">
              <label for="role-1">
              <span class="rol one"></span>
              <span class="gender">Admin</span>
            </label>
            <label for="role-2">
              <span class="rol two"></span>
              <span class="gender">Customer</span>
            </label>
            <label for="role-3">
              <span class="rol three"></span>
              <span class="gender">Manager</span>
              </label>
            </div>
          </div> -->


          <div class="gender-details">
            <input type="radio" name="gender" id="dot-1" value="male">
            <input type="radio" name="gender" id="dot-2" value="female">
            <span class="gender-title">Gender</span>
            <div class="category">
              <label for="dot-1">
              <span class="dot one"></span>
              <span class="gender">Male</span>
            </label>
            <label for="dot-2">
              <span class="dot two"></span>
              <span class="gender">Female</span>
            </label>
            </div>
          </div>

          

          <div class="button">
            <button type="submit" name="submit" value="register">Register</button>
          </div>
          <div class="sign_up">
          Allready a member? <a href="login.php">Login Now</a>
        </div>
        </form>
      </div>
    </div>

  </body>
</html>
