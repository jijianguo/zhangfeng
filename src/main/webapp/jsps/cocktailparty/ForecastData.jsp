<%--
  Created by IntelliJ IDEA.
  User: jishengnan
  Date: 2019-08-28
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="author" content="order by sucaihuo.com/"/>
    <title>辽源龙泉春酒会管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/zTree/css/demo.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/zTree/css/zTreeStyle/zTreeStyle.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/guod.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/table/bootstrap-table.css">
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/datepicker/css/bootstrap-datetimepicker.css"
          rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jiaj.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ft-carousel.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/rollslide.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/scrollreveal.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/common/bcys.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.excheck.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.exedit.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/table/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/table/locale/bootstrap-table-zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/js/html5shiv.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/datepicker/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/datepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/datepicker/js/dataFormater.js"></script>
    <style>
        .titlep {
            margin: 50px auto;
            line-height: 30px;
            font-size: 27px;
            font-weight: bolder;
            text-align: center;
        }

        #registerUser input {
            height: 50px;
            line-height: 50px;
            width: 330px;
        }

        #registerUser label {
            font-size: 14px;
            line-height: 50px;
        }

        #registerUser .fsyzm {
            height: 50px;
            margin-left: 10px;
            cursor: pointer;
            border: 1px solid #ddd;
            background: #eee;
            color: #333;
            font-size: 12px;
            border-radius: 3px;
            width: 120px;
        }

        #registerUser .form-group {
            margin-bottom: 0px;
        }

        #registerUser .tongyi a {
            color: #06c;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="hade-bg">
    <div class="hade-box">
        <div class="head-logo" data-scroll-reveal="enter left after 0.2s">
            <img src="${pageContext.request.contextPath}/image/header/logo.png">
        </div>
        <input type="hidden" id="aaaa" value="${user.level}">
        <ul class="nva-list" data-scroll-reveal="enter right after 0.2s">
            <li class="nva-active"><a href="javascript:;">欢迎${user.username}</a></li>
            <li class=""><a href="${pageContext.request.contextPath}/jsps/cocktailparty/cocktailparty.jsp">返回首页</a></li>
            <li class=""><a href="${pageContext.request.contextPath}/user/loginout">退出</a></li>
            <div class="clear"></div>
        </ul>
        <div class="clear"></div>
    </div>
</div>

<center>
    <H1>预报数据</H1>
</center>
<form class="form-horizontal " id="plan" action="${pageContext.request.contextPath}/plan/addplan">
    <center>
        <p class="titlep">上传计划</p>
    </center>
    <div class="form-group">
        <label for="planname" class="col-sm-5 control-label">计划名称：</label>
        <div class="col-sm-4">
            <input type="text" id="planname" class="form-control" name="planname">
            <span class="help-block">&nbsp;</span>
        </div>
    </div>
    <div class="form-group">
        <label for="plantable" class="col-sm-5 control-label">计划召开桌数：</label>
        <div class="col-sm-4">
            <input type="text" id="plantable" class="form-control" name="plantable">
            <span class="help-block">&nbsp;</span>
        </div>
    </div>
    <input type="hidden" class="form-control" name="hbid" id="hbid" value="${user.HBid}">
    <input type="hidden" class="form-control" name="userid" id="userid" value="${user.id}">
    <div class="form-group">
        <label for="starttime" class="col-sm-5 control-label">开始时间：</label>
        <div class="col-sm-4">
            <input type="date" class="form-control" name="starttime" id="starttime">
            <span class="help-block">&nbsp;</span>
        </div>
    </div>
    <div class="form-group">
        <label for="endtime" class="col-sm-5 control-label">结束时间：</label>
        <div class="col-sm-4">
            <input type="date" class="form-control" name="endtime" id="endtime">
            <span class="help-block">&nbsp;</span>
        </div>
    </div>
</form>
<br>
<br>
<center>
    <input type="button" id="tj" class="btn btn-lg btn-primary"
           style="width: 120px;" value="提&nbsp;&nbsp;交"></input>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" id="qx" class="btn btn-lg btn-primary"
           style="width: 120px;" value="取&nbsp;&nbsp;消"></input>
</center>

<!--底部-->
<div class="foot-bg">
    <div class="foot-box">
        <div class="foot-left">
            <ul class="foot-nva">
                <li><a href="http://localhost:8080/jsps/login.jsp">网站首页</a></li>
                <div class="clear"></div>
            </ul>
            <dl class="foot-lx">
                <dd>电话：XXXX-XXXXXXX</dd>
                <dd>手机：17614379132</dd>
                <dd>电子邮箱：<a href="javascript:;" class="__cf_email__">541787997@qq.com</a>
                </dd>
            </dl>
            <dl class="foot-lx">
                <dd>学校：北京工商管理专修学院</dd>
                <dd>地址：南口镇水厂路21号</dd>
            </dl>
            <dl class="foot-lx">
                <dd>备案号：XXXXXXXXX</dd>
            </dl>
        </div>
        <div class="foot-img"><img src="${pageContext.request.contextPath}/image/other/a.png">
            <p>冀晟楠的微信收付款码</p>
        </div>
        <div class="clear"></div>
        <div class="foot">
            <p>http://localhost:8080/jsps/login.jsp</p>
            <span>详细咨询：<a href="javascript:;">数据云学院1806A冀晟楠</a></span></div>
    </div>
</div>
<script data-cfasync="false" src="${pageContext.request.contextPath}/js/email-decode.min.js"></script>
<script type="text/javascript" src="https://idm-su.baidu.com/su.js"></script>
</body>
<script>
    if ($(".carousel-item").length >= 2) {
        $("#carousel").FtCarousel({
            index: 0,
            auto: true, //自动播放
            time: 4000,
            indicators: false,
            buttons: true
        });
        $(".btn-box").hide();
    }
    ;
    $(".case-al").hide();
    if ($(".case-list ul li").length >= 4) {
        $('#case').rollSlide({
            orientation: 'left', //方向
            num: 1,
            v: 1000, //滚动速度
            space: 2000, //间隔时间
            isRoll: true//是否自动
        });
        $(".case-al").show();
    }
    ;
    (function () {
        window.scrollReveal = new scrollReveal({reset: true, move: '50px'});
    })();

</script>
<script type="text/javascript">
    $("#qx").click(function () {
        window.location.reload()
    })
    $(function () {
        //时间查询
        $("#starttime").datetimepicker({
            format: "yyyy-mm-dd hh:ii:ss",
            minView: 1,
            autoclose: true,
            todayBtn: true,
            language: 'zh-CN'
        })
        $("#endtime").datetimepicker({
            format: "yyyy-mm-dd hh:ii:ss",
            minView: 1,
            autoclose: true,
            todayBtn: true,
            language: 'zh-CN'
        })


        $("#tj").click(function () {
            if(verifyForm()){
                $("#plan").submit();
                alert("添加成功")
            }else{
                alert("添加失败");
            }
        })
    })

    function size_nav(form, number) {
        form.pageSize.value = number;
        form.submit();
    }

    function page_nav(form, number) {
        var size = $("#changeSize").val();
        form.pageSize.value = size;
        form.pageNum.value = number;
        form.submit();
    }


    $("#planname").blur(function () {
        var planname = $(this).val();
        if (planname != "") {
            setOk($(this));
        } else {
            setError($(this), "此项不能为空！");
        }
    });
    $("#plantable").blur(function () {
        var plantable = $(this).val();
        if (plantable != "") {
            setOk($(this));
        } else {
            setError($(this), "此项不能为空！");
        }
    });
    var endtime = $("#endtime").val()
    $("#starttime").blur(function () {
        var starttime = $(this).val();
        if (starttime != "") {
            setOk($(this));
        } else {
            setError($(this), "此项不能为空！");
        }
    });
    $("#endtime").blur(function () {
        var endtime = $(this).val();
        if (endtime != "") {
            setOk($(this));
        } else {
            setError($(this), "此项不能为空！");
        }
    });


    function verifyForm() {
        var flag=true;
        $("#plan .form-group").each(function(){
            if(!$(this).hasClass("has-success")){
                flag=false;
                return;
            }
        });
        return flag;
    }
</script>