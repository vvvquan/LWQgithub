package org.service;

import java.util.List;

import org.model.Zyb;

public interface ZyService {
	/* ѧ����Ϣ��ѯ */
	public Zyb getOneZy(Integer zyId);  /* ����רҵID����רҵ��Ϣ  */
	public String getOneZym(Integer zyId);
	/* �޸�ĳѧ����Ϣ */
	public List  getAll();  /* ��������רҵ��Ϣ��Ϊ����רҵ�����б��ã�  */
}
