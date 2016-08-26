<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function setFactryName(val) {
            var ele=document.getElementById("factoryName")
            ele.value=val;
        }
    </script>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
</head>
<body>
<form name="icform" method="post">
    <input type="text" name="id" value="${obj.id}"/>
    <input type="text" id="contractId" name="contractId" value="${obj.contractId}"/><!-- 传递主表id -->

    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="update"><a href="#" onclick="formSubmit('${ctx}/cargo/contractproduct/update.action','_self');this.blur();">修改</a></li>
                        <li id="back"><a href="#" onclick="formSubmit('${ctx}/cargo/contract/List.action','_self');this.blur();">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div>
        <div class="textbox-header">
            <div class="textbox-inner-header">
                <div class="textbox-title">
                    修改货物信息
                </div>
            </div>
        </div>

        <div>
            <table class="commonTable" cellspacing="1">
                <tr>
                    <td class="columnTitle">货号：</td>
                    <td class="tableContent"><input type="text" name="productNo" value="${obj.productNo}"/></td>
                    <td class="columnTitle">生产厂家：</td>
                    <td class="tableContent">
                        <select name="factoryId" onchange="setFactryName(this.options[this.selectedIndex].text)">
                            <option value="">--请选择--</option>
                            <c:forEach items="${factoryList}" var="f">
                                <option value="${f.id}" <c:if test="${obj.factoryId==f_id}">selected</c:if>>${f.factoryName}</option>
                            </c:forEach>
                        </select>
                        <input type="text" name="factoryName" id="factoryName" value="${obj.factoryName}"/>
                    </td>
                </tr>
                <tr>
                    <td class="columnTitle">数量：</td>
                    <td class="tableContent"><input type="text" name="cnumber" value="${obj.cnumber}"/></td>
                    <td class="columnTitle">包装单位：</td>
                    <td class="tableContent"><input type="text" name="packingUnit" value="${obj.packingUnit}"/></td>
                </tr>
                <tr>
                    <td class="columnTitle">单价：</td>
                    <td class="tableContent"><input type="text" name="price" value="${obj.price}"/></td>
                </tr>
                <tr>
                    <td class="columnTitle">货物描述：</td>
                    <td class="tableContent" colspan="3"><textarea name="productDesc" id="TextArea1" style="height:100px;width:800px;">${obj.productDesc}</textarea></td>
                    <script type="text/javascript">CKEDITOR.replace('TextArea1');</script>
                </tr>
            </table>
        </div>
    </div>

</form>
</body>
</html>

