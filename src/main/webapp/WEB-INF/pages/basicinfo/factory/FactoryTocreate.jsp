<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
<form method="post">
    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="save"><a href="#" onclick="formSubmit('insert.action','_self');">确定</a></li>
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
                        <td class="columnTitle_mustbe">厂家名：</td>
                        <td class="tableContent"><input type="text" name="f_name"/></td>

                        <td class="columnTitle_mustbe">联系人：</td>
                        <td class="tableContent"><input type="text" name="f_contacts"/></td>

                        <td class="columnTitle_mustbe">联系电话：</td>
                        <td class="tableContent"><input type="text" name="f_phone"/></td>

                        <td class="columnTitle_mustbe">创建人：</td>
                        <td class="tableContent"><input type="text" name="f_username"/></td>

                    </tr>
                </table>
            </div>
        </div>


</form>
</body>
</html>
