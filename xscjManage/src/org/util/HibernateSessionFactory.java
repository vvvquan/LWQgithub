package org.util;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.service.ServiceRegistry;

public class HibernateSessionFactory {
	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();
	private static org.hibernate.SessionFactory sessionFactory;
	private static ServiceRegistry serviceRegistry;
	static{
		try{
			serviceRegistry = new StandardServiceRegistryBuilder().configure().build();
			sessionFactory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		}catch(Exception e){
			System.err.println("%%%% Error Creating Session Factory %%%%");
			e.printStackTrace();
		}
	}
	private HibernateSessionFactory(){}
		
	
	public static Session getSession() throws HibernateException{
		Session session = (Session)threadLocal.get();
		if(session ==  null || !session.isOpen()){
			if(sessionFactory == null){
				rebuildSessionFactory();
			}
			session = (sessionFactory != null ? sessionFactory.openSession() : null);
			threadLocal.set(session);
		}
		return session;
	}
	
	public static void rebuildSessionFactory(){
		try{
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static void closeSession() throws HibernateException{
		try{
			Session session = (Session)threadLocal.get();
			threadLocal.set(null);
			if(session != null){
				session.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static org.hibernate.SessionFactory getSessionFactory(){
		return sessionFactory;
	}
}
