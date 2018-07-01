package cn.maiba;

public abstract class MyTableItem {
	static Integer autoId = 1;//用于自动产生id
	Integer id;

	public MyTableItem(){
		id = autoId;
		autoId ++;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
}
