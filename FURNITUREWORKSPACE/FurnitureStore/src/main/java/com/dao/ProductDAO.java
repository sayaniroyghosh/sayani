package com.dao;

import java.util.List;

import com.model.Product;
import com.model.ProductList;

public interface ProductDAO {

String addProduct(Product P);
String editProduct(Product newProduct,int productId);
String deleteProduct(int productID);
ProductList getAllProducts();
Product getProductById(int productId);
int getId();
}