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
        padding: 0px;
    }

    #console {
        background: #ddd;
        padding: 10px;
        word-wrap: break-word;
    }
    #console1 {
        background: #ddd;
        padding: 0px;
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
            <h2>审批</h2>

  <form class="layui-form" action="${pageContext.request.contextPath}/addUf" method="post">
        <div class="layui-form-item" hidden>
            <label class="layui-form-label">用户Id</label>
            <div class="layui-input-block">
                <input id="userId" type="text" name="userId" lay-verify="title" autocomplete="off" placeholder="注意狗狗Id唯一" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">信誉等级：</label>
            <div class="layui-input-block">
                <select name="grade" lay-filter="aihao">
                    <option value="青铜">青铜</option>
                    <option value="白银" selected="">白银</option>
                    <option value="黄金">黄金</option>
                    <option value="铂金">铂金</option>
                    <option value="钻石">钻石</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">贷款额度：</label>
            <div class="layui-input-block">
                <select name="quota" lay-filter="aihao">
                    <option value="10000">10000</option>
                    <option value="20000" selected="">20000</option>
                    <option value="30000">30000</option>
                    <option value="40000">40000</option>
                    <option value="50000">50000</option>
                    <option value="60000">60000</option>
                    <option value="70000">70000</option>
                    <option value="80000">80000</option>
                    <option value="90000">90000</option>
                    <option value="100000">100000</option>


                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
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
            $("#userId").val(parent.userId);
        $.ajax({
            type:'post',
            url:'${pageContext.request.contextPath}/getUserAllById',
            resultType:'json',
            data:{
                id:parent.userId
            },
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
    });
</script>

</body>
</html>
