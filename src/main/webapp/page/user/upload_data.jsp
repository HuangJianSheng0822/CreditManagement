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
    <title>资料上传</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
</head>
<body>

<div class="layuimini-container">
    <div class="layuimini-main">

        <form class="layui-form" action="${pageContext.request.contextPath}/addFee" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="userName" required autocomplete="off" placeholder="姓名" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block">
                    <input type="radio" name="userSex" value="男" title="男" checked="">
                    <input type="radio" name="userSex" value="女" title="女">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">身份证号</label>
                <div class="layui-input-block">
                    <input type="text" required name="userCard"  autocomplete="off" placeholder="身份证号" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">地址</label>
                <div class="layui-input-block">
                    <input type="text" name="userAddress" required autocomplete="off" placeholder="地址" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">个人联系电话</label>
                <div class="layui-input-block">
                    <input type="text" name="userNumber"  required autocomplete="off" placeholder="个人联系电话" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">住宅号码</label>
                <div class="layui-input-block">
                    <input type="text" name="userAn" required autocomplete="off" placeholder="住宅号码" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">年龄</label>
                <div class="layui-input-block">
                    <input type="text" name="userAge" required autocomplete="off" placeholder="年龄" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">婚姻情况</label>
                <div class="layui-input-block">
                    <input type="radio" name="userMarriage" value="已婚" title="已婚" checked="">
                    <input type="radio" name="userMarriage" value="未婚" title="未婚">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">职业</label>
                <div class="layui-input-block">
                    <input type="text" name="userOccupation"  autocomplete="off" placeholder="职业" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">职称</label>
                <div class="layui-input-block">
                    <input type="text" name="userTitle" required autocomplete="off" placeholder="职称" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">学历</label>
                <div class="layui-input-block">
                    <input type="text" name="userEducation" required autocomplete="off" placeholder="学历" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">供养人口</label>
                <div class="layui-input-block">
                    <input type="text" name="userSupportingPopulation"  autocomplete="off" required placeholder="供养人口" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">现单位工作时间</label>
                <div class="layui-input-block">
                    <input type="text" name="userWorkingHours"  required autocomplete="off" placeholder="现单位工作时间" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">年收入</label>
                <div class="layui-input-block">
                    <input type="text" name="userAnnualIncome" required autocomplete="off" placeholder="年收入" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">房产情况</label>
                <div class="layui-input-block">
                    <input type="text" name="house" required autocomplete="off" placeholder="房产情况" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">车辆情况</label>
                <div class="layui-input-block">
                    <input type="radio" name="car" value="无车" title="无车" checked="">
                    <input type="radio" name="car" value="有车" title="有车">
                </div>
            </div>
            <div class="layui-form-item">
            <label class="layui-form-label">股票情况</label>
            <div class="layui-input-block">
                <input type="text" name="shares"  required autocomplete="off" placeholder="没有填“无”" class="layui-input">
            </div>
        </div>
            <div class="layui-form-item">
                <label class="layui-form-label">债券情况</label>
                <div class="layui-input-block">
                    <input type="text" name="bond" required  autocomplete="off" placeholder="没有填“无”" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
            <label class="layui-form-label">个人信誉</label>
                <div class="layui-input-block">
                    <input type="radio" name="reputation" value="好" title="好" checked="">
                    <input type="radio" name="reputation" value="中" title="中">
                    <input type="radio" name="reputation" value="差" title="差">

                </div>
        </div>
            <div class="layui-form-item">
            <label class="layui-form-label">有无违法记录</label>
            <div class="layui-input-block">
                <input type="text" name="illegal"  autocomplete="off" placeholder="没有填“无”" class="layui-input">
            </div>
        </div>
            <div class="layui-form-item">
            <label class="layui-form-label">是否为被告</label>
                <div class="layui-input-block">
                    <input type="radio" name="defendant" value="是" title="是" >
                    <input type="radio" name="defendant" value="否" title="否" checked="">


                </div>
        </div>
            <div class="layui-form-item">
            <label class="layui-form-label">有无恶意拖欠到期债务</label>
                <div class="layui-input-block">
                    <input type="radio" name="default1" value="是" title="是" >
                    <input type="radio" name="default1" value="否" title="否" checked="">
                </div>
        </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="demo1">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="${pageContext.request.contextPath}/lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

        //监听提交
        form.on('submit(demo1)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return true;
        });
    });
</script>

</body>
</html>
