package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import dto.Dto;

public class Dao {
EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
EntityManager em=emf.createEntityManager();
EntityTransaction et=em.getTransaction();

public void save(Dto a) {
	et.begin();
	em.persist(a);
	et.commit();
}
public List<Dto> featchall(){
	return em.createQuery("select s from Dto s").getResultList();
}
public String delete(int id) {
	Dto d1=em.find(Dto.class, id);
	if(d1!=null) {
	et.begin();
	em.remove(d1);
	et.commit();
	return "<h1>Data delete</h1>";
}else
	return "<h1>Data not found</h1>";
}
public Dto featchById(int id) {
	Dto dto=em.find(Dto.class, id);
	return dto;
}
public void update(Dto b) {
	et.begin();
	em.merge(b);
	et.commit();
}
}