package com.greatlearning.crm.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greatlearning.crm.entity.Customer;

@Repository
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Customer> findAll() {
		Session session = this.sessionFactory.openSession();
		List<Customer> list = session.createQuery("from Customer").list();
		session.close();
		return list;
	}

	@Override
	public Customer findById(int theId) {
		Session session = this.sessionFactory.openSession();
		Customer customer = session.get(Customer.class, theId);
		session.close();
		return customer;

	}

	@Override
	public void save(Customer customer) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(customer);
		tx.commit();
		session.close();
	}

	@Override
	public void deleteById(int theId) {
		Session session = this.sessionFactory.openSession();
		Customer customer = findById(theId);
		if (customer != null) {
			Transaction tx = session.beginTransaction();
			session.delete(customer);
			tx.commit();
		}
		session.close();
	}
}