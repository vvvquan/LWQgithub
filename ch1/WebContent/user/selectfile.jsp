<!-- �ͻ��ˣ�������htmlҳ��  -->
<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
  <head>
    <title>ѡ��Ҫ�ϴ����ļ�</title>
  </head>
  
  <body>
	<!-- action="fileupload.jsp"ָ���˷��������ĸ�ҳ�����ͼƬ  -->
	<form name="form" action="fileupload.jsp" method="post" enctype="multipart/form-data">
	�ļ�����: <input type="text" name="desc">
    <br><br>��ѡ��Ҫ�ϴ����ļ���<input type="file" name="file">
    <br><br>
    <input type="submit" value="�ϴ�ͼƬ">
    </form>
  </body>

</html>