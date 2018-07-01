package org.dao.imp;

import java.util.List;

import org.dao.BaseDAO;
import org.dao.CjDAO;
import org.hibernate.*;
import org.model.Cjb;
import org.model.CjbId;
import org.model.Xsb;

public class CjDAOImp extends BaseDAO implements CjDAO {

	/* 实现：成绩信息录入 */
	public Cjb getXsCj(String xh, String kch) {  //根据学号和课程号查询学生成绩
		CjbId cjbId = new CjbId();
		cjbId.setXh(xh);
		cjbId.setKch(kch);
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		Cjb cj = (Cjb)session.get(Cjb.class, cjbId);
		session.close();
		return cj;
	}
	
	public void saveorupdate(Cjb cj) {  //录入学生成绩
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		session.saveOrUpdate(cj);
		ts.commit();
		session.close();
	}

	/* 实现：学生成绩查询  */
	public List findAllCj(int pageNow, int pageSize) {  //分页显示所有学生成绩
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("select c.id.xh, a.xm, b.kcm, c.cj, c.xf, c.id.kch from Xsb a, Kcb b, Cjb c where a.xh=c.id.xh and b.kch=c.id.kch");
		int firstResult = (pageNow-1) * pageSize;
		query.setFirstResult(firstResult);  //分页显示所有学生成绩
		query.setMaxResults(pageSize);    //查找到的最大条数
		List list = query.list();
		ts.commit();
		session.close();
		return list;
	}

	@Override
	public int findCjSize() {  //查询一共多少条成绩记录
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			int cnt = session.createQuery("from Cjb").list().size();
			session.close();
			return cnt;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}

	/* 实现：查看某学生的成绩表 */
	public List getXsCjList(String xh) {  //获取某学生的成绩列表
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("select a.xm, b.kcm, c.cj, c.xf from Xsb a, Kcb b, Cjb c where c.id.xh=? and a.xh=c.id.xh and b.kch=c.id.kch");
		query.setParameter(0, xh);
		List list = query.list();
		ts.commit();
		session.close();
		return list;
	}

	/* 方法：删除学生成绩 */
	public void deleteCj(String xh, String kch) {  //根据学号和课程号删除学生成绩
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			session.delete(getXsCj(xh, kch));
			ts.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}

	}

	@Override
	public void deleteOneXsCj(String xh) {  //删除某学生的成绩（在删除该生成绩时对应删除）
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			session.delete(getXsCjList(xh));
			ts.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
