package org.dao;
import org.model.*;
import java.util.*;
public interface ZyDAO {
	/* 方法："学生信息查询"中调用 */
	public Zyb getOneZy(Integer zyId); //根据专业ID查找专业信息
	public String getOneZym(Integer zyId);
	/* 方法： "修改某学生信息"中调用 */
	public List getAll(); //查找所有专业信息（为加载专业下拉列表用）
}
