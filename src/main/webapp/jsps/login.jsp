<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="common/header.jsp" %>
    <link href="${pageContext.request.contextPath}/font-awesome-4.7.0/css/font-awesome.min.css" type="text/css"
          rel="stylesheet">
    <style>
        #loginForm input {
            height: 40px;
            line-height: 40px;
        }

        .input-group-addon {
            font-size: 20px;
        }

        .login_bg {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 1000px;
            background: url(${pageContext.request.contextPath}/image/login/jiuhui.jpg);
            background-size: 100%;
        }

        .w_bg {
            height: 475px;
            position: relative;
        }

        .c_car {
            margin: 0 auto;
            width: 990px;
        }

        .d_form {
            width: 400px;
            height: 300px;
            position: absolute;
            right:650px;
            top: 400px;
            padding: 10px 80px;
        }

        .forgetpsw {
            color: #035EC9;
            float: left;
            margin-right: 10px;
            font-weight: lighter;
            font-size: 12px;
        }

        .user_regist {
            float: right;
            color: #035EC9;
            margin-right: 15px;
        }

        #loginForm .form-group {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
<!-- 头部列表结束-->
<div class="w_bg">
    <div class="login_bg">
        <div class="d_form">
            <form class="form-horizontal" id="loginForm" method="post"
                  action="${pageContext.request.contextPath}/user/login">
                <div class="form-group"><!--  has-success has-feedback-->
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-mobile" aria-hidden="true"></i>
                        </span>
                        <input type="text" class="form-control" id="usercode" name="usercode">
                    </div>
                    <span class="help-block">&nbsp;</span>
                </div>
                <div class="form-group ">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                        <input type="password" class="form-control" id="password" name="password">

                    </div>
                    <span class="help-block">&nbsp;</span>
                </div>
            </form>
            <span style="display: block"><input type="button" onclick="sendForm()"
                                                style="width: 100%"  value="登&nbsp;&nbsp;陆"></input></span>

        </div>
    </div>
</div>
<%@include file="/jsps/js/login.jsp" %>
</body>
</html>