<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="/xscjManage/bootstrap/js/jquery/2.0.0/jquery.min.js"></script>
<link href="/xscjManage/bootstrap/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="/xscjManage/bootstrap/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<%@include file="head.jsp" %>
<body>
<div id="content" class="row">
    <div class="col-md-3">
        <%@include file="left.jsp" %>
    </div>
    <div class="col-md-9">
        	<h3>录入学生成绩</h3>
	<hr>
	<s:form action="addorupdateXscj" method="post" theme="simple">
		<table class="table table-striped">
			<tr>
				<td width="100">学生：</td>
				<td>
					<select name="cj.id.xh" id="d1">
						<s:iterator id="xs" value="#request.list1">
							<option value="<s:property value="#xs.xh"/>"/>
								<s:property value="#xs.xm"/>
							</option>
						</s:iterator>
					</select>
				</td>
			</tr>
			<tr>
				<td width="100">课程：</td>
				<td>
					<select name="cj.id.kch" id="d2">
						<s:iterator id="kc" value="#request.list2">
							<option value="<s:property value="#kc.kch"/>"/>
								<s:property value="#kc.kcm"/>
							</option>
						</s:iterator>
					</select>
				</td>
			</tr>
			<tr>
				<td width="100">成绩：</td>
				<td>
				<s:textfield id="cj" name="cj.cj" size="15"></s:textfield>
				</td>
			</tr>
		</table>
		<input type="submit" value="确定" class="btn btn-info" onClick="return ok()"/>
		<input type="reset" value="重置" class="btn btn-info"/>
	</s:form>  
    </div>
</div>
</body>
<%@include file="bottom.jsp" %>
<script type="text/javascript">
	function ok(){
		cj = document.getElementById("cj").value;
		if(cj == undefined || cj.length==0){
			alert("成绩不能为空");
			return false;
		}
		return true;
	}
</script>
</html>