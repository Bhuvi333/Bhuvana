package com.shoppingcart.DAO;

import java.io.Serializable;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingcart.model.Supplier;

@Repository("subplierDAO")
public class SupplierDAOImple implements SupplierDAO{

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int insertRow(Supplier sup) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	 
	  session.saveOrUpdate(sup);
	  tx.commit();
	  Serializable id = session.getIdentifier(sup);
	  session.close();
	  return (Integer) id;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List pList = session.createQuery("from Supplier").list();
	  session.close();
	  return pList;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public Supplier getRowById(int id) {
	  Session session = sessionFactory.openSession();
	  Supplier sub = (Supplier) session.load(Supplier.class, id);
	  return sub;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int updateRow(Supplier sup) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(sup);
	  tx.commit();
	  Serializable id = session.getIdentifier(sup);
	  session.close();
	  return (Integer) id;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Supplier sup = (Supplier) session.load(Supplier.class, id);
	  session.delete(sup);
	  tx.commit();
	  Serializable ids = session.getIdentifier(sup);
	  session.close();
	  return (Integer) ids;
	 }

}