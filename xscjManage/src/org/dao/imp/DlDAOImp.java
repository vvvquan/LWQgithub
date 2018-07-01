package org.dao.imp;

import java.util.Iterator;
import java.util.List;

import org.dao.BaseDAO;
import org.dao.DlDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Dlb;
import org.model.Kcb;

public class DlDAOImp extends BaseDAO implements DlDAO {
	//实现：根据学号和口令查找
	@Override
	public Dlb find(String xh, String kl) {
		//查询Dlb中的记录
		String hql = "from Dlb u where u.xh=? and u.kl=?";
		Session session = getSession();
		Query query = session.createQuery(hql);
		query.setParameter(0, xh);
		query.setParameter(1, kl);
		List users = query.list();
		Iterator it = users.iterator();
		while(it.hasNext()){
			if(users.size() != 0){
				Dlb user = (Dlb)it.next(); //create持久化的javabean对象user
				return user;
			}
		}
		session.close();
		return null;
	}

	/* 实现：人员录入 */
	@Override
	public void save(Dlb dl){
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			session.save(dl);
			ts.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void saveorupdateDl(Dlb dl) {
		// TODO Auto-generated method stub
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		session.saveOrUpdate(dl);
		ts.commit();
		session.close();
	}

	@Override
	public Dlb find(String xh) {
		// TODO Auto-generated method stub
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Dlb where xh=?");
			query.setParameter(0, xh);
			query.setMaxResults(1);
			Dlb dl = (Dlb)query.uniqueResult();
			ts.commit();
			session.clear();	//清除缓存
			return dl;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void exit() {
		// TODO Auto-generated method stub
		try{
			Session session = getSession();
			session.clear();	//清除登录状态
		}catch(Exception e){
			e.printStackTrace();
		}
	}	
}
