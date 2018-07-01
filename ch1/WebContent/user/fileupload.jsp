<!-- 服务器端程序，接收用户文件。需要保证存在目录imageDir  -->
<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>

<%
	request.setCharacterEncoding("GBK");
	String imageDir = "/uploadimages11/" ;//要在工程的目录下创建该目录来存放图片，便于管理
	//获得服务器url表示方法(http://localhost:8080/jstl(工程名)/)
	String servURL = request.getScheme()+"://"+request.getServerName()+
						":"+request.getServerPort()+request.getContextPath() + imageDir;
	//获取服务器本地存放位置
	String fileDir = application.getRealPath("") + imageDir;
	
	//注意，此处代码为自动判断是否存在imageDir指定目录，如没有则创建。建议自己手动创建目录，然后去掉这些代码
	java.io.File myFilePath = new java.io.File(fileDir); 
	if (!myFilePath.exists()) { //如果目录不存在，则创建
    	myFilePath.mkdir(); 
	System.out.println("指定目录不存在，已经成功创建该目录："+fileDir);
    } 
	//end of creating dir
%>

<html>
<head>
	<title>文件上传处理</title>
</head>

<body>
<% 
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	if(isMultipart == true) {
		// Create a factory for disk-based file items
		FileItemFactory factory = new DiskFileItemFactory();
		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		// Parse the request
		List /* FileItem */items = upload.parseRequest(request);
		// Process the uploaded items
		Iterator iter = items.iterator();
		
		while (iter.hasNext()) {//逐个遍历用户输入数据
			FileItem item = (FileItem)iter.next();
			if (item.isFormField()) {//普通数据，如上个页面的"图片描述"
				String name = item.getFieldName();
			    //String value = item.getString();
			    String value = new String(item.getString("GBK"));
			    out.println(name+":"+value+"<br><br>");
			}
			else {//附件
				//String fieldName = item.getFieldName();
				String fileName = item.getName();
				//long sizeInBytes = item.getSize();
				String name = fileName.substring(fileName.lastIndexOf("\\") + 1, fileName.length()); //获取原文件名
    			//out.print(fieldName + " " + fileName + " " + sizeInBytes);
				String filePath = fileDir + name;
				String fileURL = servURL + name;
				////
				System.out.println("fileURL: " + fileURL); //为什么附件在uploadimages11文件夹中被找到
				///
				File uploadedFile = new File(filePath);
				item.write(uploadedFile);
 				out.println("<h2>文件上传成功：</h2><br>存放在服务器的本地目录为："+ filePath );
				out.println("<br><br>");
				out.println("可以通过如下网址访问图片：<a href='"+fileURL+"'>"+fileURL+"</a>");
			}
		}
     }
     else {
      out.print("用户没有上传文件！");
     }
%>

	<br>
</body>
</html>