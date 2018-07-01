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
	 * 函数功能： 往指定数据库表中插入一项
	 * 参数：
	 * 		tableName,指定数据库表的名称
	 * 		tableItem,要插入的项
	 * 返回值：
	 * 		插入成功（true）或失败（false）
	 */
	@SuppressWarnings("unchecked")
	public static boolean save(String tableName, MyTableItem tableItem){
		if(dataBase.containsKey(tableName)){//如果数据库表已经存在
			Map<Integer, MyTableItem> table = (Map<Integer, MyTableItem>) dataBase.get(tableName);
			if(table.containsKey(tableItem.getId())){//id不可重复
				return false;
			}else{
				table.put(tableItem.getId(), tableItem);
				return true;
			}
		}else{//如果数据库表不存在
			Map<Integer, MyTableItem> table = new HashMap<Integer, MyTableItem>();
			table.put(tableItem.getId(), tableItem);
			dataBase.put(tableName, table);
			return true;
		}
	}
	
	/*
	 * 函数功能： 读取指定数据库表中ID值为id的项值
	 * 参数：
	 * 		tableName,指定数据库表的名称
	 * 		id,要读取的项的id
	 * 返回值：
	 * 		指定数据库表中ID值为id的项值
	 */
	@SuppressWarnings("unchecked")
	public static MyTableItem load(String tableName, Integer id){
		if(dataBase.containsKey(tableName)){
			Map<Integer, MyTableItem> table = (Map<Integer, MyTableItem>) dataBase.get(tableName);
			if(table.containsKey(id)){//id不可重复
				return table.get(id);
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
	
	/*
	 * 函数功能： 修改指定数据库表中的某一项
	 * 参数：
	 * 		tableName,指定数据库表的名称
	 * 		tableItem,要修改的项，已经修改的内容
	 * 返回值：
	 * 		修改成功（true）或失败（false）
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
	 * 函数功能： 删除指定数据库表中ID值为id的项
	 * 参数：
	 * 		tableName,指定数据库表的名称
	 * 		id,要删除的项的id
	 * 返回值：
	 * 		删除成功（true）或失败（false）
	 */
	@SuppressWarnings("unchecked")
	public static boolean delete(String tableName, Integer id){
		if(dataBase.containsKey(tableName)){
			Map<Integer, MyTableItem> table = (Map<Integer, MyTableItem>) dataBase.get(tableName);
			if(table.containsKey(id)){//id不可重复
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
	 * 函数功能： 读出指定数据库表所有项
	 * 参数：
	 * 		tableName,指定数据库表的名称
	 * 返回值：
	 * 		整个数据库的值的列表
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
	 * 函数功能： 读出指定数据库表指定列为特定值的所有数据
	 * 参数：
	 * 		tableName,指定数据库表的名称
	 * 		tableColName,指定列的名字
	 * 		tableColValue,指定列的值
	 * 返回值：
	 * 		指定数据库表中符合条件的所有项
	 * 用法：
	 * 		List userList = MyDataBase.select(
	 * 							User.TABLE_NAME,"account","weijianlee");
	 * 		返回所有账号(account)为"weijianlee"的用户信息(User类)。
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
		}else{//如果没有数据，则返回null
			return null;
		}
	}
	
	/*
	 * 函数功能： 读出指定数据库表指定列为特定值的数据，如果该数据存在，则返回第一行数据值；如果没有数据则返回null
	 * 参数：
	 * 		tableName,指定数据库表的名称
	 * 		tableColName,指定列的名字
	 * 		tableColValue,指定列的值
	 * 返回值：
	 * 		指定数据库表中符合条件数据值。如果该数据存在，则返回第一行数据值；如果没有数据则返回null
	 * 用法：
	 * 		User user = MyDataBase.uniqueValue(
	 * 							User.TABLE_NAME,"account","weijianlee");
	 * 		如果在User数据库表中，(account)为"weijianlee"用户信息存，则返回该行数据第一行(User类)，否则返回null
	 */
	@SuppressWarnings("unchecked")
	public static Object uniqueValue(String tableName, String tableColName, Object tableColValue, String operator)throws Exception{
		List list = MyDataBase.select(tableName, tableColName, tableColValue, operator);
		//如果要读取的数据存在，返回该项值
		if( list!=null && list.size()!=0){
			return list.get(0);
		}else{//如果没有数据，则返回null
			return null;
		}
	}
}
