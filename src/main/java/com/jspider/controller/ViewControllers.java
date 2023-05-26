package com.jspider.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.jspider.entity.Product;
import com.jspider.entity.ProductDao;
import com.jspider.entity.User;

@Controller
public class ViewControllers {

	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String home() {

		return "loginbegin";
	}

	// Add Product Page
	@RequestMapping("/add")
	public String add() {

		return "addproduct";
	}

	// add product finally
	@RequestMapping(value = "/view", method = RequestMethod.POST)
	public String handle(@ModelAttribute Product product, Model m) {
		// System.out.println(product);
		this.productDao.createProduct(product);
		List<Product> products = productDao.getProducts();
		m.addAttribute("product", products);
		return "viewproduct";
	}

	// remove product

	@RequestMapping("/remove")
	public String remove(Model m) {

		List<Product> products = productDao.getProducts();
		m.addAttribute("product", products);
		return "remove";
	}

	@RequestMapping("/remove/{productId}")
	public RedirectView removeproduct(@PathVariable("productId") int productId, HttpServletRequest request) {
		this.productDao.deleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/remove");
		return redirectView;
	}

	@RequestMapping("/update")
	public String update(Model m) {

		List<Product> products = productDao.getProducts();
		m.addAttribute("product", products);
		return "update";
	}

	@RequestMapping("/update-handle/{productId}")
	public String uproduct(@PathVariable("productId") int productId, Model model) {

		Product product = this.productDao.getProduct(productId);
		model.addAttribute("product", product);
		return "updateproduct";
	}

	@RequestMapping("/search")
	public String found(@RequestParam("query") int pId, Model model) {

		Product product = (Product) this.productDao.getProduct(pId);
		model.addAttribute("product", product);
		return "search";
	}

	///
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String loginpage(ModelMap modelMap) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginprocess(@RequestParam("name") String name, @RequestParam("password") String password,
			ModelMap modelMap) {

		if (name.equals("admin") && password.equals("admin123")) {
			modelMap.addAttribute("name", name);
			return "index2";
		} else {
			modelMap.addAttribute("error", "Invalid Username or Password");
			System.out.println("else block");
			return "login";
		}
	}

	@RequestMapping("/index2")
	public String shortindex(Model m) {
		List<Product> products = productDao.getProducts();
		m.addAttribute("product", products);
		return "index2";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest httpServletRequest) {

		HttpSession httpSession = httpServletRequest.getSession(false);
		if (httpSession != null) {
			httpSession.invalidate();
		}
		return "login";
	}
}
