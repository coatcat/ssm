<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
    <title></title>
	<script type="text/javascript" src="${ctx}/js/datepicker/WdatePicker.js"></script>
</head>
<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('${ctx}/cargo/contract/print.action','_self');this.blur();">打印</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div>
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
出货表月统计
    </div> 
    </div>
    </div>

    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">请选择需要打印的月表日期：</td>
	            <td class="tableContent">
	            	<input type="text" style="width:90px;" name="inputDate" value="2016-08"
	            		 onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM'});"/>
	           	</td>
	        </tr>
		</table>
	</div>
</div>

 
</form>
</body>
</html>

