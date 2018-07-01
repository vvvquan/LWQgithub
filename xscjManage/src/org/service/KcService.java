package org.service;

import java.util.List;

import org.model.Kcb;

public interface KcService {
	public List findAll(int pageNow, int pageSize); //�ҵ����д�pageNow��ʼ����pageSize���Ŀγ�
	public int findKcSize();     //�γ�����
	public Kcb find(String kch); //���ݿγ̺��ҵ��γ�
	public void deleteOneKc(String kch); //���ݿγ̺�ɾ���γ�
	public void saveorupdateKc(Kcb kc);  //��ӻ��޸Ŀγ���Ϣ
	public void save(Kcb kc2);
}
