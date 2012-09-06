package me.kukkii.shoppingcart;

import java.util.Collection;
import java.util.HashMap;

public class ProductManager{
  
  private static ProductManager manager = new ProductManager();
  
  public static ProductManager getManager(){
    return manager;
  }

  private HashMap<String, Product> map;
  
  private ProductManager(){
    map = new HashMap<String, Product>();

    Product p1 = new Product("1","ipad", 200, 50, "http://ecx.images-amazon.com/images/I/41Yisrlx%2BFL._AA115_.jpg");
    Product p2 = new Product("2","led zeppelin 1", 10, 8, "http://ecx.images-amazon.com/images/I/51SUWsbmnHL._AA115_.jpg" );
    Product p3 = new Product("3","mountai dew", 333333, 345, "http://ecx.images-amazon.com/images/I/31yl5gav36L._AA115_.jpg");
    Product p4 = new Product("4","razer abyssus", 87653, 875, "http://ecx.images-amazon.com/images/I/31jNJ5FM5XL._AA115_.jpg");
    add(p1);
    add(p2);
    add(p3);
    add(p4);
  }
  
  public void add(Product p){
    map.put(p.getId(), p);
  }

  public Collection<Product> getAll(){
    return map.values();
  }
  
  public Product lookUp(String id){
    return map.get(id);
  }
  
  public static void main(String[] args){
    getManager().lookUp(id);
  }
}
