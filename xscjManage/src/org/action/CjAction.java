package org.action;

import java.util.List;
import java.util.Map;

import org.model.Cjb;
import org.model.CjbId;
import org.model.Dlb;
import org.model.Kcb;
import org.service.CjService;
import org.service.KcService;
import org.service.XsService;
import org.tool.Pager;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CjAction extends ActionSupport {
	private Cjb cj;
	private XsService xsService;
	private KcService kcService;
	private CjService cjService;
	/* 学生成绩查询  */
	private int pageNow = 1;
	private int pageSize = 6;
	/* 成绩信息录入  */
	public String execute() throws Exception{
		Map session = ActionContext.getContext().getSession();
		Dlb dl = (Dlb)session.get("dl");
		if(dl.getRole()==0) return "noauthority";
		
		List list1 = xsService.findAll(1, xsService.findXsSize());
		List list2 = kcService.findAll(1, kcService.findKcSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("list1", list1);
		request.put("list2", list2);
		return SUCCESS;
	}
	public String addorupdateXscj() throws Exception{
		Cjb cj1 = null;
		CjbId cjId1 = new CjbId();
		cjId1.setXh(cj.getId().getXh());
		cjId1.setKch(cj.getId().getKch());
		//判断成绩记录是否已经存在
		if(cjService.getXsCj(cj.getId().getXh(), cj.getId().getKch())==null){
			cj1 = new Cjb();
			cj1.setId(cjId1);
		}else{
			cj1 = cjService.getXsCj(cj.getId().getXh(), cj.getId().getKch());
		}
		Kcb kc1 = kcService.find(cj.getId().getKch());
		cj1.setCj(cj.getCj());
		if(cj.getCj()>=60){
			cj1.setXf(kc1.getXf());
		}else{
			cj1.setXf(0);
		}
		cjService.saveorupdateCj(cj1);
		return SUCCESS;
	}
	public String xscjInfo() throws Exception{
		List list = cjService.findAllCj(this.getPageNow(), this.getPageSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("list", list);
		Pager page = new Pager(this.getPageNow(), cjService.findCjSize());
		request.put("page", page);
		return SUCCESS;
	}
	public String findXscj() throws Exception{
		List list = cjService.getXsCjList(cj.getId().getXh());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("list", list);
		Pager page = new Pager(this.getPageNow(), list.size());
		request.put("page", page);
		return SUCCESS;
	}
	public String deleteOneXscj() throws Exception{
		String xh = cj.getId().getXh();
		String kch = cj.getId().getKch();
		cjService.deleteCj(xh, kch);
		return SUCCESS;
	}
	public Cjb getCj() {
		return cj;
	}
	public void setCj(Cjb cj) {
		this.cj = cj;
	}
	public XsService getXsService() {
		return xsService;
	}
	public void setXsService(XsService xsService) {
		this.xsService = xsService;
	}
	public KcService getKcService() {
		return kcService;
	}
	public void setKcService(KcService kcService) {
		this.kcService = kcService;
	}
	public CjService getCjService() {
		return cjService;
	}
	public void setCjService(CjService cjService) {
		this.cjService = cjService;
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
}
