<%--
  Created by IntelliJ IDEA.
  User: jishengnan
  Date: 2019-08-28
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="multipart/form-data;harset=utf-8"/>
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
<input type="hidden" class="form-control" name="userid" id="userid" value="${user.id}">
<center>
    <h1>上报数据</h1>
    <br>
    <br>
    <br>
    <br>
    <h4>所有计划列表</h4>
    <table id="tab"></table>
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
                        <label for="truetable" class="col-sm-2 control-label">truetable</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="truetable" id="truetable">
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="newman" class="col-sm-2 control-label">newman</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="newman" id="newman">
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="oldman" class="col-sm-2 control-label">oldman</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="oldman" id="oldman">
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="purposeman" class="col-sm-2 control-label">purposeman</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="purposeman" id="purposeman">
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="predictedpremium" class="col-sm-2 control-label">predictedpremium</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="predictedpremium" id="predictedpremium">
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block"></span>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="truetime" class="col-sm-2 control-label">truetime</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="truetime" id="truetime">
                        </div>
                        <div class="col-sm-2">
                            <span class="help-block"></span>
                        </div>
                    </div>


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
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" role="form" enctype="multipart/form-data" method="post" id="pic" action="/plan/importpic">

                        picname:<input type="text" name="picname">
                        pic:<input type="file" name="multipartFile">
                    <input type="hidden" class="form-control" name="id" id="id">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="sc">
                    上传
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

</script>
<script type="text/javascript">
    $(function () {
        var userid = $("#userid").val()
        $("#tab").bootstrapTable({
            url: "${pageContext.request.contextPath}/plan/findplan",//请求路径
            pagination: true,//开启分页
            sidePagination: "client",//客户端分页
            pageNumber: 1,//起始行
            pageSize: 3,//每页几条数据
            pageList: [1, 2, 3],//下拉框
            cache: false,//关闭缓存
            search: true,//开启搜索
            strictSearch: true,//精确搜索
            showColumns: true,//显示列的下拉框
            showRefresh: true,//刷新
            queryParams: function (param) {//请求参数
                return {
                    userid: userid
                }
            }, columns: [
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
                    field: 'planname',
                    title: 'planname'
                },
                {
                    align: 'center',
                    field: 'plantable',
                    title: 'plantable',
                },
                {
                    align: 'center',
                    field: 'starttime',
                    title: 'starttime'
                }
                ,
                {
                    align: 'center',
                    field: 'endtime',
                    title: 'endtime'
                },
                {
                    align: 'center',
                    field: 'entrytime',
                    title: 'entrytime'
                },
                {
                    align: 'center',
                    formatter: function (value, row, index) {
                        return "<a href='javascript:changeplan(" + row.id + ")'>上传数据</a>"
                    }
                },
                {
                    align: 'center',
                    formatter: function (value, row, index) {
                        return "<a href='javascript:importpic(" + row.id + ")'>上传图像</a>"
                    }
                }
                // ,
                // {
                //     align: 'center',
                //     formatter: function (value, row, index) {
                //         return row.truetable/row.plantable*100+"%"
                //     }
                // }
            ]
        })
    })

    function importpic(id) {
        $("#myModal1").modal("show")
        $("#id").val(id);
    }

    function changeplan(id) {
        $("#myModal").modal("show")
        $("#q").click(function () {
            var truetable = $("#truetable").val()
            var newman = $("#newman").val()
            var oldman = $("#oldman").val()
            var purposeman = $("#purposeman").val()
            var predictedpremium = $("#predictedpremium").val()
            var truetime = $("#truetime").val()
            $.ajax({
                url:"${pageContext.request.contextPath}/plan/changeplan",
                type:"post",
                dataType:"json",
                data:{
                    id:id,
                    truetable:truetable,
                    newman:newman,
                    oldman:oldman,
                    purposeman:purposeman,
                    predictedpremium:predictedpremium,
                    truetime:truetime,
                },
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
            alert("添加成功")
        })
    }

    $(function () {
        //时间查询
        $("#truetime").datetimepicker({
            format: "yyyy-mm-dd hh:ii:ss",
            minView: 1,
            autoclose: true,
            todayBtn: true,
            language: 'zh-CN'
        })

    })

    $("#sc").click(function() {
        $("#pic").submit;
    })


</script>