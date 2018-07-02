<%@page import="java.util.Iterator"%>
<%@page import="com.neuedu.model.*"%>
<%@page import="java.util.List" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>集团化资产管理系统 by www.mycodes.net</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
    <script src="${pageContext.request.contextPath}/assets/js/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="caigou.htm";
   document.getElementById("fom").submit();
}
/*
$(function(){
	$("#test1").click(function() {
		var bqstring = $("table[name='biao1'] input:checkbox[name='delid']:checked").map(function(index,elem) {
            return $(elem).val();
        }).get().join('-');
        alert("选中的checkbox的值为："+bqstring);
        $("#fom").attr("action","${pageContext.request.contextPath}/buyProuduct/delete.do?number="+bqstring+"&&biao=biao1");
        $("#fom").submit();
    });
});*/
</SCRIPT>

<body data-type="index">
<%@include file="head.jsp" %>

    <div class="tpl-page-container tpl-page-header-fixed">
		<%@include file="leftNav.jsp" %>
		<%--内容 --%>
        <div class="tpl-content-wrapper">
            
            <form name="fom" id="fom" method="post">
				<table id="biao1" name="biao1" width="100%" border="0" cellspacing="0" cellpadding="0">
				
				  <tr>
				    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td height="62" background="../images/nav04.gif">
				            
						   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
							  <td width="24"><img src="../images/ico07.gif" width="20" height="18" /></td>
							  <td width="519"><label>按采购单号:
							      <input name="text" type="text" nam="gongs" />
							  </label>
							   
							    <input name="Submit" type="button" class="right-button02" value="盘点" /></td>
							   <td width="679" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>	
						    </tr>
				          </table></td>
				        </tr>
				    </table></td></tr>
				  <tr>
				    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				          	 <tr>
				               <td height="20"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
						           <input id="test1" name="test1" type="button" class="right-button08" value="删除所选盘点信息" /> 
						           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					              </td>
				          </tr>
				              <tr>
				                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				
									                  <tr>
				                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;盘点采购资产详细列表 &nbsp;</td>
				                    </tr>
				                  <tr>
							<td width="8%" align="center" bgcolor="#EEEEEE">选择</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">采购单号</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">采购数量</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">采购时间</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">供应商编号</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">产品编号</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">部门编号</td>
				            <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
				           </tr>
				           <c:forEach items="${listBuy1}" var="c">
				           <tr>								
				                    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid" value="${c.buyid}"/></td>
				                    <td bgcolor="#FFFFFF">${c.buyid}</td>
				                    <td bgcolor="#FFFFFF">${c.buycount}</td>
				                    <td bgcolor="#FFFFFF">${c.buytime}</td>
				                    <td bgcolor="#FFFFFF">${c.provid}</td>
				                    <td bgcolor="#FFFFFF">${c.prodid}</td>
				                    <td bgcolor="#FFFFFF">${c.departid}</td>
				                    <td bgcolor="#FFFFFF"><a href="${pageContext.request.contextPath}/buy/findById.do?buyid=${c.buyid}">编辑</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/buy/findById2.do?buyid=${c.buyid}">查看</a></td>				           	
				           </tr> 
				           
				           </c:forEach> 
				                </table></td>
				              </tr>
				            </table></td>
				        </tr>
				      </table>
				      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				        <tr>
				          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
				        </tr>
				        <tr>
				          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
				              <tr>
				                <td width="50%">共 <span class="right-text09">1</span> 页 | 第 <span class="right-text09">1</span> 页</td>
				                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
				                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
				                    <tr>
				                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
				                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
				                      </td>
				                    </tr>
				                </table></td>
				              </tr>
				          </table></td>
				        </tr>
				      </table></td>
				  </tr>
				</table>
				      <table width="100%" border="0" cellspacing="0" cellpadding="0">
				
				  <tr>
				    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td height="62" background="../images/nav04.gif">
				            
				       <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
				        <tr>
				        <td width="24"><img src="../images/ico07.gif" width="20" height="18" /></td>
				        <td width="519"><label>按调配编号:
				            <input name="text" type="text" nam="gongs" />
				        </label>
				         
				          <input name="Submit" type="button" class="right-button02" value="盘点" /></td>
				         <td width="679" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>  
				        </tr>
				          </table></td>
				        </tr>
				    </table></td></tr>
				  <tr>
				    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				             <tr>
				               <td height="20"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
				               <input name="Submit" type="button" class="right-button08" value="删除所选盘点信息" /> 
				               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				                </td>
				          </tr>
				              <tr>
				                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				
				                            <tr>
				                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;盘点调配资产详细列表 &nbsp;</td>
				                    </tr>
				                  <tr>
				            <td width="8%" align="center" bgcolor="#EEEEEE">选择</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">调配编号</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">调配数量</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">调配时间</td>
				             <td width="12%" height="20" align="center" bgcolor="#EEEEEE">资产编号</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">部门编号</td>
				
				            <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
				           </tr>
				           
				           <c:forEach items="${listBuy2}" var="c">
				           
				           <tr>
				
				                    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
				                    <td bgcolor="#FFFFFF">${c.tid}</td>
				                    <td bgcolor="#FFFFFF">${c.tcount}</td>
				                    <td bgcolor="#FFFFFF">${c.trtime}</td>
				                    <td bgcolor="#FFFFFF">${c.areaid}</td>
				                    <td bgcolor="#FFFFFF">${c.departid}</td>
				                    <td bgcolor="#FFFFFF"><a href="${pageContext.request.contextPath}/Tpjl/findById.do?tid=${c.tid}">编辑</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/Tpjl/findById2.do?tid=${c.tid}">查看</a></td>
				           </tr> 
				           
				           </c:forEach>
				             
				                </table></td>
				              </tr>
				            </table></td>
				        </tr>
				      </table>
				      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				        <tr>
				          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
				        </tr>
				        <tr>
				          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
				              <tr>
				                <td width="50%">共 <span class="right-text09">5</span> 页 | 第 <span class="right-text09">1</span> 页</td>
				                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
				                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
				                    <tr>
				                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
				                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
				                      </td>
				                    </tr>
				                </table></td>
				              </tr>
				          </table></td>
				        </tr>
				      </table></td>
				  </tr>
				</table>
				      <table width="100%" border="0" cellspacing="0" cellpadding="0">
				
				  <tr>
				    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td height="62" background="../images/nav04.gif">
				            
				       <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
				        <tr>
				        <td width="24"><img src="../images/ico07.gif" width="20" height="18" /></td>
				        <td width="519"><label>按报修编号:
				            <input name="text" type="text" nam="gongs" />
				        </label>
				         
				          <input name="Submit" type="button" class="right-button02" value="盘点" /></td>
				         <td width="679" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>  
				        </tr>
				          </table></td>
				        </tr>
				    </table></td></tr>
				  <tr>
				    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				             <tr>
				               <td height="20"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
				               <input name="Submit" type="button" class="right-button08" value="删除所选盘点信息" /> 
				               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				                </td>
				          </tr>
				              <tr>
				                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				
				                            <tr>
				                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;盘点报修资产详细列表 &nbsp;</td>
				                    </tr>
				                  <tr>
				            <td width="8%" align="center" bgcolor="#EEEEEE">选择</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">报修编号</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">报修数量</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">报修时间</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">资产编号</td>
				            <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
				           </tr>
				           
				           <c:forEach items="${listBuy3}" var="c">				           
				           <tr>				
				                    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
				                    <td bgcolor="#FFFFFF">${c.repairid}</td>
				                    <td bgcolor="#FFFFFF">${c.rcount}</td>
				                    <td bgcolor="#FFFFFF">${c.rtime}</td>
				                    <td bgcolor="#FFFFFF">${c.departid}</td>
				                    <td bgcolor="#FFFFFF"><a href="${pageContext.request.contextPath}/Bxjl/findById.do?repairid=${c.repairid }">编辑</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/Bxjl/findById2.do?repairid=${c.repairid }">查看</a></td>
				           </tr> 
				           </c:forEach>
				           
				                </table></td>
				              </tr>
				            </table></td>
				        </tr>
				      </table>
				      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				        <tr>
				          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
				        </tr>
				        <tr>
				          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
				              <tr>
				                <td width="50%">共 <span class="right-text09">1</span> 页 | 第 <span class="right-text09">1</span> 页</td>
				                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
				                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
				                    <tr>
				                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
				                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
				                      </td>
				                    </tr>
				                </table></td>
				              </tr>
				          </table></td>
				        </tr>
				      </table></td>
				  </tr>
				</table>
				      <table width="100%" border="0" cellspacing="0" cellpadding="0">
				
				  <tr>
				    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td height="62" background="../images/nav04.gif">
				            
				       <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
				        <tr>
				        <td width="24"><img src="../images/ico07.gif" width="20" height="18" /></td>
				        <td width="519"><label>按报废编号:
				            <input name="text" type="text" nam="gongs" />
				        </label>
				         
				          <input name="Submit" type="button" class="right-button02" value="盘点" /></td>
				         <td width="679" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>  
				        </tr>
				          </table></td>
				        </tr>
				    </table></td></tr>
				  <tr>
				    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				             <tr>
				               <td height="20"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
				               <input name="Submit" type="button" class="right-button08" value="删除所选盘点信息" /> 
				               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				                </td>
				          </tr>
				              <tr>
				                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				
				                            <tr>
				                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;盘点报废资产详细列表 &nbsp;</td>
				                    </tr>
				                  <tr>
				            <td width="8%" align="center" bgcolor="#EEEEEE">选择</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">报废编号</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">报废数量</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">报废时间</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">资产编号</td>
				            <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
				           </tr>
				           
				           <c:forEach items="${listBuy4}" var="c">
				           
				           <tr>
				
				                    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
				                    <td bgcolor="#FFFFFF">${c.sid}</td>
				                    <td bgcolor="#FFFFFF">${c.scount}</td>
				                    <td bgcolor="#FFFFFF">${c.stime}</td>
				                    <td bgcolor="#FFFFFF">${c.bid}</td>
				                    <td bgcolor="#FFFFFF"><a href="${pageContext.request.contextPath}/Bfjl/findById.do?sid=${c.sid }">编辑</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/Bfjl/findById2.do?sid=${c.sid }">查看</a></td>
				           </tr> 
				           
				           </c:forEach>
				           
				                </table></td>
				              </tr>
				            </table></td>
				        </tr>
				      </table>
				      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				        <tr>
				          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
				        </tr>
				        <tr>
				          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
				              <tr>
				                <td width="50%">共 <span class="right-text09">1</span> 页 | 第 <span class="right-text09">1</span> 页</td>
				                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
				                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
				                    <tr>
				                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
				                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
				                      </td>
				                    </tr>
				                </table></td>
				              </tr>
				          </table></td>
				        </tr>
				      </table></td>
				  </tr>
				</table>
				</form>



        </div>


    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/iscroll.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>
</html>