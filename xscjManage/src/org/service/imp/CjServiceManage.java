package org.service.imp;

import java.util.List;

import org.dao.CjDAO;
import org.model.Cjb;
import org.service.CjService;

public class CjServiceManage implements CjService {
	private CjDAO cjDao;
	@Override
	public Cjb getXsCj(String xh, String kch) {
		// TODO Auto-generated method stub
		return cjDao.getXsCj(xh, kch);
	}

	@Override
	public void saveorupdateCj(Cjb cj) {
		// TODO Auto-generated method stub
		cjDao.saveorupdate(cj);
	}

	@Override
	public List findAllCj(int pageNow, int pageSize) {
		// TODO Auto-generated method stub
		return cjDao.findAllCj(pageNow, pageSize);
	}

	@Override
	public int findCjSize() {
		// TODO Auto-generated method stub
		return cjDao.findCjSize();
	}

	@Override
	public List getXsCjList(String xh) {
		// TODO Auto-generated method stub
		return cjDao.getXsCjList(xh);
	}

	@Override
	public void deleteCj(String xh, String kch) {
		// TODO Auto-generated method stub
		cjDao.deleteCj(xh, kch);
	}

	@Override
	public void deleteOneXsCj(String xh) {
		// TODO Auto-generated method stub
		cjDao.deleteOneXsCj(xh);
	}

	public CjDAO getCjDao() {
		return cjDao;
	}

	public void setCjDao(CjDAO cjDao) {
		this.cjDao = cjDao;
	}
}
