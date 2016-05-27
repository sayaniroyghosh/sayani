package com.service;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Product;

@Repository
public class ProductService {
	@Autowired
	private SessionFactory mysessionFactory;

	public ProductService(){
	System.out.println("Prod Service Created");

	}

	public SessionFactory getMysessionFactory() {
	return mysessionFactory;
	}

	public void setMysessionFactory(SessionFactory mysessionFactory) {
	this.mysessionFactory = mysessionFactory;
	}

	public List fetchAllRecords()
	{

	Session session = mysessionFactory.openSession();

	Criteria criteria = session.createCriteria(Product.class);
	session.flush();
	List records= criteria.list();
	session.close();
	return records;
	}

	public String addProduct(Product P)
	{
		System.out.println(P.getName());
		System.out.println(P.getProductId());
	Session session=mysessionFactory.openSession();
	Transaction tx = session.beginTransaction();
	System.out.println(P.getProductId());
	session.save(P);
	session.flush();
	tx.commit();
	return "success";
	}
	
	public Product getProductById(int productId)
	{
	Session session=mysessionFactory.openSession();
	Criteria criteria = session.createCriteria(Product.class);
	criteria.add(Restrictions.eq("productId", productId));

	    //session.close();
	    return (Product)(criteria.list().get(0));
	}

	public String updateProduct(Product P,int productId)
	{
	    System.out.println("Product ID " + P.getProductId());
	    Session session=mysessionFactory.openSession();
	    Product product =(Product)session.get(Product.class, productId);
	    product.setDescription(P.getDescription());
	    product.setGroupName(P.getName());
	    product.setName(P.getName());
	    product.setPrice(P.getPrice());
	    product.setQty(P.getQty());
	    Transaction tx = session.beginTransaction();
	    session.update(product);
	    System.out.println(P); 
	    session.close();
	    tx.commit();

	    return "success";

	}
	public String deleteProduct(int productId)
	{
	    Session session=mysessionFactory.openSession();
	    Product product =(Product)session.get(Product.class, productId);
	    Transaction tx = session.beginTransaction();
	    session.delete(product);
	    tx.commit();
	    session.close();
	    return "success";
	}

	public int getId() {
		// TODO Auto-generated method stub
		Session session=mysessionFactory.openSession();
		org.hibernate.Query q= session.createQuery("from Product");
		Product p=(Product) q.list();
		int res=p.getProductId();
		return res++;
	}
}
