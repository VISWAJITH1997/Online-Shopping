package net.visu.shoppingBackend.dao;

import java.util.List;

import net.visu.shoppingBackend.dto.Category;

public interface CategoryDAO {

	Category get(int name);
	List<Category> list();
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
	
}
