<%--
  Created by IntelliJ IDEA.
  User: jishengnan
  Date: 2019-08-28
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> <!-- Resource style -->
    <script src="${pageContext.request.contextPath}/js/modernizr.js"></script> <!-- Modernizr -->
</head>
<body>
<nav class="cd-side-navigation">
    <ul>
        <li>
            <a href="#" onclick="viewData()" data-menu="index">
                <svg class="nc-icon outline" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24px"
                     height="24px" viewBox="0 0 24 24">
                    <g transform="translate(0, 0)">
                        <polygon fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                                 stroke-miterlimit="10" points="12,2 3,10 3,23 9,23 9,16 15,16 15,23 21,23 21,10 "
                                 stroke-linejoin="miter"></polygon>
                    </g>
                </svg>
                查看数据
            </a>
        </li>

        <li>
            <a href="#" onclick="organizationalManagement()" class="selected" data-menu="contact">
                <svg class="nc-icon outline" xmlns="http://www.w3.org/2000/svg"
                     xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24px" height="24px"
                     viewBox="0 0 24 24">
                    <g transform="translate(0, 0)">
                        <polyline data-color="color-2" fill="none" stroke="#4a5261" stroke-width="2"
                                  stroke-linecap="square" stroke-miterlimit="10" points=" 19,7 12,14 5,7 "
                                  stroke-linejoin="miter"></polyline>
                        <rect x="1" y="3" fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" width="22" height="18" stroke-linejoin="miter"></rect>
                        <line data-color="color-2" fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" x1="7" y1="15" x2="5" y2="17" stroke-linejoin="miter"></line>
                        <line data-color="color-2" fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" x1="17" y1="15" x2="19" y2="17" stroke-linejoin="miter"></line>
                    </g>
                </svg>
                </svg>
                机构管理
            </a>
        </li>

        <li>
            <a href="#" onclick="userManagement()" data-menu="services">
                <svg class="nc-icon outline" xmlns="http://www.w3.org/2000/svg"
                     xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24px" height="24px"
                     viewBox="0 0 24 24">
                    <g transform="translate(0, 0)">
                        <polyline data-color="color-2" fill="none" stroke="#4a5261" stroke-width="2"
                                  stroke-linecap="square" stroke-miterlimit="10" points=" 16,7 16,2 8,2 8,7 "
                                  stroke-linejoin="miter"></polyline>
                        <rect x="1" y="7" fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" width="22" height="15" stroke-linejoin="miter"></rect>
                        <line fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" x1="5" y1="7" x2="5" y2="22" stroke-linejoin="miter"></line>
                        <line fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" x1="19" y1="7" x2="19" y2="22" stroke-linejoin="miter"></line>
                    </g>
                </svg>
                用户管理
            </a>
        </li>

        <li>
            <a href="#" onclick="forecastData()" data-menu="services">
                <svg class="nc-icon outline" xmlns="http://www.w3.org/2000/svg"
                     xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24px" height="24px"
                     viewBox="0 0 24 24">
                    <g transform="translate(0, 0)">
                        <polyline data-color="color-2" fill="none" stroke="#4a5261" stroke-width="2"
                                  stroke-linecap="square" stroke-miterlimit="10" points=" 16,7 16,2 8,2 8,7 "
                                  stroke-linejoin="miter"></polyline>
                        <rect x="1" y="7" fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" width="22" height="15" stroke-linejoin="miter"></rect>
                        <line fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" x1="5" y1="7" x2="5" y2="22" stroke-linejoin="miter"></line>
                        <line fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" x1="19" y1="7" x2="19" y2="22" stroke-linejoin="miter"></line>
                    </g>
                </svg>
                预报数据
            </a>
        </li>

        <li>
            <a href="#" onclick="reportingData()" data-menu="projects">
                <svg class="nc-icon outline" xmlns="http://www.w3.org/2000/svg"
                     xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24px" height="24px"
                     viewBox="0 0 24 24">
                    <g transform="translate(0, 0)">
                        <rect x="1" y="1" fill="none" stroke="#4a5261" stroke-width="2" stroke-linecap="square"
                              stroke-miterlimit="10" width="22" height="22" stroke-linejoin="miter"></rect>
                        <rect data-color="color-2" x="5" y="5" fill="none" stroke="#4a5261" stroke-width="2"
                              stroke-linecap="square" stroke-miterlimit="10" width="5" height="5"
                              stroke-linejoin="miter"></rect>
                        <rect data-color="color-2" x="14" y="5" fill="none" stroke="#4a5261" stroke-width="2"
                              stroke-linecap="square" stroke-miterlimit="10" width="5" height="5"
                              stroke-linejoin="miter"></rect>
                        <rect data-color="color-2" x="5" y="14" fill="none" stroke="#4a5261" stroke-width="2"
                              stroke-linecap="square" stroke-miterlimit="10" width="5" height="5"
                              stroke-linejoin="miter"></rect>
                        <rect data-color="color-2" x="14" y="14" fill="none" stroke="#4a5261" stroke-width="2"
                              stroke-linecap="square" stroke-miterlimit="10" width="5" height="5"
                              stroke-linejoin="miter"></rect>
                    </g>
                </svg>
                上报数据
            </a>
        </li>

    </ul>
</nav> <!-- .cd-side-navigation -->


<main class="cd-main">
    <section class="cd-section index visible">
        <header>
            <div class="container  col-sm-12 " style="padding: 0px;margin: 0px;">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="container-fluid">
                            <ul class="nav navbar-nav navbar-left">
                                <li><img src="${pageContext.request.contextPath}/image/header/logo.png"></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a>欢迎${user.usercode}</a></li>
                                <li><a href="${pageContext.request.contextPath}/user/loginout">退出</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </section> <!-- .cd-section -->
</main> <!-- .cd-main -->

<div id="cd-loading-bar" data-scale="1" class="contact"></div> <!-- lateral loading bar -->
<script src="${pageContext.request.contextPath}/js/velocity.min.js"></script>
<script src="${pageContext.request.contextPath}/common/jquery-3.2.1.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script> <!-- Resource jQuery -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript">
    function viewData() {
        window.location.replace("http://localhost:8080/jsps/cocktailparty/ViewData.jsp")
    }

    function userManagement() {
        window.location.replace("http://localhost:8080/jsps/cocktailparty/UserManagement.jsp")
    }

    function reportingData() {
        window.location.replace("http://localhost:8080/jsps/cocktailparty/ReportingData.jsp")
    }

    function organizationalManagement() {
        window.location.replace("http://localhost:8080/jsps/cocktailparty/OrganizationalManagement.jsp")
    }

    function forecastData() {
        window.location.replace("http://localhost:8080/jsps/cocktailparty/ForecastData.jsp")
    }

</script>
</body>
</html>
