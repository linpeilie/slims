<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Slims</title>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <link rel="stylesheet" href="${ctx}/static/bower_components/bootstrap/dist/css/bootstrap.min.css ">
    <link rel="stylesheet" href="${ctx}/static/bower_components/font-awesome/css/font-awesome.css">

    <link rel="stylesheet" href="${ctx}/static/bower_components/Ionicons/css/ionicons.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${ctx}/static/dist/css/AdminLTE.css">
    <link rel="stylesheet" href="${ctx}/static/dist/css/skins/_all-skins.css">

    <link rel="stylesheet" href="${ctx}/static/css/slims.css"/>

    <script type="text/javascript" src="${ctx}/static/bower_components/jquery/dist/jquery.js"></script>
    <script type="text/javascript"
            src="${ctx}/static/bower_components/bootstrap/dist/js/bootstrap.js"></script>

</head>
<!--
skin-black中的black修改的是标题的颜色 skin-black--字体黑，皮肤白
指定第二个颜色的时候会改变侧边栏颜色
如：skin-black-light 第二个颜色表示侧边栏为亮色
---------------------------------------------------------------------
fixed只是为了固定导航栏
sedebar-collapse 让侧边栏默认是隐藏状态
sidebar-mini 让侧栏边和左侧导航栏一起折叠
-->
<body class="hold-transition skin-black fixed sidebar-mini">
<div class="wrapper">
    <!--顶部导航栏-->
    <%@include file="header.jsp" %>

    <!--左侧菜单栏-->
    <%@include file="menu.jsp" %>

    <!--中间内容-->
    <div class="content-wrapper" id="content">
        <!-- Main content -->
        <section id="page" class="content container-fluid">
        </section>
    </div>

    <!--底部标注-->
    <%@include file="foot.jsp" %>

    <!--右侧菜单栏-->
    <%@include file="setting.jsp" %>


</div>
</body>
<script src="${ctx}/static/bower_components/fastclick/lib/fastclick.js"></script>
<script src="${ctx}/static/bower_components/jquery-slimscroll/jquery.slimscroll.js"></script>
<script type="text/javascript" src="${ctx}/static/js/slims.js"></script>
<script type="text/javascript" src="${ctx}/static/dist/js/adminlte.js"></script>
<script type="text/javascript" src="${ctx}/static/dist/js/demo.js"></script>

