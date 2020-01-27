package com.evozon.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evozon.dao.CategoryDAO;
import com.evozon.model.Category;
import com.evozon.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	@Transactional
	public Category getById(int id) {
		return categoryDAO.getById(id);
	}

	@Override
	@Transactional
	public List<Category> getAll() {
		return categoryDAO.getAll();
	}

	@Override
	@Transactional
	public void addCategory(Category category) {
		categoryDAO.addCategory(category);
	}

	@Transactional
	@Override
	public void deleteCategory(int id) {
		categoryDAO.deleteCategory(id);
	}

}
