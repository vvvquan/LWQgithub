package org.dao;
import org.model.*;
public interface DlDAO {
	//����ѧ�źͿ������
	public Dlb find(String xh, String kl);
	//ע��
	public void save(Dlb dl);
	public void saveorupdateDl(Dlb dl);
	public Dlb find(String xh);
	//�˳�
	public void exit();
}
