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
	<input type="hidden" id="contractId" name="contractId" value="${contractId}"/><!-- 传递主表id -->

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('${ctx}/cargo/contractproduct/insert.action','_self');this.blur();">保存</a></li>
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
新增货物信息
    </div> 
    </div>
    </div>

    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">货号：</td>
	            <td class="tableContent"><input type="text" name="productNo"/></td>
	            <td class="columnTitle">生产厂家：</td>
	            <td class="tableContent">
					<select name="factoryId" onchange="setFactryName(this.options[this.selectedIndex].text)">
						<option value="">--请选择--</option>
						<c:forEach items="${factoryList}" var="f">
						<option value="${f.id}">${f.factoryName}</option>
						</c:forEach>
					</select>
                    <input type="hidden" name="factoryName" id="factoryName"/>
				</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">数量：</td>
	            <td class="tableContent"><input type="text" name="cnumber"/></td>
	            <td class="columnTitle">包装单位：</td>
                <td class="tableContent"><input type="text" name="packingUnit"/></td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">单价：</td>
	            <td class="tableContent"><input type="text" name="price"/></td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">货物描述：</td>
	            <td class="tableContent" colspan="3"><textarea name="productDesc" id="TextArea1" style="height:100px;width:800px;"></textarea></td>
                <script type="text/javascript">CKEDITOR.replace('TextArea1');</script>
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

    <div>

        <div class="eXtremeTable" >
            <table id="ec_table" class="tableRegion" width="98%" >
                <thead>
                <tr>
                    <td class="tableHeader"></td>
                    <td class="tableHeader">货号</td>
                    <td class="tableHeader">数量</td>
                    <td class="tableHeader">生产厂家</td>
                    <td class="tableHeader">包装单位</td>
                    <td class="tableHeader">单价</td>
                    <td class="tableHeader">总金额</td>
                    <td class="tableHeader">货物描述</td>
                    <td class="tableHeader">操作</td>
                    <td class="tableHeader">操作</td>

                </tr>
                </thead>
                <tbody class="tableBody" >

                <c:forEach items="${dataList}" var="o">
                    <td class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'" >
                    <td>${o.productNo}</td>
                    <td>${o.cnumber}</td>
                    <td>${o.factoryName}</td>
                    <td>${o.packingUnit}</td>
                    <td>${o.price}</td>
                    <td>${o.amount}</td>
                    <td>${o.productDesc}</td>
                    <td><a href="${ctx}/cargo/contractproduct/toupdate.action?id=${o.id}" />[修改]</td>
                    <td><a href="${ctx}/cargo/contractproduct/delete.action?id=${o.id}&contractId=${contractId}" />[删除]</td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>

    </div>

</div>
 
</form>
</body>
</html>

