<!-- 客户端，可以是html页面  -->
<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
  <head>
    <title>选择要上传的文件</title>
  </head>
  
  <body>
	<!-- action="fileupload.jsp"指明了服务器的哪个页面接收图片  -->
	<form name="form" action="fileupload.jsp" method="post" enctype="multipart/form-data">
	文件描述: <input type="text" name="desc">
    <br><br>请选择要上传的文件：<input type="file" name="file">
    <br><br>
    <input type="submit" value="上传图片">
    </form>
  </body>

</html>