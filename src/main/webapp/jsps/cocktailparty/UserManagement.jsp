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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/zTree/css/demo.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/zTree/css/zTreeStyle/zTreeStyle.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/guod.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/table/bootstrap-table.css">
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
            <li class=""><a href="${pageContext.request.contextPath}/jsps/cocktailparty/cocktailparty.jsp">返回首页</a></li>
            <li class=""><a href="${pageContext.request.contextPath}/user/loginout">退出</a></li>
            <div class="clear"></div>
        </ul>
        <div class="clear"></div>
    </div>
</div>

<div class="container">
    <center><h1>用户管理</h1></center>
    <div class="row">
        <div class="col-md-12" style="background-color: pink;box-shadow:
         inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <center><font color="white">用户管理</font></center>
        </div>
        <div class="col-md-3" style="background-color: white;">
            <div class="content_wrap">
                <div class="zTreeDemoBackground left">
                    <ul id="treeDemo" class="ztree"></ul>
                </div>
            </div>
        </div>
        <div class="col-md-9" style="background-color: white;">
            <ul class="cp-title">
                <li id="a1" class='cp-active'><a href="javascript:;">
                    <div>add</div>
                </a></li>
                <div class="clear"></div>
            </ul>
            <br>
            <br>
            <br>
            <table id="tab">
            </table>
        </div>
    </div>
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" role="form" id="formId">


                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">username</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="username" id="username">
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block" ></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="usercode" class="col-sm-2 control-label">usercode</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="usercode" id="usercode" >
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block" ></span>
                        </div>
                    </div>

                    <input type="hidden" class="form-control" id="HBid" name="HBid" >

                    <div class="form-group">
                        <label for="level" class="col-sm-2 control-label">level</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="level" id="level">
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block" ></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">password</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="password" id="password">
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block" ></span>
                        </div>
                    </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             [
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="q">
                    注册
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
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
        }, callback: {
            onClick: zTreeOnClick,//点击事件
        }
    };

    var newCount = 1;
    $(function () {
        intZtree();
    });

    function intZtree() {
        $.fn.zTree.init($("#treeDemo"), setting);
    }
    function zTreeOnClick(event, treeId, treeNode) {
        $("#tab").show();
        var id = treeNode.id;
        $("#HBid").val(id);
        $("#tab").bootstrapTable("destroy")
        $("#tab").bootstrapTable({
            url: "${pageContext.request.contextPath}/user/findareauser",//请求路径
            pagination:true,//开启分页
            sidePagination:"client",//客户端分页
            pageNumber:1,//起始行
            pageSize:3,//每页几条数据
            pageList:[1,2,3],//下拉框
            cache:false,//关闭缓存
            search:true,//开启搜索
            strictSearch:true,//精确搜索
            showColumns:true,//显示列的下拉框
            showRefresh:true,//刷新
            striped: true,//斑马线
            queryParams: function (param) {//请求参数
                return {
                    id: treeNode.id,
                }
            },
            columns: [
                {
                    align: 'center',
                    field: 'id',
                    title: 'id',
                    formatter: function (value, row, index) {
                        return index + 1;
                    }
                },
                {
                    align: 'center',
                    field: 'usercode',
                    title: 'usercode'
                },
                {
                    align: 'center',
                    field: 'username',
                    title: 'username',
                },
                {
                    align: 'center',
                    field: 'level',
                    title: 'level'
                }
            ]
        })
    }
    $("#a1").click(function () {
        var ass =$("#HBid").val();
        if (ass == "") {
            alert("请选择省市县")
        }else{
            $("#myModal").modal("show");

            $("#q").click(function () {
                var data = new FormData($("#formId")[0]);
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/adduser",
                    type:"post",
                    dataType:"json",
                    data:data,
                    contentType:false,
                    processData:false,
                    success:function(data) {
                        if (data) {
                            alert("成功")
                            $("#myModal").modal('hide');
                            window.location.reload()
                        }else {
                            alert("失败")
                        }
                    }
                });
            })
        }
    })
</script>
