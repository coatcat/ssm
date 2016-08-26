<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <title></title>
</head>
<body>
<form method="post">
    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="save"><a href="#" onclick="formSubmit('${ctx}/cargo/contract/insert.action','_self');this.blur();">保存</a></li>
                        <li id="back"><a href="#" onclick="formSubmit('${ctx}/cargo/contract/List.action','_self');this.blur();">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox" id="centerTextbox">

        <div class="textbox-header">
            <div class="textbox-inner-header">
                <div class="textbox-title">
                    添加购销合同
                </div>
            </div>
        </div>
        <div>


            <div>
                <table class="commonTable" cellspacing="1">
                    <tr>
                        <td class="columnTitle_mustbe">合同号：</td>
                        <td class="tableContent"><input type="text" name="contractNo"/></td>

                        <td class="columnTitle_mustbe">收购方：</td>
                        <td class="tableContent"><input type="text" name="offeror"/></td>

                    </tr>
                    <tr>
                        <td class="columnTitle_mustbe">客户名称：</td>
                        <td class="tableContent"><input type="text" name="customName"/></td>

                        <td class="columnTitle">交货日期：</td>
                        <td class="tableContent">
                            <input type="text" style="width:90px;" name="deliveryPeriod"
                                   onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
                        </td>

                    </tr>
                    <tr>
                        <td class="columnTitle_mustbe">制单人：</td>
                        <td class="tableContent"><input type="text" name="inputBy"/></td>

                        <td class="columnTitle">签单日期：</td>
                        <td class="tableContent">
                            <input type="text" style="width:90px;" name="signingDate"
                                   onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
                        </td>

                    </tr>
                    <tr>
                        <td class="columnTitle_mustbe">审单人：</td>
                        <td class="tableContent"><input type="text" name="checkBy"/></td>

                        <td class="columnTitle_mustbe">验货员：</td>
                        <td class="tableContent"><input type="text" name="inspector"/></td>

                    </tr>

                    <tr>
                        <textarea id="TextArea1" name="remark" cols="20" rows="2" class="ckeditor">基本说明</textarea>

                        <script type="text/javascript">CKEDITOR.replace('TextArea1');</script>
                    </tr>
                </table>
            </div>
        </div>



</form>
</body>
</html>

