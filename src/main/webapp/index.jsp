<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
</head>
<meta charset="UTF-8">
<title>编辑器完整版实例</title>
<body>

<!-- 加载编辑器的容器 -->
<form method="post" action="/basicinfo/test/test.action">
    <!-- 实例化编辑器 -->
    <textarea name="password" >这里写你的初始化内容</textarea>
    <input type="text" name="username"/>账号
    <input name="submit" value="提交" type="submit">
</form>

<script charset="utf-8"></script>
<script type="text/javascript">CKEDITOR.replace('password');
</script>
</body>
</html>
