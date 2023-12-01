<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<style>
    .login{
        height:180px; width:200px;
        margin:0;
        padding:10px;
        border:1px #CCC solid;
    }
    .login input{
        padding:5px; margin:5px
    }
</style>
<head>
    <title>Login</title>
</head>
<body>
    <form  method = "post" action="/LoginServlet">
        <div class="login">
            <h2>Login</h2>
            <input type="text" name="userName" size="30" placeholder="user name">
            <input type="password" name="password" size="30" placeholder="password">
            <input type="submit" value="sign in">
        </div>
    </form>
</body>
</html>