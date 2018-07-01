package org.dao;
import java.util.*;
import org.model.*;
public interface KcDAO {
	public List findAll(int pageNow, int pageSize); //��ѯ���пγ���Ϣ
	public int findKcSize();	//��ѯһ���ж������γ���Ϣ
	public Kcb find(String kch);	//���ݿγ̺Ų��ҿγ���Ϣ
	public void deleteOneKc(String kch); //���ݿγ̺�ɾ���γ���Ϣ
	public void saveorupdateKc(Kcb kc);  //���ݿγ̺���ӻ��޸Ŀγ���Ϣ
	public void save(Kcb kc);
}
