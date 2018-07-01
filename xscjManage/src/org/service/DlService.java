package org.service;

import org.model.Dlb;

public interface DlService {
	public Dlb find(String xh, String kl);
	public void saveorupdateDl(Dlb dl);  //添加或修改课程信息
	public void save(Dlb dl);
	public Dlb find(String xh);
	public void exit();
}
