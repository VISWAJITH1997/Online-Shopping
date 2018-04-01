package net.visu.shoppingBackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.visu.shoppingBackend.dao.ProductDAO;
//import net.visu.shoppingBackend.dto.Product;

public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static ProductDAO productDAO;
	
    //private Product product;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.visu.shoppingBackend");
		context.refresh();
		productDAO = (ProductDAO)context.getBean("productDAO");
	}
	
/*
	@Test
	public void testCRUDProduct() {
		
		product = new Product();
		
		product.setName("4x4 speed cube");
		product.setBrand("MoYu");
		product.setDescription("MoYu speed cube");
		product.setUnitPrice(6200);
		product.setActive(true);
		product.setCategoryId(1);
		product.setSupplierId(2);
		
		assertEquals("Something went wrong while inserting a new product!",
						true,productDAO.add(product));
		
		
		product = productDAO.get(2);
		product.setName("2x2 speed Cube");
		
		assertEquals("Something went wrong while updating a exsisting record!",
				true,productDAO.update(product));
		assertEquals("Something went wrong while deleting a exsisting record!",
				true,productDAO.delete(product));
		
		assertEquals("Something went wrong while fetching the list of products!",
				6,productDAO.list().size());
		
		
	}
*/
	
	@Test
	public void testListActiveProducts() {
		assertEquals("Something went wrong while fetching the list of products!",
				5,productDAO.listActiveProducts().size());
		
	}

	@Test
	public void testListActiveProductsByCategory() {
		
		assertEquals("Something went wrong while fetching the list of products!",
				3,productDAO.listActiveProductsByCategory(3).size());
		
		assertEquals("Something went wrong while fetching the list of products!",
				2,productDAO.listActiveProductsByCategory(1).size());		
	}

	@Test
	public void testGetLatestActiveProduct() {
		
		assertEquals("Something went wrong while fetching the list of products!",
				3,productDAO.getLatestActiveProducts(3).size());
		
	}

}