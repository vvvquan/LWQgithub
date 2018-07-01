package cn.maiba;

import org.apache.commons.lang.StringUtils;

/*
 * MyDataBase数据库支持的查询操作
 */
public class DBOperator {
	public static final String OP_EQUAL="=";
	public static final String OP_LIKE="like";
	
	public static boolean  isOperator(String op){
		if(StringUtils.equals(op.toLowerCase(), OP_EQUAL)){
			return true;
		}
		if(StringUtils.equals(op.toLowerCase(), OP_LIKE)){
			return true;
		}
		
		return false;
	}
	
	public static boolean isNotOperator(String op){
		return !isOperator(op);
	}
	
	public static boolean operate(String op, Object obj1, Object obj2){
		if(StringUtils.equals(op.toLowerCase(), OP_EQUAL)){
			return obj1.equals(obj2);
		}
		//返回结果：obj1是否包含了obj2的内容
		if(StringUtils.equals(op.toLowerCase(), OP_LIKE)){
			String str1 = obj1.toString();
			String str2 = obj2.toString();
			return StringUtils.contains(str1, str2);
		}
		
		return false;
	}
}
