package com.NewMenFashion.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.NewMenFashion.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao {
@Autowired
private ProductDao productDao;
@Autowired
private SessionFactory sessionFactory;
	public ProductDaoImpl(){
		System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
	}
	
	public Product saveProduct(Product product) {
				
		System.out.println(product.getpId());
		Session session = sessionFactory.openSession();
		session.save(product); 
		session.flush();
		session.close();
		System.out.println(product.getpId());
		return product;	
	}
	public List<Product> getAllProducts() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> products=query.list();
		session.close();
		return products;
	}

	public Product getProductById(int id) {
		Session session=sessionFactory.openSession();
		//select * from product where id=34
		Product product=(Product)session.get(Product.class,id);
		session.close();
		return product;
	}

	public void deleteProduct(int id) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class, id);
		session.delete(product);
		session.flush();
		session.close();
		
	}

	public void updateProduct(Product product) {
		Session session=sessionFactory.openSession();
		System.out.println("Id of the product in dao is " + product.getpId());
		session.update(product); 
		session.flush();
		session.close();
		
	}

}