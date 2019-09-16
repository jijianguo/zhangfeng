<%--
  Created by IntelliJ IDEA.
  User: jishengnan
  Date: 2019-08-12
  Time: 08:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
    $(function () {
        $(document).keydown(function (event) {
            if (event.keyCode == 13) {
                sendForm();
            }
        });
        $("#usercode").blur(function () {
            var a = $(this).val();
            if (a == "") {
                setError($(this), "账户不能为空!");
            } else {
                setOk($(this));
            }
        });
        //密码操作
        $("#password").blur(function () {
            var b = $(this).val();
            if (b == "") {
                setError($(this), "密码不能为空!");
            } else {
                setOk($(this));
            }
        });
    });

    //提交form表单
    function sendForm() {
        if (verifyForm()) {
            $("#loginForm").submit();
        } else {
            alert("页面输入有误，请修改后重新提交！");
        }
    }

    function verifyForm() {
        var flag = true;
        $("#loginForm .form-group").each(function () {
            if (!$(this).hasClass("has-success") && !$(this).hasClass("has-error")) {
                $(this).find(".form-control").trigger("blur");
            }
        });
        $("#loginForm .form-group").each(function () {
            if (!$(this).hasClass("has-success")) {
                flag = false;
                return;
            }
        });
        return flag;
    }

    function setOk(obj) {
        var _pdiv = obj.parents(".form-group");
        if (_pdiv.hasClass("has-error")) {
            _pdiv.removeClass("has-error");
        }
        _pdiv.addClass("has-success");
        obj.parent(".input-group").next("span.help-block").html("&nbsp;");
    }

    function setError(obj, str) {
        var _pdiv = obj.parents(".form-group");
        if (_pdiv.hasClass("has-success")) {
            _pdiv.removeClass("has-success");
        }
        _pdiv.addClass("has-error");
        obj.parent(".input-group").next("span.help-block").html(str);
    }
</script>
</body>
</html>
