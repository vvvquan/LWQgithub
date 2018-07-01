package org.service.imp;

import java.util.List;

import org.dao.KcDAO;
import org.model.Kcb;
import org.model.Xsb;
import org.service.KcService;

public class KcServiceManage implements KcService {
	private KcDAO kcDao;
	@Override
	public List findAll(int pageNow, int pageSize) {
		// TODO Auto-generated method stub
		return kcDao.findAll(pageNow, pageSize);
	}

	@Override
	public int findKcSize() {
		// TODO Auto-generated method stub
		return kcDao.findKcSize();
	}

	@Override
	public Kcb find(String kch) {
		// TODO Auto-generated method stub
		return kcDao.find(kch);
	}

	@Override
	public void deleteOneKc(String kch) {
		// TODO Auto-generated method stub
		kcDao.deleteOneKc(kch);
	}

	@Override
	public void saveorupdateKc(Kcb kc) {
		// TODO Auto-generated method stub
		kcDao.saveorupdateKc(kc);
	}
	
	@Override
	public void save(Kcb kc) {
		// TODO Auto-generated method stub
		kcDao.save(kc);
	}

	public KcDAO getKcDao() {
		return kcDao;
	}

	public void setKcDao(KcDAO kcDao) {
		this.kcDao = kcDao;
	}	
}
