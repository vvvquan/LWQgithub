package org.action;

import java.util.Map;

import org.model.Dlb;
import org.model.Kcb;
import org.service.DlService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DlAction extends ActionSupport{
	private Dlb dl;
	protected DlService dlService;
	public String execute() throws Exception{
		boolean validated = false;
		Map session = ActionContext.getContext().getSession();
		
		Dlb dll = dlService.find(dl.getXh(), dl.getKl());
		if(dll != null){
			session.put("dl", dll);
			validated = true;
		}
		if(validated){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String addDl() throws Exception{
		Dlb dl2 = new Dlb();
		//学号已存在，不可重复录入
		if(dlService.find(dl.getXh()) != null){
			return ERROR;
		}		
		dl2.setXh(dl.getXh());
		dl2.setKl(dl.getKl());
		dlService.save(dl2);
		Map session = ActionContext.getContext().getSession();
		session.put("dl", dl2);
		return SUCCESS;
	}
	public String exit() throws Exception{
		dlService.exit();
		return SUCCESS;
	}
	public Dlb getDl() {
		return dl;
	}
	public void setDl(Dlb dl) {
		this.dl = dl;
	}
	public DlService getDlService() {
		return dlService;
	}
	public void setDlService(DlService dlService) {
		this.dlService = dlService;
	}
	
}
