package com.cjc.daoimpl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjc.dao.HomeDao;
import com.cjc.model.Student;
@Repository
public class HomeDaoImpl implements HomeDao{
    @Autowired
	SessionFactory sf;
	@Override
	public int saveData(Student s) {
		
		Session session = sf.openSession();
		int id =(int) session.save(s);
		session.beginTransaction().commit();
		return id;
	}

	@Override
	public List<Student> loginCheck(String uname, String pass) {
		Session ses = sf.openSession();
		if(uname.equals("admin")&&pass.equals("admin")){
			Query q =ses.createQuery("From Student");
			
			List<Student> lists= q.getResultList();
			return lists;
		}
		else{
			
			Query q = ses.createQuery("From Student where uname=:uname and pass=:pass");
			
			q.setParameter("uname", uname);
			q.setParameter("pass",pass);
			
			List<Student> lists = q.getResultList();
			return lists;
		}
	}

	@Override
	public List<Student> deleteRecord(int id) {
           
		Session session= sf.openSession();
		
		Student stu = session.get(Student.class,id);
		session.delete(stu);
		session.beginTransaction().commit();
		Query  q= session.createQuery("From Student");
		List<Student> lists= q.getResultList();
		return lists;
	}

	@Override
	public Student editRecord(int id) {

        Session session = sf.openSession();
        Student stu = session.get(Student.class,id);
		return stu;
	}

	@Override
	public List<Student> updateRecord(Student s) {
		Session ses = sf.openSession();
		ses.update(s);
		
		ses.beginTransaction().commit();
		
		Query q = ses.createQuery("From Student");
		List<Student> lists = q.getResultList();
		return lists;
	}
	

}
