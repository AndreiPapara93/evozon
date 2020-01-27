package com.evozon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.evozon.dto.ProductDTO;
import com.evozon.model.Category;
import com.evozon.model.Product;
import com.evozon.service.CategoryService;
import com.evozon.service.ProductService;
import com.evozon.service.UtilService;

@Controller
@RequestMapping(value = "/")
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private UtilService utilService;

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listOfProducts(Model model) {
		model.addAttribute("products", productService.getAll());
		return "products";
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public String showAddProductForm(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("categories", categoryService.getAll());
		return "addProduct";
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("productDTO") ProductDTO productDTO) {

		Category category = categoryService.getById(Integer.parseInt(productDTO.getCategory()));
		Product product = utilService.fromProductDTOtoProduct(productDTO, category);
		productService.addProduct(product);

		return "redirect:/products";
	}

	@RequestMapping(value = "product/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		productService.deleteProduct(id);
		return "redirect:/products";
	}

}
