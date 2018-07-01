package org.dao.imp;

import java.util.List;

import org.dao.BaseDAO;
import org.dao.KcDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Kcb;

public class KcDAOImp extends BaseDAO implements KcDAO {

	/* 实现：找出所有课程的信息 */
	public List findAll(int pageNow, int pageSize) { //查询所有课程信息
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from Kcb");
		int firstResult = (pageNow-1) * pageSize;
		query.setFirstResult(firstResult);
		query.setMaxResults(pageSize);
		List list = query.list();
		ts.commit();
		session.close();
		session = null;
		return list;
	}

	@Override
	public int findKcSize() {  //查询一共有多少条课程信息
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		int cnt = session.createQuery("from Kcb").list().size();
		session.close();
		session = null;
		return cnt;
	}

	@Override
	public Kcb find(String kch) {  //根据课程号查找课程信息
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Kcb where kch=?");
			query.setParameter(0, kch);
			query.setMaxResults(1);
			Kcb kc = (Kcb)query.uniqueResult();
			ts.commit();
			session.clear();	//清除缓存
			return kc;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void deleteOneKc(String kch) {
		// TODO Auto-generated method stub
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			Kcb kc = find(kch);
			session.delete(kc);
			ts.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void saveorupdateKc(Kcb kc) {
		// TODO Auto-generated method stub
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		session.saveOrUpdate(kc);
		ts.commit();
		session.close();
	}
	
	/* 实现：课程录入 */
	@Override
	public void save(Kcb kc){
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			session.save(kc);
			ts.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
