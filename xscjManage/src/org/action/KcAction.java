package org.action;

import java.io.FileInputStream;
import java.util.List;
import java.util.Map;

import org.model.Cjb;
import org.model.CjbId;
import org.model.Dlb;
import org.model.Kcb;
import org.model.Xsb;
import org.service.CjService;
import org.service.KcService;
import org.service.XsService;
import org.tool.Pager;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class KcAction extends ActionSupport {
	private Kcb kc;
	private KcService kcService;
	
	private int pageNow = 1;
	private int pageSize = 6;
	
	public String execute() throws Exception{
		Map session = ActionContext.getContext().getSession();
		Dlb dl = (Dlb)session.get("dl");
		if(dl.getRole()==0) return "noauthority";
		
		return SUCCESS;
	}
	/* 课程录入  */
	public String addorupdateXskc() throws Exception{
		Kcb kc2 = null;
		//判断课程是否已经存在
		if(kcService.find(kc.getKch())==null){ //不存在
			kc2 = new Kcb();
			kc2.setKch(kc.getKch());
			kc2.setKcm(kc.getKcm());
			kc2.setKxxq(kc.getKxxq());
			kc2.setXs(kc.getXs());
			kc2.setXf(kc.getXf());
		}else{
			kc2 = kcService.find(kc.getKch()); //已经存在
		}
		kcService.saveorupdateKc(kc2);
		return SUCCESS;
	}
	public String addKc() throws Exception{		
		Kcb kc2 = new Kcb();
		//课程号已存在，不可重复录入
		if(kcService.find(kc.getKch()) != null){
			return ERROR;
		}		
		kc2.setKch(kc.getKch());
		kc2.setKcm(kc.getKcm());
		kc2.setKxxq(kc.getKxxq());
		kc2.setXf(kc.getXf());
		kc2.setXs(kc.getXs());
		kcService.save(kc2);
		return SUCCESS;
	}
	/* 学生课程查询  */
	public String xskcInfo() throws Exception{
		List list = kcService.findAll(this.getPageNow(), this.getPageSize());
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("list", list);
		Pager page = new Pager(this.getPageNow(), kcService.findKcSize());
		request.put("page", page);
		return SUCCESS;
	}
	/* 删除课程  */
	public String deleteOneKc() throws Exception{
		String kch = kc.getKch();
		kcService.deleteOneKc(kch);
		return SUCCESS;
	}
	public Kcb getKc() {
		return kc;
	}
	public void setKc(Kcb kc) {
		this.kc = kc;
	}
	public KcService getKcService() {
		return kcService;
	}
	public void setKcService(KcService kcService) {
		this.kcService = kcService;
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
