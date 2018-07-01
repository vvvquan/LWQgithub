package org.dao.imp;

import java.util.List;

import org.dao.BaseDAO;
import org.dao.CjDAO;
import org.hibernate.*;
import org.model.Cjb;
import org.model.CjbId;
import org.model.Xsb;

public class CjDAOImp extends BaseDAO implements CjDAO {

	/* ʵ�֣��ɼ���Ϣ¼�� */
	public Cjb getXsCj(String xh, String kch) {  //����ѧ�źͿγ̺Ų�ѯѧ���ɼ�
		CjbId cjbId = new CjbId();
		cjbId.setXh(xh);
		cjbId.setKch(kch);
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		Cjb cj = (Cjb)session.get(Cjb.class, cjbId);
		session.close();
		return cj;
	}
	
	public void saveorupdate(Cjb cj) {  //¼��ѧ���ɼ�
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		session.saveOrUpdate(cj);
		ts.commit();
		session.close();
	}

	/* ʵ�֣�ѧ���ɼ���ѯ  */
	public List findAllCj(int pageNow, int pageSize) {  //��ҳ��ʾ����ѧ���ɼ�
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("select c.id.xh, a.xm, b.kcm, c.cj, c.xf, c.id.kch from Xsb a, Kcb b, Cjb c where a.xh=c.id.xh and b.kch=c.id.kch");
		int firstResult = (pageNow-1) * pageSize;
		query.setFirstResult(firstResult);  //��ҳ��ʾ����ѧ���ɼ�
		query.setMaxResults(pageSize);    //���ҵ����������
		List list = query.list();
		ts.commit();
		session.close();
		return list;
	}

	@Override
	public int findCjSize() {  //��ѯһ���������ɼ���¼
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

	/* ʵ�֣��鿴ĳѧ���ĳɼ��� */
	public List getXsCjList(String xh) {  //��ȡĳѧ���ĳɼ��б�
		Session session = getSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("select a.xm, b.kcm, c.cj, c.xf from Xsb a, Kcb b, Cjb c where c.id.xh=? and a.xh=c.id.xh and b.kch=c.id.kch");
		query.setParameter(0, xh);
		List list = query.list();
		ts.commit();
		session.close();
		return list;
	}

	/* ������ɾ��ѧ���ɼ� */
	public void deleteCj(String xh, String kch) {  //����ѧ�źͿγ̺�ɾ��ѧ���ɼ�
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
	public void deleteOneXsCj(String xh) {  //ɾ��ĳѧ���ĳɼ�����ɾ�������ɼ�ʱ��Ӧɾ����
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
