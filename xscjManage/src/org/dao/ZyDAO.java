package org.dao;
import org.model.*;
import java.util.*;
public interface ZyDAO {
	/* ������"ѧ����Ϣ��ѯ"�е��� */
	public Zyb getOneZy(Integer zyId); //����רҵID����רҵ��Ϣ
	public String getOneZym(Integer zyId);
	/* ������ "�޸�ĳѧ����Ϣ"�е��� */
	public List getAll(); //��������רҵ��Ϣ��Ϊ����רҵ�����б��ã�
}
