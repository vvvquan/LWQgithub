package org.service;

import java.util.List;
import org.model.Xsb;

public interface XsService {
	/* ѧ����Ϣ��ѯ */
	public List findAll(int pageNow, int pageSize);
	public int findXsSize();
	/* �鿴ĳ��ѧ������ϸ��Ϣ */
	public Xsb find(String xh);
	/* ɾ��ĳ��ѧ������ϸ��Ϣ */	
	public void delete(String xh);
	/* �޸�ĳ��ѧ������ϸ��Ϣ */	
	public void update(Xsb xs);
	/* ѧ����Ϣ¼�� */	
	public void save(Xsb xs);
}
