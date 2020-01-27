package com.evozon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
import com.evozon.validator.ProductValidator;

@Controller
@RequestMapping(value = "/")
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private UtilService utilService;
	@Autowired
	private ProductValidator productValidator;

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listOfProducts(Model model) {
		model.addAttribute("products", productService.getAll());
		return "products";
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public String showAddProductForm(Model model) {
		model.addAttribute("productDTO", new Product());
		model.addAttribute("categories", categoryService.getAll());
		return "addProduct";
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("productDTO") ProductDTO productDTO, BindingResult bindingResult,
			Model model) {
		productValidator.validate(productDTO, bindingResult);

		if (bindingResult.hasErrors()) {
			model.addAttribute("categories", categoryService.getAll());
			return "addProduct";
		}

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
