<!-- �������˳��򣬽����û��ļ�����Ҫ��֤����Ŀ¼imageDir  -->
<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>

<%
	request.setCharacterEncoding("GBK");
	String imageDir = "/uploadimages11/" ;//Ҫ�ڹ��̵�Ŀ¼�´�����Ŀ¼�����ͼƬ�����ڹ���
	//��÷�����url��ʾ����(http://localhost:8080/jstl(������)/)
	String servURL = request.getScheme()+"://"+request.getServerName()+
						":"+request.getServerPort()+request.getContextPath() + imageDir;
	//��ȡ���������ش��λ��
	String fileDir = application.getRealPath("") + imageDir;
	
	//ע�⣬�˴�����Ϊ�Զ��ж��Ƿ����imageDirָ��Ŀ¼����û���򴴽��������Լ��ֶ�����Ŀ¼��Ȼ��ȥ����Щ����
	java.io.File myFilePath = new java.io.File(fileDir); 
	if (!myFilePath.exists()) { //���Ŀ¼�����ڣ��򴴽�
    	myFilePath.mkdir(); 
	System.out.println("ָ��Ŀ¼�����ڣ��Ѿ��ɹ�������Ŀ¼��"+fileDir);
    } 
	//end of creating dir
%>

<html>
<head>
	<title>�ļ��ϴ�����</title>
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
		
		while (iter.hasNext()) {//��������û���������
			FileItem item = (FileItem)iter.next();
			if (item.isFormField()) {//��ͨ���ݣ����ϸ�ҳ���"ͼƬ����"
				String name = item.getFieldName();
			    //String value = item.getString();
			    String value = new String(item.getString("GBK"));
			    out.println(name+":"+value+"<br><br>");
			}
			else {//����
				//String fieldName = item.getFieldName();
				String fileName = item.getName();
				//long sizeInBytes = item.getSize();
				String name = fileName.substring(fileName.lastIndexOf("\\") + 1, fileName.length()); //��ȡԭ�ļ���
    			//out.print(fieldName + " " + fileName + " " + sizeInBytes);
				String filePath = fileDir + name;
				String fileURL = servURL + name;
				////
				System.out.println("fileURL: " + fileURL); //Ϊʲô������uploadimages11�ļ����б��ҵ�
				///
				File uploadedFile = new File(filePath);
				item.write(uploadedFile);
 				out.println("<h2>�ļ��ϴ��ɹ���</h2><br>����ڷ������ı���Ŀ¼Ϊ��"+ filePath );
				out.println("<br><br>");
				out.println("����ͨ��������ַ����ͼƬ��<a href='"+fileURL+"'>"+fileURL+"</a>");
			}
		}
     }
     else {
      out.print("�û�û���ϴ��ļ���");
     }
%>

	<br>
</body>
</html>