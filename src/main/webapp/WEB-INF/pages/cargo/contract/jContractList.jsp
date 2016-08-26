<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>

<body>
<form name="icform" method="post">
    <input type="hidden" name="id" value="${obj.id}"/>
    <!-- 页面主体部分（列表等） -->
    <div class="textbox" id="centerTextbox">
        <div class="textbox-header">
            <div class="textbox-inner-header">
                <div class="textbox-title">
                    购销合同列表
                </div>
            </div>
        </div>

        <div>

            <div class="eXtremeTable" >
                <table id="ec_table" class="tableRegion" width="98%" >
                    <thead>
                    <tr>
                        <td class="tableHeader"></td>
                        <td class="tableHeader">ID</td>
                        <td class="tableHeader">合同号</td>
                        <td class="tableHeader">收购方</td>
                        <td class="tableHeader">基本说明</td>
                        <td class="tableHeader">客户名称</td>
                        <td class="tableHeader">签单日期</td>
                        <td class="tableHeader">制单人</td>
                        <td class="tableHeader">审单人</td>
                        <td class="tableHeader">验货员</td>
                        <td class="tableHeader">交货日期</td>
                        <td class="tableHeader">操作</td>

                        <td class="tableHeader">更新</td>
                        <td class="tableHeader">删除</td>
                        <td class="tableHeader">查看</td>
                    </tr>
                    </thead>
                    <tbody class="tableBody" >

                    <c:forEach items="${dataList}" var="o" varStatus="status">
                        <td class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'" >
                            <td>${o.id}</td>
                            <td>${o.contractNo}</td>
                            <td>${o.offeror}</td>
                            <td>${o.remark}</td>
                            <td>${o.customName}</td>
                            <td><fmt:formatDate value="${o.signingDate}" pattern="yyyy-MM-dd" /></td>
                            <td>${o.inputBy}</td>
                            <td>${o.checkBy}</td>
                            <td>${o.inspector}</td>
                            <td><fmt:formatDate value="${o.deliveryPeriod}" pattern="yyyy-MM-dd" /></td>
                            <td><a href="${ctx}/cargo/contractproduct/tocreate.action?contractId=${o.id}">[货物]</a></td>
                            <td><a href="toupdate.action?id=${o.id}">更新</a></td>
                            <td><a href="deleteById.action?id=${o.id}">删除</a></td>
                            <td><a href="toview.action?id=${o.id}">查看</a></td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>

        </div>


</form>
</body>
</html>

