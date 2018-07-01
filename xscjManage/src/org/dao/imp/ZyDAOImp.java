package org.dao.imp;

import java.util.List;
import org.dao.BaseDAO;
import org.dao.ZyDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Zyb;

public class ZyDAOImp extends BaseDAO implements ZyDAO {
	/* ʵ�֣�"ѧ����Ϣ��ѯ"�е��� */
	public Zyb getOneZy(Integer zyId) {  //����רҵID����רҵ��Ϣ
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("from Zyb where id=?");
			query.setParameter(0, zyId);
			query.setMaxResults(1);
			return (Zyb)query.uniqueResult();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public String getOneZym(Integer zyId) {  //����רҵID����רҵ��Ϣ
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			Query query = session.createQuery("select zym from Zyb where id=?");
			query.setParameter(0, zyId);
			query.setMaxResults(1);
			List<String> list = query.list();
			String str = (String)list.get(0);
			session.close();
			return str;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	/* ʵ�֣� "�޸�ĳѧ����Ϣ"�е��� */
	public List getAll() { //��������רҵ��Ϣ��Ϊ����רҵ�����б��ã�
		try{
			Session session = getSession();
			Transaction ts = session.beginTransaction();
			List list = session.createQuery("from Zyb").list();
			ts.commit();
			session.close();
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
