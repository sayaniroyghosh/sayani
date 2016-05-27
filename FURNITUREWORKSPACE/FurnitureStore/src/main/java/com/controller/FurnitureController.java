package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.ProductDAO;
import com.model.Product;
import com.model.ProductList;
import com.service.ProductService;

@Controller
public class FurnitureController {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/")
	public ModelAndView getHome() {
		return new ModelAndView("index");
	}

	@RequestMapping(value = { "/aboutus" })
	public ModelAndView getaboutus() {
		return new ModelAndView("aboutus");
	}

	@RequestMapping(value = { "/contactus" })
	public ModelAndView getcontactus() {
		return new ModelAndView("contactus");

	}

	@RequestMapping(value = { "/allproducts", "/admin/allproducts" })
	public ModelAndView getProductList() {
		ProductList plist = productDAO.getAllProducts();
		ModelAndView model = new ModelAndView("allproducts");

		model.addObject("productlist", plist.toString());
		return model;
	}

	private ServletContext servletContext;

	@RequestMapping("/viewproductdetails--{productId}--product")
	public ModelAndView viewproductdetails(@ModelAttribute Product product, @PathVariable int productId) {

		Product P = productDAO.getProductById(productId);

		ModelAndView model = new ModelAndView("viewproductdetails");
		model.addObject("product", P);
		return model;
	}

	@RequestMapping("/addproduct")
	public ModelAndView addProduct() {
		ModelAndView model = new ModelAndView("addproduct");

		return model;
	}

	@ModelAttribute("product")
	public Product construct() {
		return new Product();
	}

	@ModelAttribute("user")
	public User init() {
		return new User();
	}

	@RequestMapping("/saveproduct")
	public ModelAndView saveproduct(@Valid @ModelAttribute("product") Product product, HttpServletRequest request,
			BindingResult result) {
		if (result.hasErrors()) {
			return new ModelAndView("/addproduct");
		} else {
			String filename = null;
			int res = 0;
			//product.setProductId(productDAO.getId());
			ServletContext context = request.getServletContext();
			System.out.println(product.getProductId());
			int o=product.getProductId()+1;
			String path = context.getRealPath("./resources/" +product.getProductId() + ".jpg");
			System.out.println("Path = " + path);
			System.out.println("File name = " + product.getImg().getOriginalFilename());
			File f = new File(path);
			if (!product.getImg().isEmpty()) {
				try {
					// filename=p.getImage().getOriginalFilename();
					byte[] bytes = product.getImg().getBytes();
					BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
					bs.write(bytes);
					bs.close();
					System.out.println("Image uploaded");
				} catch (Exception ex) {
					System.out.println(ex.getMessage());
				}
			} else {
				res = 0;
			}

			productDAO.addProduct(product);
			return getProductList();
		}
	}

	@RequestMapping("/editproduct--{productId}--product")
	public ModelAndView editProduct(@ModelAttribute Product product, @PathVariable int productId) {
		Product P = productDAO.getProductById(productId);

		ModelAndView model = new ModelAndView("editproduct");
		model.addObject("product", P);
		model.addObject("productId", productId);
		return model;
	}

	@RequestMapping("/updateproduct")
	public ModelAndView updateproduct(@ModelAttribute("product") Product product,
			@ModelAttribute("productId") int productId) {

		productDAO.editProduct(product, productId);
		return getProductList();
	}

	@RequestMapping("/allproducts--{productId}--product")
	public ModelAndView deleteProduct(@PathVariable int productId) {

		productDAO.deleteProduct(productId);
		return getProductList();
	}

	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {

		if (error != null) {
			model.addAttribute("error", "Invalid username or password");
			System.out.println(error);
		}

		if (logout != null) {
			model.addAttribute("msg", "You have been logged out successfully !!!!");
		}

		return new ModelAndView("loginpage");
	}

	@RequestMapping(value = "/perform_logout")
	public ModelAndView logoutPage(HttpServletRequest request, HttpServletResponse response) {
		// public ModelAndView logoutPage () {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println("logging out");
		if (auth != null) {
			System.out.println("logging out");
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/loginpage?logout");// You can
																// redirect
																// wherever you
																// want, but
																// generally
																// it's a good
																// practice to
																// show login
																// screen again.
	}//

	public ProductDAO getProductDAO() {
		return productDAO;
	}

	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

}
