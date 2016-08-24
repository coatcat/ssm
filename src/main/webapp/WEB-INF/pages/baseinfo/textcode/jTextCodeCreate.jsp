<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
<form method="post">
	<input type="hidden" name="state" value="1"/><!-- 默认值,不进行设置model会自动被设置为Null -->

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('insert.action','_self');">确定</a></li>
<li id="back"><a href="list.action">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div class="textbox" id="centerTextbox">
    
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
       	新建代码内容信息
    </div> 
    </div>
    </div>
<div>
 
 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle_mustbe">分类：</td>
	            <td class="tableContent">
					<select name="classCode.id">
						<option value="">--请选择--</option>
						<c:forEach items="${classCodeList}" var="dList">
						<option value="${dList.id}">${dList.name}</option>
						</c:forEach>
					</select>
				</td>
	        </tr>
	        <tr>
	            <td class="columnTitle_mustbe">名称：</td>
	            <td class="tableContent"><input type="text" name="name"/></td>
	        </tr>
		</table>
	</div>
</div>
 
 
</form>
</body>
</html>

