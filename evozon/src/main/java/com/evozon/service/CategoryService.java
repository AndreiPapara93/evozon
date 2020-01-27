package com.evozon.service;

import java.util.List;

import com.evozon.model.Category;

public interface CategoryService {

	/*
	 * Retrieves a category from the DB based on the id
	 */
	Category getById(int id);

	/*
	 * Retrieves all the categories from the DB
	 */
	List<Category> getAll();

	/*
	 * Adds a new category to the DB
	 */
	void addCategory(Category category);

	/*
	 * Delete a category from the DB
	 */
	void deleteCategory(int id);
}
