package com.evozon.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evozon.dao.ProductDAO;
import com.evozon.model.Product;
import com.evozon.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Override
	@Transactional
	public Product getById(int id) {
		return productDAO.getById(id);
	}

	@Override
	@Transactional
	public List<Product> getAll() {
		return productDAO.getAll();
	}

	@Override
	@Transactional
	public void addProduct(Product product) {
		productDAO.addProduct(product);
	}

	@Transactional
	@Override
	public void deleteProduct(int id) {
		productDAO.deleteProduct(id);
	}

}
