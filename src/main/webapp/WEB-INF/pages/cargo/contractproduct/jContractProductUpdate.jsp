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
	<input type="text" name="id" value="${obj.id}"/>

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('${ctx}/cargo/contractproduct/update.action','_self');this.blur();">保存</a></li>
<li id="back"><a href="#" onclick="formSubmit('${ctx}/cargo/contractproduct/tocreate.action?contractId=${obj.contractId}','_self');this.blur();">返回</a></li>
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
					<select name="factoryId">
						<option value="">--请选择--</option>
						<c:forEach items="${factoryList}" var="f">
						<option value="${f.id}"
							<c:if test="${f.id==obj.factoryId}"> selected</c:if>
						>${f.factoryName}</option>
						</c:forEach>
					</select>
				</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">数量：</td>
	            <td class="tableContent"><input type="text" name="cnumber" value="${obj.cnumber}"/></td>
	            <td class="columnTitle">包装单位：${obj.packingUnit}</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="packingUnit" value="PCS" class="input" <c:if test="${obj.packingUnit=='PCS'}">checked</c:if>/>只
	            	<input type="radio" name="packingUnit" value="SETS" class="input" <c:if test="${obj.packingUnit=='SETS'}">checked</c:if>/>套
	            </td>	            
	        </tr>	        
	        <tr>
	            <td class="columnTitle">单价：</td>
	            <td class="tableContent"><input type="text" name="price" value="${obj.price}"/></td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">货物描述：</td>
	            <td class="tableContent" colspan="3"><textarea name="productDesc" style="height:100px;width:800px;">${obj.productDesc}</textarea></td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">排序号：</td>
	            <td class="tableContent"><input type="text" name="orderNo" value="${obj.orderNo}"/></td>
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
			<td class="tableHeader">单价</td>
			<td class="tableHeader">总金额</td>
			<td class="tableHeader">操作</td>
		</tr>
		</thead>
		<tbody class="tableBody" >
		
		<c:forEach items="${dataList}" var="dl" varStatus="lineNo">
		<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
			<td>${lineNo.index+1}</td>
			<td><a href="contractProductAction_toview?id=${id}">${dl.productNo}</a></td>
			<td>${dl.factoryName}</td>
			<td>${dl.cnumber}</td>
			<td>${dl.packingUnit}</td>
			<td>${dl.price}</td>
			<td>${dl.amount}</td>
			<td>
				[<a href="contractProductAction_toupdate?id=${id}&contract.id=${contract.id}">修改</a>]
				[<a href="delete.action?id=${dl.id}&contractId=${dl.contractId}">删除</a>]
				[<a href="extCproductAction_tocreate?contractProduct.id=${id}&contractProduct.contract.id=${contract.id}">附件</a>]
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

