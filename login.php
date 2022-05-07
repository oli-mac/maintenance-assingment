<?php

// connetion to database
// check user name and id for login


$mysqli = mysqli_connect("localhost:8111","root","","enebla");
if(isset($_POST['submit'])){
    $user_name = $_POST['user_name'];
    $password = md5($_POST['password']);
    $role=$_POST['role'];
    $admin="Admin";
    $user="User";
$result = mysqli_query( $mysqli ,"select * from users Where user_name='$user_name' and password='$password'") 
            or die("not connected".mysql_error());

$row = mysqli_fetch_array($result);


if ($row['user_name'] == $user_name || $row['password'] == $password)  {
  header("location: index.html");
} else {
    header("location: login.php");
}

}
?>



<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon.png" />
    <title>Enebla Steak House| Login</title>

    
    <link rel="stylesheet" href="./css/styles.css?v=<?php echo time(); ?>">  </head>

  </head>
  <body>
    <div class="wrapper">
      <div id="prompt" class="title">Login Enebla Steak</div>
      <form action="" method="POST">
        <div class="field">
          <input type="text" id="user" name="user_name" required>
          <label>Email Address</label>
        </div>
        <div class="field">
          <input type="password" id="password" name="password" required>
          <label>Password</label>
        </div>
        
        <div class="content">
          <div class="checkbox">
            <input type="checkbox" id="remember-me">
            <label for="remember-me">Remember me</label>
          </div>
          <div class="pass-link"><a href="#">Forgot password?</a></div>
        </div>
        <div class="field">
          <input type="submit" name="submit"value="Login" id="login_btn">
        </div>
        <div class="signup-link">Not a member? <a href="register.php">Signup now</a></div>
      </form>
    </div>
  </body>
</html>
