<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
html {
  height: 100%;
}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#141e30, #243b55);
}

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}
</style>
</head>
<body>
 <div class="login-box">
        <h2 style="color: rgb(7, 234, 246) ;">User Details</h2>
        <form>
          <div class="user-box">
            <input type="reset" value="${u.getId()}">
            <label style="color: rgb(7, 234, 246) ;">Id</label>
          </div>
          <div class="user-box">
            <input type="reset" value="${u.getName()}">
            <label style="color: rgb(7, 234, 246) ;">Name</label>
          </div>
          <div class="user-box">
            <input type="reset" value="${u.getPhone()}">
            <label style="color: rgb(7, 234, 246) ;">Phone</label>
          </div>
          </div>
</body>
</html>