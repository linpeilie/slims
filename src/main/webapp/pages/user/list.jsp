<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@include file="../common/base.jsp" %>--%>
<%--<table class="table table-celled table-definition">--%>
    <%--<thead>--%>
        <%--<tr>--%>
            <%--<th>用户名</th>--%>
            <%--<th>手机号</th>--%>
            <%--<th>邮箱</th>--%>
            <%--<th>密码</th>--%>
            <%--<th>状态</th>--%>
        <%--</tr>--%>
    <%--</thead>--%>
    <%--<tbody>--%>
    <%--<c:forEach items="${list}" var="user">--%>
        <%--<tr>--%>
            <%--<td>${user.userName}</td>--%>
            <%--<td>${user.tel}</td>--%>
            <%--<td>${user.email}</td>--%>
            <%--<td>${user.password}</td>--%>
            <%--<td>${user.state}</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
    <%--</tbody>--%>
<%--</table>--%>

<link rel="stylesheet" type="text/css" href="<c:url value='/static/easyui/themes/insdep/easyui.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/easyui/themes/insdep/easyui_animation.css'/> "/>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/easyui/themes/insdep/easyui_plus.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/easyui/themes/insdep/insdep_theme_default.css'/> "/>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/easyui/themes/insdep/icon.css'/>"/>

<script type="text/javascript" src="<c:url value='/static/easyui/jquery.min.js'/>"/>
<script type="text/javascript" src="<c:url value='/static/easyui/jquery.easyui.min.js'/>"/>
<script type="text/javascript" src="<c:url value='/static/easyui/themes/insdep/jquery.insdep-extend.min.js'/>"/>

<body>
<div class="easyui-layout" style="width:700px;height:350px;">
    <div data-options="region:'north'" style="height:50px"></div>
    <div data-options="region:'south',split:true" style="height:50px;"></div>
    <div data-options="region:'east',split:true" title="East" style="width:180px;">
        <ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true,dnd:true"></ul>
    </div>
    <div data-options="region:'west',split:true" title="West" style="width:100px;">
        <div class="easyui-accordion" data-options="fit:true,border:false">
            <div title="Title1" style="padding:10px;">
                content1
            </div>
            <div title="Title2" data-options="selected:true" style="padding:10px;">
                content2
            </div>
            <div title="Title3" style="padding:10px">
                content3
            </div>
        </div>
    </div>
    <div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
        <div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
            <div title="About" data-options="href:'_content.html'" style="padding:10px"></div>
            <div title="DataGrid" style="padding:5px">
                <table class="easyui-datagrid"
                       data-options="url:'datagrid_data1.json',method:'get',singleSelect:true,fit:true,fitColumns:true">
                    <thead>
                    <tr>
                        <th data-options="field:'itemid'" width="80">Item ID</th>
                        <th data-options="field:'productid'" width="100">Product ID</th>
                        <th data-options="field:'listprice',align:'right'" width="80">List Price</th>
                        <th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
                        <th data-options="field:'attr1'" width="150">Attribute</th>
                        <th data-options="field:'status',align:'center'" width="50">Status</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
</body>