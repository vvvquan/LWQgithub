package org.action;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.model.Dlb;
import org.model.Xsb;
import org.service.XsService;
import org.service.ZyService;
import org.tool.Pager;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

public class XsAction extends ActionSupport {
	private int pageNow = 1;
	private int pageSize = 6;
	private Xsb xs;
	private XsService xsService;
	/* 修改某学生信息 */
	private ZyService zyService;
	private File zpfile;
	/* 学生信息录入 */
	private List list;
	/* 学生信息查询 */
	public String execute() throws Exception{
		List list = xsService.findAll(pageNow, pageSize);
		Map request = (Map)ActionContext.getContext().get("request");
		Pager page = new Pager(getPageNow(), xsService.findXsSize());
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}
	/* 学生信息录入 */
	//显示录入界面
	public String addXsView() throws Exception{
		Map session = ActionContext.getContext().getSession();
		Dlb dl = (Dlb)session.get("dl");
		if(dl.getRole()==0) return "noauthority";
		return SUCCESS;
	}
	public String addXs() throws Exception{
		Xsb stu = new Xsb();
		String xh1 = xs.getXh();
		//学号已存在，不可重复录入
		if(xsService.find(xh1) != null){
			return ERROR;
		}		
		stu.setXh(xs.getXh());
		stu.setXm(xs.getXm());
		stu.setXb(xs.getXb());
		stu.setCssj(xs.getCssj());
		stu.setZxf(xs.getZxf());
		stu.setBz(xs.getBz());
		//直接使用ZyService的getOneZy()
		stu.setZyb(zyService.getOneZy(xs.getZyb().getId()));
		if(this.getZpfile()!=null){
			FileInputStream fis = new FileInputStream(this.getZpfile());
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			stu.setZp(buffer);
		}
		xsService.save(stu);
		return SUCCESS;
	}
	/* 查找某个学生的信息  */
	public String findXs() throws Exception{
		String xh = xs.getXh();
		Xsb stu = xsService.find(xh);
		stu.setZym(zyService.getOneZym(stu.getZyb().getId()));
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("xs", stu);
		return SUCCESS;
	}
	/* 查找某个学生的照片  */
	public String getImage() throws Exception{
		HttpServletResponse response = ServletActionContext.getResponse();
		String xh = xs.getXh();
		Xsb stu = xsService.find(xh);
		byte[] img = stu.getZp(); 
		response.setContentType("image/jpeg");
		ServletOutputStream os = response.getOutputStream();
		if(img != null && img.length!=0){
			for(int i = 0; i < img.length; i++){
					os.write(img[i]);
			}
		}
		return NONE;
	}
	/* 删除学生信息  */
	public String deleteXs() throws Exception{
		String xh = xs.getXh();
		xsService.delete(xh);
		return SUCCESS;
	}
	/* 修改某学生信息  */
	//显示修改页面
	public String updateXsView() throws Exception{
		String xh = xs.getXh();
		Xsb xsInfo = xsService.find(xh);
		List zys = zyService.getAll();
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("xsInfo", xsInfo);
		request.put("zys", zys);
		return SUCCESS;
	}
	//执行修改操作
	public String updateXs() throws Exception{
		Xsb xsl = xsService.find(xs.getXh());
		xsl.setXm(xs.getXm());
		xsl.setXb(xs.getXb());
		xsl.setZyb(zyService.getOneZy(xs.getZyb().getId()));
		xsl.setCssj(xs.getCssj());
		xsl.setZxf(xs.getZxf());
		xsl.setBz(xs.getBz());
		if(this.getZpfile()!=null){
			FileInputStream fis = new FileInputStream(this.getZpfile());
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			xsl.setZp(buffer);
		}
		Map request = (Map)ActionContext.getContext().get("request");
		xsService.update(xsl);
		return SUCCESS;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public Xsb getXs() {
		return xs;
	}
	public void setXs(Xsb xs) {
		this.xs = xs;
	}
	public XsService getXsService() {
		return xsService;
	}
	public void setXsService(XsService xsService) {
		this.xsService = xsService;
	}
	public ZyService getZyService() {
		return zyService;
	}
	public void setZyService(ZyService zyService) {
		this.zyService = zyService;
	}
	public File getZpfile() {
		return zpfile;
	}
	public void setZpfile(File zpfile) {
		this.zpfile = zpfile;
	}
	public List getList() {
		return zyService.getAll();
	}
	public void setList(List list) {
		this.list = list;
	}
}
