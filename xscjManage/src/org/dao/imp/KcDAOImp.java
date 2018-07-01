package org.dao.imp;

import java.util.List;

import org.dao.BaseDAO;
import org.dao.KcDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Kcb;

public class KcDAOImp extends BaseDAO implements KcDAO {

	/* ʵ�֣��ҳ����пγ̵���Ϣ */
	public List findAll(int pageNow, int pageSize) { //��ѯ���пγ���Ϣ
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
	public int findKcSize() {  //��ѯһ���ж������γ���Ϣ
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		int cnt = session.createQuery("from Kcb").list().size();
		session.close();
		session = null;
		return cnt;
	}

	@Override
	public Kcb find(String kch) {  //���ݿγ̺Ų��ҿγ���Ϣ
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Kcb where kch=?");
			query.setParameter(0, kch);
			query.setMaxResults(1);
			Kcb kc = (Kcb)query.uniqueResult();
			ts.commit();
			session.clear();	//�������
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
	
	/* ʵ�֣��γ�¼�� */
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
