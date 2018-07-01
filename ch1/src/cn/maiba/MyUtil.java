package cn.maiba;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class MyUtil { 
	
	/*
	 * ת��setter,getter
	 * for example��
	 * 		User����һ�����ݳ�ԱΪ��account�����˻�ø����ݳ�Ա��getter,
	 * 	����getGetter("account")���õ������ݳ�Ա��getter��getAccount
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
			//���ø÷��� 
			return myMethod.invoke(classObject, parameters); 
		} 
		catch(InvocationTargetException invokeE) 
		{ 
			//��ץ���з��������з����Ĵ��� 
			errorMsg = invokeE.getTargetException().getMessage(); 
		} 
		
		throw new Exception("ͨ��Java��ʡ���Ƶ��ú�������"+errorMsg); 
	}
}
