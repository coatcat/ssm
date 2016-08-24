<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
 
<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="view"><a href="#" onclick="formSubmit('${ctx}/cargo/contract/toview.action','_self');this.blur();">查看</a></li>
<li id="print"><a href="#" onclick="formSubmit('${ctx}/cargo/contract/print.action','_self');this.blur();">打印</a></li>
<li id="new"><a href="#" onclick="formSubmit('contractsave.action','_self');this.blur();">报运</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div class="textbox" id="centerTextbox">
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
购销合同列表
    </div> 
    </div>
    </div>
</div>

<span class="noprint">
<div id="find_div" style="width:98%;">
<fieldset>
<legend><font color="000">查询条件&nbsp;</font></legend>
<div style="width:98%;padding-top:7px;text-align:left;">
 
类型：
<select name="f_type" style="width:130px;heigh:30px;">
${comboContentStr}
</select>
 
内容：	            	
<input type="text" name="f_conditionStr" value="${f_conditionStr}" size="30"
	onFocus="this.select();"
	onKeyDown="javascript:if(event.keyCode==13){ document.getElementById('btnFind').onclick(); }"
/>
 
<input id="btnFind" type="button" name="btnFind" value="查询" onclick="formSubmit('list.action','_self');this.blur();">
<input type="button" name="btnReset" value="清空" onclick="findReset();this.blur();">
 
</div>
</fieldset>
</div>
</span>
    
<div>


	<div class="eXtremeTable" >
	<table id="ec_table"  border="0"  cellspacing="0"  cellpadding="0"  class="tableRegion"  width="98%" >
		<thead>
		<tr>
			<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('id',this)"></td>
			<td class="tableHeader">编号</td>
			<td class="tableHeader">客户名称</td>
			<td class="tableHeader">合同号</td>
			<td class="tableHeader">货物数/附件数</td>
			<td class="tableHeader">签单日期</td>
			<td class="tableHeader">船期</td>
			<td class="tableHeader">交货期限</td>
			<td class="tableHeader">总金额</td>
		</tr>
		</thead>
		<tbody class="tableBody" >
		
		<c:forEach items="${dataList}" var="dl" varStatus="lineNo">
		<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
			<td><input type="checkbox" name="id" value="${dl.id}"/></td>
			<td><i>${lineNo.index+1}</i></td>
			<td>${dl.customName}</td>
			<td><a href="toview.action?id=${dl.id}">${dl.contractNo}</a></td>
			<td>${dl.cpnum}/${dl.epnum}</td>
			<td><fmt:formatDate value="${dl.signingDate}" pattern="yyyy-MM-dd" /></td>
			<td><fmt:formatDate value="${dl.shipTime}" pattern="yyyy-MM-dd" /></td>
			<td><fmt:formatDate value="${dl.deliveryPeriod}" pattern="yyyy-MM-dd" /></td>
			<td><fmt:formatNumber value="${dl.totalAmount}" pattern="###,###,###,#00.0#"/></td>
		</tr>
		</c:forEach>
		
		</tbody>
	</table>
	</div>

</div>

</form>
</body>
</html>

