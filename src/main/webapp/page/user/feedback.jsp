<%--
  Created by IntelliJ IDEA.
  User: 32551
  Date: 2022/7/9
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>回馈</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
</head>
<style>
    body {
        background: #f7f7f7;
        font-family: Helvetica, Verdana, Arial;
    }

    #container,#container1 {

        background: white;
        margin: 20px auto;
        padding: 20px;
    }

    #console,#console1 {
        background: #ddd;
        padding: 10px;
        word-wrap: break-word;
    }
</style>
<body>

<div class="layuimini-container">
    <div class="layuimini-main">
        <div id="container">
            <h2>申请信息</h2>
            <pre id="console">
                <p><span>姓名：</span> <span id="userName">无</span> </p>
                <p><span>性别：</span> <span id="userSex">无</span> </p>
                <p><span>身份证号：</span> <span id="userCard">无</span> </p>
                <p><span>地址：</span> <span id="userAddress">无</span> </p>
                <p><span>个人联系电话：</span> <span id="userNumber">无</span> </p>
                <p><span>住宅号码：</span> <span id="userAn">无</span> </p>
                <p><span>年龄：</span> <span id="userAge">无</span> </p>
                <p><span>婚姻情况：</span> <span id="userMarriage">无</span> </p>
                <p><span>职业：</span> <span id="userOccupation">无</span> </p>
                <p><span>职称：</span> <span id="userTitle">无</span> </p>
                <p><span>学历：</span> <span id="userEducation">无</span> </p>
                <p><span>供养人口：</span> <span id="userSupportingPopulation">无</span> </p>
                <p><span>现单位工作时间：</span> <span id="userWorkingHours">无</span> </p>
                <p><span>年收入：</span> <span id="userAnnualIncome">无</span> </p>
                <p><span>房产情况：</span> <span id="house">无</span> </p>
                <p><span>车辆情况：</span> <span id="car">无</span> </p>
                <p><span>股票情况：</span> <span id="shares">无</span> </p>
                <p><span>债券情况：</span> <span id="bond">无</span> </p>
                <p><span>个人信誉：</span> <span id="reputation">无</span> </p>
                <p><span>有无违法记录：</span> <span id="illegal">无</span> </p>
                <p><span>是否为被告：</span> <span id="defendant">无</span> </p>
                <p><span>有无恶意拖欠到期债务：</span > <span id="default1">无</span> </p>
            </pre>
        </div>

        <div id="container1">
            <h2>申请状态</h2>
            <pre id="console1">
                <p><span>信誉等级：</span> <span id="grade">无</span> </p>
                <p><span>贷款额度：</span> <span id="quota">无</span> </p>
            </pre>
        </div>

    </div>
</div>

<script src="${pageContext.request.contextPath}/lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<script>
    layui.use(['jquery','form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate
            ,$ = layui.jquery;
        $.ajax({
            type:'post',
            url:'${pageContext.request.contextPath}/getUserAllById',
            data:{
                id:"no"
            },
            resultType:'json',
            success:function (data) {
                $("#userName").html(data.userName);
                $("#userSex").html(data.userSex);
                $("#userCard").html(data.userCard);
                $("#userAddress").html(data.userAddress);
                $("#userNumber").html(data.userNumber);
                $("#userAn").html(data.userAn);

                $("#reputation").text(data.reputation);
                $("#illegal").text(data.illegal);
                $("#defendant").text(data.defendant);
                $("#default1").text(data.default1);


                $("#house").text(data.house);
                $("#car").text(data.car);
                $("#shares").text(data.shares);
                $("#bond").text(data.bond);


                $("#userAge").text(data.userAge);
                $("#userMarriage").text(data.userMarriage);
                $("#userOccupation").text(data.userOccupation);
                $("#userTitle").text(data.userTitle);
                $("#userEducation").text(data.userEducation);
                $("#userSupportingPopulation").text(data.userSupportingPopulation);
                $("#userWorkingHours").text(data.userWorkingHours);
                $("#userAnnualIncome").text(data.userAnnualIncome);
            }
        })
        $.ajax({
            type:'post',
            url:'${pageContext.request.contextPath}/getUf',
            data:{
                id:"no"
            },
            resultType:'json',
            success:function (data) {
                $("#grade").html(data.grade);
                $("#quota").html(data.quota);

            }
        })

    });
</script>

</body>
</html>
