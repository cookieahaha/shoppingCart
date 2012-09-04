package me.kukkii.shoppingcart;

import java.util.HashMap;

public class ProductManager{

  private HashMap<String, Product> map;
  
  public ProductManager(){
    map = new HashMap<String, Product>();

    Product p1 = new Product("1","product a", 200, 50);
    Product p2 = new Product("2","product b", 10, 8);
    Product p3 = new Product("3","product c", 333333, 345);
    Product p4 = new Product("4","product d", 87653, 875);

    add("1",p1);
    add("2",p2);
    add("3",p3);
    add("4",p4);

  }
  
  public void add(String id,Product p){
    map.put(id, p);
  }

  
  
}
