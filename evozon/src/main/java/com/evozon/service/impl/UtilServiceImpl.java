package com.evozon.service.impl;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.evozon.dto.ProductDTO;
import com.evozon.model.Category;
import com.evozon.model.Product;
import com.evozon.service.UtilService;

@Service
public class UtilServiceImpl implements UtilService {

	@Override
	public Product fromProductDTOtoProduct(ProductDTO productDTO, Category category) {
		
		Product product = new Product();
		
		product.setName(productDTO.getName());
		product.setCode(productDTO.getCode());
		product.setCategory(category);
		
		Date date = new Date();
		
		product.setCreationDate(date);

		return product;
	}

}
