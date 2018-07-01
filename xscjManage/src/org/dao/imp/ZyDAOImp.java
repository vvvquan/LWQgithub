package org.dao.imp;

import java.util.List;
import org.dao.BaseDAO;
import org.dao.ZyDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Zyb;

public class ZyDAOImp extends BaseDAO implements ZyDAO {
	/* 实现："学生信息查询"中调用 */
	public Zyb getOneZy(Integer zyId) {  //根据专业ID查找专业信息
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
	public String getOneZym(Integer zyId) {  //根据专业ID查找专业信息
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
	/* 实现： "修改某学生信息"中调用 */
	public List getAll() { //查找所有专业信息（为加载专业下拉列表用）
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
