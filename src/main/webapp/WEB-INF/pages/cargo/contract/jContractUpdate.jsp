<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
<form method="post">
    <input type="hidden" name="id" value="${obj.id}">
    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="save"><a href="#" onclick="formSubmit('${ctx}/cargo/contract/update.action','_self');this.blur();">保存</a></li>
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
                    修改购销合同
                </div>
            </div>
        </div>
        <div>


            <div>
                <table class="commonTable" cellspacing="1">
                    <tr>
                        <td class="columnTitle">合同号：</td>
                        <td class="tableContent"><input type="text" name="contractNo" value="${obj.contractNo}"/></td>

                        <td class="columnTitle">收购方：</td>
                        <td class="tableContent"><input type="text" name="offeror" value="${obj.offeror}"/></td>

                    </tr>
                    <tr>
                        <td class="columnTitle_mustbe">打印版实：</td>
                        <td class="tableContent"><input type="text" name="printStyle" value="${obj.printStyle}"/></td>

                        <td class="columnTitle_mustbe">客户名称：</td>
                        <td class="tableContent"><input type="text" name="customName" value="${obj.customName}"/></td>

                    </tr>
                    <tr>
                        <td class="columnTitle">签单日期：</td>
                        <td class="tableContent">
                            <input type="text" style="width:90px;" name="deliveryPeriod" value="<fmt:formatDate value="${obj.deliveryPeriod}" pattern="yyyy-MM-dd" />"
                                   onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
                        </td>

                        <td class="columnTitle_mustbe">制单人：</td>
                        <td class="tableContent"><input type="text" name="inputBy" value="${obj.inputBy}"/></td>

                    </tr>
                    <tr>
                        <td class="columnTitle_mustbe">审单人：</td>
                        <td class="tableContent"><input type="text" name="checkBy" value="${obj.checkBy}"/></td>

                        <td class="columnTitle_mustbe">验货员：</td>
                        <td class="tableContent"><input type="text" name="inspector" value="${obj.inspector}"/></td>

                    </tr>

                    <tr>
                         <td class="columnTitle">交货期限：</td>
                        <td class="tableContent">
                            <input type="text" style="width:90px;" name="deliveryPeriod" value="<fmt:formatDate value="${obj.deliveryPeriod}" pattern="yyyy-MM-dd" />"
                                   onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
                        </td>

                    </tr>
                </table>
            </div>
        </div>


</form>
</body>
</html>

