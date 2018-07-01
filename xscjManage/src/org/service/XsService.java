package org.service;

import java.util.List;
import org.model.Xsb;

public interface XsService {
	/* 学生信息查询 */
	public List findAll(int pageNow, int pageSize);
	public int findXsSize();
	/* 查看某个学生的详细信息 */
	public Xsb find(String xh);
	/* 删除某个学生的详细信息 */	
	public void delete(String xh);
	/* 修改某个学生的详细信息 */	
	public void update(Xsb xs);
	/* 学生信息录入 */	
	public void save(Xsb xs);
}
