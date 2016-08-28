<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="../../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript" src="${ctx}/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="${ctx}/script/jquery.js"></script>
    <script type="text/javascript"
            src="${ctx}/script/jquary.validate/jquery.validate.min.js"></script>
    <script type="text/javascript"
            src="${ctx}/script/jquary.validate/localization/messages_zh.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#userform").validate({
                rules: {
                    username: {
                        required: true,
                        minlength: 6,
                        maxlength: 10,
                        number: true
                    },
                    password: {
                        required: true,
                        minlength: 6,
                        maxlength: 10,
                        number: true
                    }
                },
                messages: {
                    username: {
                        required: "请填写您的用户名",
                        minlength: "请正确填写你的用户名,不能小于6位",
                        maxlength: "请正确填写你的用户名,不能大于10位",
                        number: "请填写数字"
                    },
                    password: {
                        required: "请填写你的密码",
                        minlength: "密码长度不得小于6位",
                        maxlength: "密码长度不得大于10位",
                        number: "请填写数字"
                    }
                }

            })
        })



    </script>
</head>
<body>
<form method="post" id="userform" enctype="multipart/form-data" action="${ctx}/basicinfo/user/insert.action">
    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="back"><a href="List.action">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox" id="centerTextbox">

        <div class="textbox-header">
            <div class="textbox-inner-header">
                <div class="textbox-title">
                    添加生产厂家信息
                </div>
            </div>
        </div>
        <div>

            <div>
                <table class="commonTable" cellspacing="1">
                    <tr>
                        <td class="columnTitle_mustbe">用户名：</td>
                        <td class="tableContent"><input type="text" name="username"/></td>
                    </tr>
                    <tr>
                        <td class="columnTitle_mustbe">密码：</td>
                        <td class="tableContent"><input type="text" name="password"/></td>
                    </tr>
                    <tr>
                        <td>上传头像</td>
                        <td class="tableContent"><input type="file" name="upload"></td>
                        <td>${message}</td>
                    </tr>
                    <tr>
                        <td>
                        <input type="submit" value="提交">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</form>
</body>
</html>

