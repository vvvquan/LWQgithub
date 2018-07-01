package org.dao;
import org.model.*;
public interface DlDAO {
	//根据学号和口令查找
	public Dlb find(String xh, String kl);
	//注册
	public void save(Dlb dl);
	public void saveorupdateDl(Dlb dl);
	public Dlb find(String xh);
	//退出
	public void exit();
}
