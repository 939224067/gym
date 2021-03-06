<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:url value="/" var="rootUrl" scope="application"></c:url>
<c:if test="${fn:contains(rootUrl,';jsession')}">
	<c:set value="${fn:split(rootUrl,';')[0] }" var="rootUrl"
		scope="application" />
</c:if>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>北京化工大学场馆预约</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<link rel="stylesheet" href="../css/bootstrap.min.css">-->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/phone.css">
    <link rel="stylesheet" type="text/css" href="../css/easyui.css">
    <link rel="stylesheet" type="text/css" href="http://www.w3cschool.cc/try/jeasyui/themes/icon.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="http://www.w3cschool.cc/try/jeasyui/jquery.easyui.min.js"></script>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>
<body style="width: 100%;height: 100%">
<style>
    body{
        background:url(../images/background.jpg) top left;
        background-size:100% 100%;
    }
</style>
<div class="container">
    <div class="row">
        <div class="log-box">
            <div id="logo" class="log">
                <a href="../index.jsp"><img src="../images/buct.jpg" class="img-responsive" /></a>
                <!--<a href="###">手机版</a>-->
                <!--<span >&nbsp;|&nbsp;</span>-->
                <!--<a href="###">意见反馈</a>-->
            </div>
        </div>
    </div>
    <div class="row">
        <div>
            <ul class="nav nav-tabs">
                <li><a href="../index.jsp">首页</a></li>
                <li><a href="stadium.jsp">场馆</a></li>
                <li class="active"><a href="#">场地预约</a></li>
                <li><a href="map.jsp">地图</a></li>
            </ul>
        </div>
    </div>
</div>
<div id="nav-main" style="overflow: auto;width: 100%"></div>
<br>
<div class="container">
    <div class="row">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2 id="section-1" class="panel-title">当前位置：场地预约</h2>
            </div>
                <div>
                    <label style="font-size: large">说明：</label>
                    <span class="label label-default">已过期</span>
                    <span class="label label-warning">已占用</span>
                    <span class="label label-success">可预约</span>
                    <span class="badge" id="tableInfo">图表可以上下左右滑动查看更多</span>
                </div>
                <!--<div class="row">-->
                        <table id="tt" class="easyui-datagrid" style="width:inherit;height:300px;" singleSelect="true" >
                            <thead frozen="true">
                            <tr>
                                <th field="itemid">时间\场地</th>
                            </tr>
                            </thead>
                            <thead>
                            <tr>
                                <th field="location0" align="center">篮球场0</th>
                                <th field="location1" align="center">篮球场1</th>
                                <th field="location2" align="center">篮球场2</th>
                                <th field="location3" align="center">篮球场3</th>
                                <th field="location4" align="center">篮球场4</th>
                                <th field="location5" align="center">篮球场5</th>
                                <th field="location6" align="center">篮球场6</th>
                                <th field="location7" align="center">篮球场7</th>
                                <th field="location8" align="center">篮球场8</th>
                            </tr>
                            </thead>
                            <tbody style="overflow: auto">
                            <tr style="text-align: center">
                                <td>06:00-08:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>08:00-10:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-success">可预约</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-success">可预约</span></td>
                            </tr>
                            <tr style="text-align: center">
                                <td>10:00-12:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-success">可预约</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-success">可预约</span></td>
                            </tr>
                            <tr style="text-align: center">
                                <td>12:00-14:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-success">可预约</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-success">可预约</span></td>
                            </tr>
                            <tr style="text-align: center">
                                <td>14:00-16:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>16:00-18:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>

                            </tr>
                            <tr style="text-align: center">
                                <td>18:00-20:00</td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-warning">已占用</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                                <td style="text-align: center"><span class="label label-default ">已过期</span></td>
                            </tr>
                            </tbody>
                        </table>
                <!--</div>-->
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-primary " style="width: 100%">
                            <span class="glyphicon">预约场地</span>
                        </button>
                    </div>
                </div>
        </div>
    </div>
</div>

<!--<div class="appointment">-->
<!--<button type="button" class="btn btn-primary " style="width: 100%">-->
<!--<span class="glyphicon">预约场地</span>-->
<!--</button>-->
<!--</div>-->
<!--页脚版权信息-->
<div>
    <footer>
        <button type="button" class="btn btn-primary " style="width: 100%">
            <span class="glyphicon">北京化工大学© 版权所有  &nbsp;&nbsp;主办部门:北京化工大学信息中心</span>
        </button>
    </footer>
</div>
<script type="text/javascript">
    var table = document.getElementById("tt");
    var rows = table.rows.length;
    var colums = table.columns.length;
    var tableInfo = document.getElementById("tableInfo");
    $(function () {
        if(rows < 3 || colums < 5){
            tableInfo.style.display="none"
        } else {
            tableInfo.style.display="inline"
        }
    });
</script>
</body>
</html>