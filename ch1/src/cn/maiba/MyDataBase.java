package cn.maiba;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MyDataBase {
	static Map<String, Map> dataBase = Collections.synchronizedMap(new HashMap<String, Map>());
	
	/*
	 * �������ܣ� ��ָ�����ݿ���в���һ��
	 * ������
	 * 		tableName,ָ�����ݿ�������
	 * 		tableItem,Ҫ�������
	 * ����ֵ��
	 * 		����ɹ���true����ʧ�ܣ�false��
	 */
	@SuppressWarnings("unchecked")
	public static boolean save(String tableName, MyTableItem tableItem){
		if(dataBase.containsKey(tableName)){//������ݿ���Ѿ�����
			Map<Integer, MyTableItem> table = (Map<Integer, MyTableItem>) dataBase.get(tableName);
			if(table.containsKey(tableItem.getId())){//id�����ظ�
				return false;
			}else{
				table.put(tableItem.getId(), tableItem);
				return true;
			}
		}else{//������ݿ������
			Map<Integer, MyTableItem> table = new HashMap<Integer, MyTableItem>();
			table.put(tableItem.getId(), tableItem);
			dataBase.put(tableName, table);
			return true;
		}
	}
	
	/*
	 * �������ܣ� ��ȡָ�����ݿ����IDֵΪid����ֵ
	 * ������
	 * 		tableName,ָ�����ݿ�������
	 * 		id,Ҫ��ȡ�����id
	 * ����ֵ��
	 * 		ָ�����ݿ����IDֵΪid����ֵ
	 */
	@SuppressWarnings("unchecked")
	public static MyTableItem load(String tableName, Integer id){
		if(dataBase.containsKey(tableName)){
			Map<Integer, MyTableItem> table = (Map<Integer, MyTableItem>) dataBase.get(tableName);
			if(table.containsKey(id)){//id�����ظ�
				return table.get(id);
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
	
	/*
	 * �������ܣ� �޸�ָ�����ݿ���е�ĳһ��
	 * ������
	 * 		tableName,ָ�����ݿ�������
	 * 		tableItem,Ҫ�޸ĵ���Ѿ��޸ĵ�����
	 * ����ֵ��
	 * 		�޸ĳɹ���true����ʧ�ܣ�false��
	 */
	@SuppressWarnings("unchecked")
	public static boolean update(String tableName, MyTableItem tableItem){
		if(dataBase.containsKey(tableName)){
			Map<Integer, MyTableItem> table = (Map<Integer, MyTableItem>) dataBase.get(tableName);
			if(table.containsKey(tableItem.getId())){
				table.remove(tableItem.getId());
				table.put(tableItem.getId(), tableItem);
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
	}
	
	/*
	 * �������ܣ� ɾ��ָ�����ݿ����IDֵΪid����
	 * ������
	 * 		tableName,ָ�����ݿ�������
	 * 		id,Ҫɾ�������id
	 * ����ֵ��
	 * 		ɾ���ɹ���true����ʧ�ܣ�false��
	 */
	@SuppressWarnings("unchecked")
	public static boolean delete(String tableName, Integer id){
		if(dataBase.containsKey(tableName)){
			Map<Integer, MyTableItem> table = (Map<Integer, MyTableItem>) dataBase.get(tableName);
			if(table.containsKey(id)){//id�����ظ�
				table.remove(id);
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
	}
	
	/*
	 * �������ܣ� ����ָ�����ݿ��������
	 * ������
	 * 		tableName,ָ�����ݿ�������
	 * ����ֵ��
	 * 		�������ݿ��ֵ���б�
	 */
	@SuppressWarnings("unchecked")
	public static List list(String tableName){
		if(!dataBase.containsKey(tableName)){
			return null;
		}
		Map<Integer, MyTableItem> table = (Map<Integer, MyTableItem>)dataBase.get(tableName);
		List itemList = new ArrayList();
		itemList.addAll(table.values());
		return itemList;
	}
	
	/*
	 * �������ܣ� ����ָ�����ݿ��ָ����Ϊ�ض�ֵ����������
	 * ������
	 * 		tableName,ָ�����ݿ�������
	 * 		tableColName,ָ���е�����
	 * 		tableColValue,ָ���е�ֵ
	 * ����ֵ��
	 * 		ָ�����ݿ���з���������������
	 * �÷���
	 * 		List userList = MyDataBase.select(
	 * 							User.TABLE_NAME,"account","weijianlee");
	 * 		���������˺�(account)Ϊ"weijianlee"���û���Ϣ(User��)��
	 */
	@SuppressWarnings("unchecked")
	public static List select(String tableName, String tableColName, Object tableColValue, String operator)throws Exception{
		if(!dataBase.containsKey(tableName)){
			return null;
		}
		if(DBOperator.isNotOperator(operator)){
			return null;
		}
		
		Map<Integer, MyTableItem> table = (Map<Integer, MyTableItem>)dataBase.get(tableName);
		List<MyTableItem> itemList = new ArrayList();
		itemList.addAll(table.values());
		List<MyTableItem> selectList = new ArrayList();
		MyTableItem tableItem;
		Method myMethod;
		Class[] parameterTypes = new Class[] {};  
		Object[] parameters =  new Object[] {}; 
		Object result;
		for(int i=0; i<itemList.size(); i++){
			tableItem = itemList.get(i);
			myMethod = tableItem.getClass().getMethod(MyUtil.getGetter(tableColName),parameterTypes);
			
			result = MyUtil.excute(tableItem, myMethod, parameters);
//			System.out.println("result:"+result);
			if(DBOperator.operate(operator, result, tableColValue)){
				selectList.add(itemList.get(i));
			}else{
				
			}
		}
		if( selectList!=null && selectList.size()!=0){
			return selectList;
		}else{//���û�����ݣ��򷵻�null
			return null;
		}
	}
	
	/*
	 * �������ܣ� ����ָ�����ݿ��ָ����Ϊ�ض�ֵ�����ݣ���������ݴ��ڣ��򷵻ص�һ������ֵ�����û�������򷵻�null
	 * ������
	 * 		tableName,ָ�����ݿ�������
	 * 		tableColName,ָ���е�����
	 * 		tableColValue,ָ���е�ֵ
	 * ����ֵ��
	 * 		ָ�����ݿ���з�����������ֵ����������ݴ��ڣ��򷵻ص�һ������ֵ�����û�������򷵻�null
	 * �÷���
	 * 		User user = MyDataBase.uniqueValue(
	 * 							User.TABLE_NAME,"account","weijianlee");
	 * 		�����User���ݿ���У�(account)Ϊ"weijianlee"�û���Ϣ�棬�򷵻ظ������ݵ�һ��(User��)�����򷵻�null
	 */
	@SuppressWarnings("unchecked")
	public static Object uniqueValue(String tableName, String tableColName, Object tableColValue, String operator)throws Exception{
		List list = MyDataBase.select(tableName, tableColName, tableColValue, operator);
		//���Ҫ��ȡ�����ݴ��ڣ����ظ���ֵ
		if( list!=null && list.size()!=0){
			return list.get(0);
		}else{//���û�����ݣ��򷵻�null
			return null;
		}
	}
}
