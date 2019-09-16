<%--
  Created by IntelliJ IDEA.
  User: jishengnan
  Date: 2019-09-02
  Time: 08:39
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
<center>
    <div class="banner-box">
        <ul class="banner">
            <li><a href="javascript:;"> <img src="${pageContext.request.contextPath}/image/banner/a.jpg"> </a></li>
            <li><a href="javascript:;"> <img src="${pageContext.request.contextPath}/image/banner/b.jpg"> </a></li>
        </ul>
        <ul class="banner-dian">
            <li></li>
            <li></li>
        </ul>
        <div class="prev-banner"></div>
        <div class="next-banner"></div>
    </div>
</center>
<!--产品中心-->
<div class="product-box">
    <div class="titlie" data-scroll-reveal="enter top after 0.2s">
        <h2> 管理中心</h2>
        <h3> Management Center</h3>
    </div>
    <div class="cp-box" data-scroll-reveal="enter top">
        <ul class="cp-title">

            <li id="a1" class='cp-active'><a href="javascript:abc();">
                <div>查看数据</div>
            </a></li>

            <li id="a2"><a href="javascript:aa();">
                <div>机构管理</div>
            </a></li>

            <li id="a3"><a href="javascript:bb();">
                <div>用户管理</div>
            </a></li>

            <li id="a4"><a href="javascript:cc();">
                <div>预报数据</div>
            </a></li>

            <li id="a5"><a href="javascript:dd();">
                <div>上传数据</div>
            </a></li>

            <div class="clear"></div>
        </ul>
    </div>
</div>
<!--关于我们-->
<div class="about-box">
    <div class="about-title" data-scroll-reveal="enter top after 0.2s">
        <h2> 关于我们</h2>
        <h3> ABOUT US</h3>
    </div>
    <div class="about-left" data-scroll-reveal="enter left after 0.2s">
        <div class="about-img"><img src="${pageContext.request.contextPath}/image/other/b.png"></div>
    </div>
    <div class="about-right" data-scroll-reveal="enter right after 0.2s">
        <div style="height: 130px; overflow: hidden;">
            <h4>打造中国领先的白酒品牌----龙泉春</h4>
            <p>传播洞藏酒文化，打造全国第一的酒庄•洞藏酒文化的企业，通过酒文化带动城市旅游文化的建设，打造辽源市城市旅游对外宣传第一的窗口。</p>
        </div>
        <a href="javascript:;">查看更多详情</a></div>
    <div class="clear"></div>
</div>
<!--案例展示-->
<div class="case-bg">
    <div class="case-box">
        <div class="titlie" data-scroll-reveal="enter top after 0.2s">
            <h2>私人订制</h2>
            <h3>Personal tailor</h3>
        </div>
        <div class="case-list" id="case">
            <ul class="roll__list">
                <li><a href="javascript:;">
                    <div class="case-img"><img src="${pageContext.request.contextPath}/image/shop/a.png"></div>
                    <p> 洞藏大坛——喜宴</p>
                </a></li>
                <li><a href="javascript:;">
                    <div class="case-img"><img src="${pageContext.request.contextPath}/image/shop/b.png"></div>
                    <p> 洞藏大坛——升学宴</p>
                </a></li>
                <li><a href="javascript:;">
                    <div class="case-img"><img src="${pageContext.request.contextPath}/image/shop/c.png"></div>
                    <p> 洞藏大坛——女儿红</p>
                </a></li>
                <li><a href="javascript:;">
                    <div class="case-img"><img src="${pageContext.request.contextPath}/image/shop/d.png"></div>
                    <p> 洞藏大坛——贺寿</p>
                </a></li>

            </ul>
            <div class="case-al pre" data-scroll-reveal="enter left"></div>
            <div class="case-al next" data-scroll-reveal="enter right"></div>
        </div>
    </div>
</div>
<!--新闻资讯-->
<div class="news-box">
    <div class="titlie" data-scroll-reveal="enter top after 0.2s">
        <h2> 新闻资讯</h2>
        <h3> NEWS</h3>
    </div>
    <div class="news-left" data-scroll-reveal="enter left after 0.2s">
        <div class="news-img"><img src="${pageContext.request.contextPath}/image/new/a.jpg"/></div>
        <ul class="news-list">
            <li><a href="javascript:;">
                <div class="news-sj"><span> 09-02</span> <b> 2019</b></div>
                <div class="news-nr">
                    <h2>打造中国领先的白酒品牌----龙泉春 </h2>
                    <p> 传播洞藏酒文化，打造全国第一的酒庄•洞藏酒文化的企业，通过酒文化带动城市旅游文化的建设，打造辽源市城市旅游对外宣传第一的窗口。</p>
                </div>
            </a></li>

        </ul>
    </div>
    <div class="news-right" data-scroll-reveal="enter right after 0.2s">
        <ul class="news-list">
            <li><a href="javascript:;">
                <div class="news-sj"><span> 09-02</span> <b> 2019</b></div>
                <div class="news-nr">
                    <h2> 打造中国领先的白酒品牌----龙泉春</h2>
                    <p> 传播洞藏酒文化，打造全国第一的酒庄•洞藏酒文化的企业，通过酒文化带动城市旅游文化的建设，打造辽源市城市旅游对外宣传第一的窗口。</p>
                </div>
            </a></li>
            <li><a href="javascript:;">
                <div class="news-sj"><span> 09-02</span> <b> 2018</b></div>
                <div class="news-nr">
                    <h2> 前韩国总理李寿成参加龙抬头酒新闻发布会</h2>
                    <p> 在长春省宾馆举行的辽源龙泉酒业龙泉春·锁龙井典藏品鉴暨新产品发布会上，记者采访了韩国前总理李寿成先生。在短短的采访中，他对中国的友好和对辽源龙泉酒业发展的大力支持着实让人感动。</p>
                </div>
            </a></li>
            <li><a href="javascript:;">
                <div class="news-sj"><span> 02-17</span> <b> 2018</b></div>
                <div class="news-nr">
                    <h2> 辽源市委领导来到辽源龙泉酒庄洞藏来参观考察！</h2>
                    <p> 2016年2月17日，辽源市委宣传部刘部长及市委其他领导人员一同来到辽源龙泉酒庄洞藏来参观考察，辽源龙泉酒业洞藏负责人赵总及塔总陪同参观。</p>
                </div>
            </a></li>

        </ul>
    </div>
    <div class="clear"></div>
</div>
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
    function abc() {
        window.location.replace('www.baidu.com');
    }

    function aa() {
        var a = $("#aaaa").val();
        if (a == 1) {
            alert("欢迎您")
            window.location.replace('http://localhost:8080/jsps/cocktailparty/OrganizationalManagement.jsp');
        } else {
            alert("您没有权限")
        }
    }

    function bb() {
        var b = $("#aaaa").val();
        if (b == 1) {
            alert("欢迎您")
            window.location.replace('http://localhost:8080/jsps/cocktailparty/UserManagement.jsp');
        } else {
            alert("您没有权限访问")
        }
    }

    function cc() {
        var c = $("#aaaa").val();
        if (c == 1) {
            alert("您不需访问该功能")
        } else {
            alert("欢迎您")
            window.location.replace('http://localhost:8080/jsps/cocktailparty/ForecastData.jsp');
        }
    }

    function dd() {
        var d = $("#aaaa").val();
        if (d == 1) {
            alert("您不需访问该功能")
        } else {
            alert("欢迎您")
            window.location.replace('http://localhost:8080/jsps/cocktailparty/ReportingData.jsp');
        }
    }

    function ddd() {
        $("#a5").mouseleave(function () {
            window.location.reload()
        })
    }

    function ccc() {
        $("#a4").mouseleave(function () {
            window.location.reload()
        })
    }

    function bbb() {
        $("#a3").mouseleave(function () {
            window.location.reload()
        })
    }

    function aaa() {
        $("#a2").mouseleave(function () {
            window.location.reload()
        })
    }

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


    var setting = {
        view: {//配置显示视图
            showLine: true,//连接线是否显示
            showIcon: true,//图标是否显示
            selectedMulti: false//是否可以选中多个节点
        },
        data: {//设置显示数据
            simpleData: {
                enable: true,//使用简单类型
                idKey: "id",//结点唯一标示
                pIdKey: "parentId",//父节点的唯一标示
                rootPId: 0//根节点属性对应的值
            }
        },
        edit: {//可以编辑
            enable: true,
        },
        async: {
            enable: true,//异步加载
            url: "${pageContext.request.contextPath}/area/selarea",//访问路径
            autoParam: ["id", "name", "parentId"]//设置请求参数
        }
    };

    var newCount = 1;
    $(function () {
        intZtree();
    });

    function intZtree() {
        $.fn.zTree.init($("#treeDemo"), setting);
    }


</script>
