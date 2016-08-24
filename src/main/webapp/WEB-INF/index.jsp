<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
</head>
<meta charset="UTF-8">
<title>编辑器完整版实例</title>
<body>
<!-- 加载编辑器的容器 -->
<script id="container" name="content" type="text/plain">
        这里写你的初始化内容
    </script>
<!-- 配置文件 -->
<script type="text/javascript" src="ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="ueditor.all.js"></script>

<!-- 实例化编辑器 -->
<textarea name="后台取值的key" id="myEditor">这里写你的初始化内容</textarea>
<script type="text/javascript">
    var editor = new UE.ui.Editor();
    editor.render("myEditor");
    //1.2.4以后可以使用一下代码实例化编辑器
    //UE.getEditor('myEditor')
</script>

</body>
</html>
