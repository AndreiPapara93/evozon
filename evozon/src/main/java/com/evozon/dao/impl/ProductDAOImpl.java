package com.evozon.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.evozon.dao.ProductDAO;
import com.evozon.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Product getById(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Product product = currentSession.get(Product.class, id);
		return product;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> getAll() {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Product> products = currentSession.createQuery("from Product").list();
		return products;
	}

	@Override
	public void addProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
	}

	@Override
	public void deleteProduct(int id) {
		Session session = sessionFactory.getCurrentSession();
		Product product = session.get(Product.class, id);
		session.delete(product);
	}
}
