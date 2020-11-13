package service;

import java.util.List;

import bean.Product;
import dao.ProductDaoImpl;

public class ProductCrudService {
	
	private static ProductDaoImpl productDaoImpl = new ProductDaoImpl();
	public void add(Product p) {
		productDaoImpl.add(p);
	}
	public void delete(String id) {
		productDaoImpl.delete(id);
	}
	public void upadate(Product p) {
		productDaoImpl.update(p);
	}
	public Product getProductById(String id) {
		return productDaoImpl.getById(id);
	}
	public List<Product> getProductByCatagory(String catagory){
		return productDaoImpl.getProductByCatagory(catagory);
	}
}