package com.cjc.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class Test {
	public static void main(String[] args) {
		
/*StandardServiceRegistry registry=new StandardServiceRegistryBuilder().configure().build();
		
		MetadataSources mds=new MetadataSources(registry);
		
		Metadata md=mds.getMetadataBuilder().build();
		
		SessionFactory sessionFactory=md.getSessionFactoryBuilder().build();
		
		Session session=sessionFactory.openSession();*/
		
		Session session=HibernateUtil.getSessionFactory().openSession();
		
		Student stu=new Student();
		
		stu.setRollno(1);
		stu.setName("xyz");
		stu.setAddr("karvenagar");
		
		session.save(stu);
		session.beginTransaction().commit();
		
		
		
		
		
	}

}
