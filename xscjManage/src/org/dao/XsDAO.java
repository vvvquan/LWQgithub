package org.dao;
import java.util.*;
import org.model.*;
public interface XsDAO {
	/* ������ѧ����Ϣ��ѯ */
	public List findAll(int pageNow, int pageSize); //��ʾ����ѧ����Ϣ
	public int findXsSize();				//��ѯһ���ж�����ѧ����¼
	
	/* �������鿴ĳ��ѧ������ϸ��Ϣ */
	public Xsb find(String xh);  //����ѧ�Ų�ѯĳѧ����Ϣ
	
	/* ������ɾ��ѧ����Ϣ */
	public void delete(String xh); //����ѧ��ɾ��ѧ��
	
	/* ������ɾ��ѧ����Ϣ */
	public void update(Xsb xs); //�޸�ѧ����Ϣ
	
	/* ������ɾ��ѧ����Ϣ */
	public void save(Xsb xs); //����ѧ��
	
}
