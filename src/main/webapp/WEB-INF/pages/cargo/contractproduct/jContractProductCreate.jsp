<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
    <title></title>
	<script type="text/javascript" src="${ctx}/js/datepicker/WdatePicker.js"></script>
</head>
<body>
<form name="icform" method="post">
	<input type="text" name="contractId" value="${obj.contractId}"/><!-- 传递主表id -->

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('${ctx}/cargo/contractproduct/insert.action','_self');this.blur();">保存</a></li>
<li id="back"><a href="#" onclick="formSubmit('${ctx}/cargo/contract/list.action','_self');this.blur();">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div>
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
新增货物信息
    </div> 
    </div>
    </div>

    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">货号：</td>
	            <td class="tableContent"><input type="text" name="productNo" value=""/></td>
	            <td class="columnTitle">生产厂家：</td>
	            <td class="tableContent">
					<select name="factoryId">
						<option value="">--请选择--</option>
						<c:forEach items="${factoryList}" var="f">
						<option value="${f.id}">${f.factoryName}</option>
						</c:forEach>
					</select>
				</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">数量：</td>
	            <td class="tableContent"><input type="text" name="cnumber" value=""/></td>
	            <td class="columnTitle">包装单位：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="packingUnit" value="PCS" class="input"/>只
	            	<input type="radio" name="packingUnit" value="SETS" class="input"/>套
	            </td>	            
	        </tr>	        
	        <tr>
	            <td class="columnTitle">单价：</td>
	            <td class="tableContent"><input type="text" name="price" value=""/></td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">货物描述：</td>
	            <td class="tableContent" colspan="3"><textarea name="productDesc" style="height:100px;width:800px;"></textarea></td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">排序号：</td><!-- 利用列表的记录数作为排序号，无须用户录入，非常方便 -->
	            <td class="tableContent"><input type="text" name="orderNo" value="${orderNo}"/></td>
				</td>
	        </tr>
		</table>
	</div>
</div>


    
<div>
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
货物信息列表
    </div> 
    </div>
    </div>

	<div class="eXtremeTable" >
	<table id="ec_table"  border="0"  cellspacing="0"  cellpadding="0"  class="tableRegion"  width="98%" >
		<thead>
		<tr>
			<td class="tableHeader">编号</td>
			<td class="tableHeader">货号</td>
			<td class="tableHeader">生产厂家</td>
			<td class="tableHeader">数量</td>
			<td class="tableHeader">包装单位</td>
			<td class="tableHeader" style="width:80px;text-align:right;padding-right:10px;">单价</td>
			<td class="tableHeader" style="width:80px;text-align:right;padding-right:10px;">总金额</td>
			<td class="tableHeader">操作</td>
		</tr>
		</thead>
		<tbody class="tableBody" >
		
		<c:forEach items="${dataList}" var="dl" varStatus="lineNo">
		<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
			<td>&nbsp;<i>${lineNo.index+1}</i></td>
			<td><a href="contractProductAction_toview?id=${id}">${dl.productNo}</a></td>
			<td>${dl.factoryName}</td>
			<td>${dl.cnumber}</td>
			<td>${dl.packingUnit}</td>
			<td style="width:80px;text-align:right;padding-right:10px;">${dl.price}</td>
			<td style="width:80px;text-align:right;padding-right:10px;">${dl.amount}</td>
			<td>
				[<a href="toupdate.action?id=${dl.id}&contractId=${dl.contractId}">修改</a>]
				[<a href="delete.action?id=${dl.id}&contractId=${dl.contractId}">删除</a>]
				[<a href="${ctx}/cargo/extcproduct/tocreate.action?contractProductId=${dl.id}">附件</a>]
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

