<%--
  Created by IntelliJ IDEA.
  User: zhangqi
  Date: 2018.12.7
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0078)file:///E:/Idea%20Project/%E7%B4%A0%E6%9D%90${pageContext.request.contextPath}/static_Full_Version/register.html -->
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>注册</title>

    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>
            <h1 class="logo-name"><img height="128" width="128" src="${pageContext.request.contextPath}/static/img/logo.png" /></h1>
        </div>
        <h3></h3>
        <p>创建账号获得更好体验</p>
        <form class="m-t" role="form" action="#">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="用户名" required="">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" placeholder="Email" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="密码" required="">
            </div>
            <div class="form-group">
                <div class="checkbox i-checks"></div>
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">注册</button>

            <p class="text-muted text-center"><small>已经拥有账号？</small></p>
            <a class="btn btn-sm btn-white btn-block" href="#">登录</a>
        </form>
        <p class="m-t">  </p>
    </div>
</div>

<!-- Mainly scripts -->
<script src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/static/js/icheck.min.js"></script>
<script>
    $(document).ready(function(){
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
    });
</script>




</body>
</html>
