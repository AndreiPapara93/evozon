package com.evozon.service;

import com.evozon.dto.ProductDTO;
import com.evozon.model.Category;
import com.evozon.model.Product;

public interface UtilService {

	Product fromProductDTOtoProduct(ProductDTO productDTO, Category category);
	
}
