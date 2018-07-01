package cn.maiba;

import java.sql.Timestamp;


public class Article extends MyTableItem {
	public static final String TABLE_NAME="ARTICLES"; 
	
	String title;//������Ŀ
	String content;//��������
	Integer userId;//���·�����
	int remarkNum;//���»ظ���
	int hitNum;//���µ����
	Timestamp createTime;//���·���ʱ��
	Timestamp lastRemarkTime;//�������ظ�ʱ��

	public Article(){
		title = "";
		content = "";
		userId = 0;
		remarkNum = 0;
		hitNum = 0 ;
		createTime = new Timestamp(System.currentTimeMillis());//��ǰʱ��
		lastRemarkTime = new Timestamp(System.currentTimeMillis());//��ǰʱ��
	}
	
	public void IncreaseRemarkNum(){
		remarkNum ++ ;
	}
	
	public void IncreaseHitNum(){
		hitNum ++ ;
	}
	
	public int getRemarkNum() {
		return remarkNum;
	}

	public void setRemarkNum(int remarkNum) {
		this.remarkNum = remarkNum;
	}

	public int getHitNum() {
		return hitNum;
	}

	public void setHitNum(int hitNum) {
		this.hitNum = hitNum;
	}

	public Timestamp getLastRemarkTime() {
		return lastRemarkTime;
	}

	public void setLastRemarkTime(Timestamp lastRemarkTime) {
		this.lastRemarkTime = lastRemarkTime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
}
