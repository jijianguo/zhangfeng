<%--
  Created by IntelliJ IDEA.
  User: jishengnan
  Date: 2019-09-04
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="author" content="order by sucaihuo.com/"/>
    <title>辽源龙泉春酒会管理系统</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/guod.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jiaj.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ft-carousel.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/rollslide.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/scrollreveal.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.excheck.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/zTree/js/jquery.ztree.exedit.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/table/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/table/locale/bootstrap-table-zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/js/html5shiv.min.js"></script>
    <style>
        .divcss5{ width:100%; height:400px}
        .divcss4{ width:100%; margin-top:200px}
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
            <li class=""><a href="${pageContext.request.contextPath}/user/loginout">退出</a></li>
            <div class="clear"></div>
        </ul>
        <div class="clear"></div>
    </div>

</div>
<!--banner-->
<div class="divcss5">
    <center class="divcss4">
        添加失败，<span id="jumpTo">5</span>秒后自动跳转到首页页面
    </center>
</div>

<script type="text/javascript">
    $(function () {
        countDown(5,'http://localhost:8080/jsps/cocktailparty/cocktailparty.jsp');
    })
</script>
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

    function countDown(secs,surl){
        // alert(surl);
        var jumpTo = document.getElementById('jumpTo');
        jumpTo.innerHTML=secs;
        if(--secs>0){
            setTimeout("countDown("+secs+",'"+surl+"')",1000);
        }
        else{
            location.href=surl;
        }
    }
</script>

