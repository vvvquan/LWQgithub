package cn.maiba;

import java.sql.Timestamp;

public class Remark extends MyTableItem {
	public static final String TABLE_NAME = "REMARKS";

	Integer articleId;
	Integer userId;
	String remark;
	Timestamp remarkTime;

	public Remark(){
		articleId = 0 ;
		userId = 0 ;
		remark = "" ;
		remarkTime = new Timestamp(System.currentTimeMillis());
	}
	
	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Timestamp getRemarkTime() {
		return remarkTime;
	}

	public void setRemarkTime(Timestamp remarkTime) {
		this.remarkTime = remarkTime;
	}
}
