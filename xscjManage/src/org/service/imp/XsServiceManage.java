package org.service.imp;

import java.util.List;

import org.dao.CjDAO;
import org.dao.XsDAO;
import org.model.Xsb;
import org.service.XsService;

public class XsServiceManage implements XsService {
	private XsDAO xsDao;
	private CjDAO cjDao;
	@Override
	public List findAll(int pageNow, int pageSize) {
		// TODO Auto-generated method stub
		return xsDao.findAll(pageNow, pageSize);
	}

	@Override
	public int findXsSize() {
		// TODO Auto-generated method stub
		return xsDao.findXsSize();
	}

	@Override
	public Xsb find(String xh) {
		// TODO Auto-generated method stub
		return xsDao.find(xh);
	}

	@Override
	public void delete(String xh) {
		// TODO Auto-generated method stub
		xsDao.delete(xh);
		if(cjDao != null){  //学生被删除时可能还没有添加成绩
			cjDao.deleteOneXsCj(xh);
		}
	}

	@Override
	public void update(Xsb xs) {
		// TODO Auto-generated method stub
		xsDao.update(xs);
	}

	@Override
	public void save(Xsb xs) {
		// TODO Auto-generated method stub
		xsDao.save(xs);
	}

	public XsDAO getXsDao() {
		return xsDao;
	}

	public void setXsDao(XsDAO xsDao) {
		this.xsDao = xsDao;
	}

	public CjDAO getCjDao() {
		return cjDao;
	}

	public void setCjDao(CjDAO cjDao) {
		this.cjDao = cjDao;
	}
}
