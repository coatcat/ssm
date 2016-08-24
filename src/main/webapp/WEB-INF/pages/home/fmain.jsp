<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<title>信息平台</title>
</head>
<frameset rows="125,*" name="topFrameset" border="0">
	<frame name="top_frame" scrolling="no"  target="middleFrameSet" src="title.action">
	<frameset cols="202,*" height="100%" name="middle" frameborder="no" border="0" framespacing="0">
		<frame name="leftFrame" class="leftFrame" target="main" scrolling="no" src="left.action" />
		<frame name="main" class="rightFrame" src="UserList.action" />
	</frameset>
</frameset>
<!--
    name：用于指定分窗口的名称，src则用于指定分窗口所对应的HTML页面地址
    scrolling：设定分窗口是否要滚动条。scrolling=no时不要滚动条
    framespacing：用于设定各分窗口之间的间隔大小，默认值是0。
    frameborder：是指定各分窗口是（ye）否（no）要加边框；如果加过框的话，则用border参数指定边框的宽度，bordercolor指定边框的颜色。
    cols和rows：是决定页面如何分割的两个参数
-->
<noframes>
<body>
    <p>此网页使用了框架，但您的浏览器不支持框架。</p>
</body>
</noframes>

</html>