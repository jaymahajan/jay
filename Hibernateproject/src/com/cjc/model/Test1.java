package com.cjc.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class Test1 {
	public static void main(String[] args) {
     /*StandardServiceRegistry registry=new StandardServiceRegistryBuilder().configure().build();
		
		MetadataSources mds=new MetadataSources(registry);
		
		Metadata md=mds.getMetadataBuilder().build();
		
		SessionFactory sessionFactory=md.getSessionFactoryBuilder().build();
		
		Session session=sessionFactory.openSession();*/
		Session session=HibernateUtil.getSessionFactory().openSession();
		
		//Student stu=session.load(Student.class,1);
		Student stu=session.get(Student.class, 1);
		
		System.out.println(stu.getRollno());
		System.out.println(stu.getName());
		System.out.println(stu.getAddr());

	}

}
