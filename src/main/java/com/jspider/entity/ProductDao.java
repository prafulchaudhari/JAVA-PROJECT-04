package com.jspider.entity;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// Method for create
	@Transactional
	public void createProduct(Product product) {

		this.hibernateTemplate.saveOrUpdate(product);
	}

	// Method for get all products
	public List<Product> getProducts() {

		List<Product> products = (List<Product>) this.hibernateTemplate.loadAll(Product.class);
		return products;
	}

	// Method for delete product
	@Transactional
	public void deleteProduct(int pId) {

		Product product = (Product) this.hibernateTemplate.load(Product.class, pId);
		this.hibernateTemplate.delete(product);
	}
	
	public void updateProduct(int pId) {
		
		Product product=(Product) this.hibernateTemplate.get(Product.class,pId);
		this.hibernateTemplate.update(product);
	}

	// Method for get one product
	public Product getProduct(int pId) {

		return this.hibernateTemplate.get(Product.class, pId);
	}
}
