<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
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
                    用户列表
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
                        <td class="tableHeader">用户名</td>
                        <td class="tableHeader">密码</td>
                        <td class="tableHeader">更新</td>
                        <td class="tableHeader">删除</td>
                        <td class="tableHeader">查看</td>
                    </tr>
                 </thead>
                    <tbody class="tableBody" >

                    <c:forEach items="${dataList}" var="o" varStatus="status">
                        <tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'" >
                            <td></td>
                            <td>${o.id}</td>
                            <td>${o.username}</td>
                            <td>${o.password}</td>
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

${pageLinks}
</body>
</html>

