package me.kukkii.shoppingcart;

import java.util.Collection;
import java.util.HashMap;

public class Cart {

  private HashMap<String, Integer> map;
    
  public Cart(){
    map = new HashMap<String, Integer>();
  }
    
  public void add(String id, int amount){
    map.put(id, amount);
  }
    
  public void delete(String id){
    map.remove(id);
  }

  public Collection<String> getAll(){
    return map.keySet();
  }

  public int getAmount(String id){
    return map.get(id);
  }
  
}