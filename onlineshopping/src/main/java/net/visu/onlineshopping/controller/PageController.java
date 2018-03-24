package net.visu.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickHome", true);
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
	
	@RequestMapping(value = "/shop")
	public ModelAndView shop() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickShop", true);
		mv.addObject("title", "Shop");
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
}
