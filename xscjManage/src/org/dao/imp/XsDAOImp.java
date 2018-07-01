package org.dao.imp;
import java.util.*;

import org.dao.*;
import org.model.*;
import org.hibernate.*;

public class XsDAOImp extends BaseDAO implements XsDAO{
	/* ʵ�֣� ѧ����Ϣ��ѯ */
	public List findAll(int pageNow, int pageSize){
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Xsb order by xh");
			int firstResult = (pageNow-1) * pageSize;
			query.setFirstResult(firstResult);
			query.setMaxResults(pageSize);
			List list = query.list();
			ts.commit();
			session.close();
			session = null;
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public int findXsSize(){
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			int cnt = session.createQuery("from Xsb").list().size();
			session.close();
			session = null;
			return cnt;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	/* ʵ�֣��鿴ĳ��ѧ���ľ�����Ϣ */
	public Xsb find(String xh){
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Xsb where xh=?");
			query.setParameter(0, xh);
			query.setMaxResults(1);
			Xsb xs = (Xsb)query.uniqueResult();
			ts.commit();
			session.close();
			session = null;
			return xs;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	/* ʵ�֣�ɾ��ĳѧ����Ϣ */
	public void delete(String xh){
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			Xsb xs = find(xh);
			session.delete(xs);
			ts.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/* ʵ�֣��޸�ĳѧ����Ϣ */
	public void update(Xsb xs){
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			session.update(xs);
			ts.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/* ʵ�֣�ѧ����Ϣ¼�� */
	public void save(Xsb xs){
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			session.save(xs);
			ts.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
