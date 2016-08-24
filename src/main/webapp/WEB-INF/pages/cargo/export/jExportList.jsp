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
<li id="view"><a href="#" onclick="formSubmit('toview.action','_self');this.blur();">查看</a></li>
<li id="update"><a href="#" onclick="formSubmit('toupdate.action','_self');this.blur();">修改</a></li>
<li id="delete"><a href="#" onclick="formSubmit('deletebatch.action','_self');this.blur();">删除</a></li>
<li id="print"><a href="#" onclick="formSubmit('print.action','_self');this.blur();">打印</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div class="textbox" id="centerTextbox">
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
出口报运列表
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
			<td class="tableHeader">报运号</td>
			<td class="tableHeader">货物数/附件数</td>
			<td class="tableHeader">L/C</td>
			<td class="tableHeader">装运港</td>
			<td class="tableHeader">收货人及地址</td>
			<td class="tableHeader">运输方式</td>
			<td class="tableHeader">价格条件</td>
			<td class="tableHeader">录入日期</td>
			<td class="tableHeader">状态</td>
		</tr>
		</thead>
		<tbody class="tableBody" >
		
		<c:forEach items="${dataList}" var="dl" varStatus="lineNo">
		<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
			<td><input type="checkbox" name="id" value="${dl.id}"/></td>
			<td><i>${lineNo.index+1}</i></td>
			<td><a href="toview.action?id=${dl.id}">${dl.customerContract}</a></td>
			<td>${dl.cpnum}/${dl.epnum}</td>
			<td>${dl.lcno}</td>
			<td>${dl.shipmentPort}</td>
			<td>${dl.consignee}</td>
			<td>${dl.transportMode}</td>
			<td>${dl.priceCondition}</td>
			<td><fmt:formatDate value="${dl.inputDate}" pattern="yyyy-MM-dd" /></td>
			<td>
				<c:if test="${dl.state==0}">草稿</c:if>
				<c:if test="${dl.state==1}"><font color="green">已上报</font></c:if>				
				<c:if test="${dl.state==2}"><font color="green">装箱</font></c:if>				
				<c:if test="${dl.state==3}"><font color="green">委托</font></c:if>				
				<c:if test="${dl.state==4}"><font color="green">发票</font></c:if>				
				<c:if test="${dl.state==5}"><font color="green">财务</font></c:if>
			</td>			
		</tr>
		</c:forEach>
		
		</tbody>
	</table>
	</div>

</div>

</form>
</body>
</html>

