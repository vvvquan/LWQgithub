package org.service.imp;

import java.util.List;

import org.dao.ZyDAO;
import org.model.Zyb;
import org.service.ZyService;

public class ZyServiceManage implements ZyService {
	private ZyDAO zyDao;
	@Override
	public Zyb getOneZy(Integer zyId) {
		// TODO Auto-generated method stub
		return zyDao.getOneZy(zyId);
	}
	public String getOneZym(Integer zyId){
		return zyDao.getOneZym(zyId);
	};

	@Override
	public List getAll() {
		// TODO Auto-generated method stub
		return zyDao.getAll();
	}

	public ZyDAO getZyDao() {
		return zyDao;
	}

	public void setZyDao(ZyDAO zyDao) {
		this.zyDao = zyDao;
	}
}
