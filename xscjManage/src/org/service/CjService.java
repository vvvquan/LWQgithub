package org.service;

import java.util.List;

import org.model.Cjb;

public interface CjService {
	/* 成绩信息录入 */
	public Cjb getXsCj(String xh, String kch);  //根据学号和课程号查询学生成绩 
	public void saveorupdateCj(Cjb cj);			//录入学生成绩
	/* 学生成绩信息查询  */
	public List findAllCj(int pageNow, int pageSize); //分页显示所有学生成绩
	public int findCjSize();							//查询一共有多少条成绩记录
	/* 查看某个学生的成绩表 */
	public List getXsCjList(String xh);		//获取某学生的成绩列表
	/* 删除学生成绩  */
	public void deleteCj(String xh, String kch);  //根据学号和课程号删除学生成绩 
	public void deleteOneXsCj(String xh);			//删除某学生的成绩（在删除该生信息时对应删除）
}
