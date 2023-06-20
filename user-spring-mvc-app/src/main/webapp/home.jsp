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

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}
    </style>
</head>

<body>
<h2>
${msg}
</h2>
<div class="login-box">
        <h2 style="color: rgb(7, 234, 246); text-decoration: underline rgb(7, 234, 246) solid;">Welcome To the Home Page</h2>
         <br>
            <h2 ><a href="viewUser.jsp">View</a></h2>  
            <span></span>
            <br> <h2><a href="updateUser.jsp">Update</a></h2>
            <span></span>
            <br> <h2><a href="delete?id=${u.getId() }">Delete</a></h2>
            <span></span>
            <br> <h2><a href="">Logout</a></h2>
            <span></span>
      </div>
</body>
</html>