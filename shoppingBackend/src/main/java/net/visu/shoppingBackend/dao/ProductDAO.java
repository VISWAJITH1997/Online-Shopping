package net.visu.shoppingBackend.dao;

import java.util.List;

import net.visu.shoppingBackend.dto.Product;

public interface ProductDAO {

	Product get(int productId);
	List<Product> list();
	
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);
	
	
	List<Product> listActiveProducts();
	List<Product> listActiveProductsByCategory(int categoryId);
	List<Product> getLatestActiveProducts(int count);
}