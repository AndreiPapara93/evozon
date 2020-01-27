package com.evozon.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.evozon.dao.CategoryDAO;
import com.evozon.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Category getById(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Category category = currentSession.get(Category.class, id);
		return category;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Category> getAll() {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Category> categories = currentSession.createQuery("from Category").list();
		return categories;
	}

	@Override
	public void addCategory(Category category) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(category);
	}

	@Override
	public void deleteCategory(int id) {
		Session session = sessionFactory.getCurrentSession();
		Category category = session.get(Category.class, id);
		session.delete(category);
	}
}
