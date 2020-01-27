package com.evozon.service;

import java.util.List;

import com.evozon.model.Product;

public interface ProductService {

	/*
	 * Retrieves a product from the DB based on the id
	 */
	Product getById(int id);

	/*
	 * Retrieves all the products from the DB
	 */
	List<Product> getAll();

	/*
	 * Adds a new product to the DB
	 */
	void addProduct(Product product);

	/*
	 * Delete a product from the DB
	 */
	void deleteProduct(int id);
}
