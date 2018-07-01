package org.service.imp;

import org.dao.DlDAO;
import org.model.Dlb;
import org.model.Kcb;
import org.service.DlService;

public class DlServiceManage implements DlService {
	private DlDAO dlDao;
	@Override
	public Dlb find(String xh, String kl) {
		return dlDao.find(xh, kl);
	}
	public DlDAO getDlDao() {
		return dlDao;
	}
	public void setDlDao(DlDAO dlDao) {
		this.dlDao = dlDao;
	}
	@Override
	public void saveorupdateDl(Dlb dl) {
		// TODO Auto-generated method stub
		dlDao.saveorupdateDl(dl);
	}
	@Override
	public void save(Dlb dl) {
		// TODO Auto-generated method stub
		dlDao.save(dl);
	}
	@Override
	public Dlb find(String xh) {
		// TODO Auto-generated method stub
		return dlDao.find(xh);
	}
	@Override
	public void exit() {
		// TODO Auto-generated method stub
		dlDao.exit();
	}
	
}
