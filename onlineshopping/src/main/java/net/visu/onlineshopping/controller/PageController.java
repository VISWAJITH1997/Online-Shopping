package net.visu.onlineshopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.visu.shoppingBackend.dao.CategoryDAO;
import net.visu.shoppingBackend.dto.Category;

@Controller
public class PageController {

	@Autowired
	private CategoryDAO categoryDAO;
	//CategoryDAO categoryDAO=new CategoryDAO();

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickHome", true);
		// passing list of categories
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("title", "Home");
		return mv;
	}

	@RequestMapping(value = "/blog")
	public ModelAndView blog() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickBlog", true);
		mv.addObject("title", "Blog");
		return mv;
	}

	@RequestMapping(value = "/services")
	public ModelAndView services() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickServices", true);
		mv.addObject("title", "Services");
		return mv;
	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickContact", true);
		mv.addObject("title", "Contact Us");
		return mv;
	}

	@RequestMapping(value = "/shop")
	public ModelAndView showAllProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickAllProducts", true);
		// passing list of categories
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("title", "Shop");
		return mv;
	}

	@RequestMapping(value = "/{id}")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");
		// categoryDAO to fetch a single category
		Category category = null;

		category = categoryDAO.get(id);

		mv.addObject("title", category.getName());
		// passing list of categories
		mv.addObject("categories", categoryDAO.list());
		// passing the single category object
		mv.addObject("category", category);
		mv.addObject("userClickCategoryProducts", true);
		return mv;
	}
}
