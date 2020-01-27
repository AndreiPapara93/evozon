package com.evozon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.evozon.model.Category;
import com.evozon.service.CategoryService;

@Controller
@RequestMapping(value = "/")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String listOfProducts(Model model) {
		model.addAttribute("categories", categoryService.getAll());
		return "categories";
	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.GET)
	public String showCategoryForm(Model model) {
		model.addAttribute("category", new Category());
		return "addCategory";
	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public String addProductForm(@ModelAttribute("category") Category category) {
		categoryService.addCategory(category);
		return "redirect:/categories";
	}

	@RequestMapping(value = "category/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		categoryService.deleteCategory(id);
		return "redirect:/categories";
	}
}
