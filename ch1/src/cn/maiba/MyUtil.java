package cn.maiba;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class MyUtil { 
	
	/*
	 * 转换setter,getter
	 * for example：
	 * 		User类有一个数据成员为：account，有了获得该数据成员的getter,
	 * 	调用getGetter("account")，得到该数据成员的getter：getAccount
	 */
	public static String getGetter(String DataMember){
		return DataMember = "get" +
							DataMember.substring(0, 1).toUpperCase() +
							DataMember.substring(1,DataMember.length());
	}
	
	public static String getSetter(String DataMember){
		return DataMember = "set" +
							DataMember.substring(0, 1).toUpperCase() +
							DataMember.substring(1,DataMember.length());
	}
	
	public static Object excute(Object classObject, Method myMethod, Object[] parameters) throws Exception {
		String errorMsg; 
		
		try 
		{ 
			//调用该方法 
			return myMethod.invoke(classObject, parameters); 
		} 
		catch(InvocationTargetException invokeE) 
		{ 
			//不抓运行方法过程中发生的错误 
			errorMsg = invokeE.getTargetException().getMessage(); 
		} 
		
		throw new Exception("通过Java自省机制调用函数出错："+errorMsg); 
	}
}
