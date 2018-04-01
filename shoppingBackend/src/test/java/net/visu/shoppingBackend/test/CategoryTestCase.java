package net.visu.shoppingBackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.visu.shoppingBackend.dao.CategoryDAO;
import net.visu.shoppingBackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;

	private static CategoryDAO categoryDAO;

	private Category category;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("net.visu.shoppingBackend");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

	}

	/*
	 * @Test public void testAddCategory() {
	 * 
	 * category = new Category();
	 * 
	 * category.setName("2x2"); category.setDescription("This is a speed cube 2x2");
	 * category.setImageURL("2x2.png");
	 * 
	 * assertEquals("Successfully added a category inside the table",true,
	 * categoryDAO.add(category));
	 * 
	 * }
	 */

	/*
	 * @Test public void testGetCategory() { category = categoryDAO.get(1);
	 * 
	 * assertEquals("Successfully fetched a single category from the table", "2x2",
	 * category.getName());
	 * 
	 * }
	 */

	/*
	 * @Test public void testUpdateCategory() { category = categoryDAO.get(4);
	 * 
	 * category.setName("3x3");
	 * 
	 * assertEquals("Successfully updated a single category in the table", true,
	 * categoryDAO.update(category));
	 * 
	 * }
	 */

	/*
	 * @Test public void testDeleteCategory() { category = categoryDAO.get(1);
	 * 
	 * assertEquals("Successfully deleted a single category in the table", true,
	 * categoryDAO.delete(category)); }
	 */

	/*
	 * @Test public void testListCategory() {
	 * 
	 * assertEquals("Successfully fetched a single category in the table", 3,
	 * categoryDAO.list().size()); }
	 */

	@Test
	public void testCRUDCategory() {

		category = new Category();

		category.setName("Mens");
		category.setDescription("this the some description for television");
		category.setImageURL("image1.png");

		assertEquals("Successfully added a category inside the table", true, categoryDAO.add(category));

		category = new Category();

		category.setName("Womens");
		category.setDescription("this the some description for television");
		category.setImageURL("image2.png");

		assertEquals("Successfully added a category inside the table", true, categoryDAO.add(category));

		// fetching and updating the category category = categoryDAO.get(2);

		category.setName("kids");

		assertEquals("Successfully fetched a single category in the table", true, categoryDAO.update(category));

		// delete the category

		assertEquals("Successfully deleted a single category in the table", true, categoryDAO.delete(category));

		// fetching the list

		assertEquals("Successfully fetched a single category in the table", 1, categoryDAO.list().size());

	}

}