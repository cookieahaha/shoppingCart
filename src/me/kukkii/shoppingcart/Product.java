package me.kukkii.shoppingcart;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class Product implements java.io.Serializable{
  
  private String id;
  private String name;
  private int price;
  private int amount;
  private String pic;

  public Product(String id, String name, int price, int amount, String pic){
    this.id = id;
    this.name = name;
    this.price = price;
    this.amount = amount;
    this.pic = pic;
  }

  public void setId(String id){
    this.id = id;
  }
  
  public void setName(String name){
    this.name = name;
  }
  
  public void setPrice(int price){
    this.price = price;
  }
  
  public void setAmount(int amount){
    this.amount = amount;
  }

  public void setPic(String pic){
    this.pic = pic;
  }
  
  public String getId(){
    return id;
  }
  
  public String getName(){
    return name;
  }
  
  public int getPrice(){
    return price;
  }
  
  public int getAmount(){
    return amount;
  }

  public String getPic(){
    return pic;
  }
  
  public void writeToFile(){
    try{
       FileOutputStream fileOut = new FileOutputStream("roster.ser");
       ObjectOutputStream out = new ObjectOutputStream(fileOut);
       out.writeObject(this);
       out.close();
       fileOut.close();
    }
    catch(IOException i){
       i.printStackTrace();
    }
}

/* static Product readFromFile(){
    File file = new File("roster.ser");
    if(! file.exists()){
      ProductManager list = new ProductManager();
        return list;
    }
    try{
        FileInputStream fileIn = new FileInputStream(file);
        ObjectInputStream in = new ObjectInputStream(fileIn);
        ProductManager list = (ProductManager) in.readObject();
        in.close();
        fileIn.close();
        return list;
    }
    catch(IOException i){
        i.printStackTrace();
        return null;
    }
    catch(ClassNotFoundException c){
        System.out.println("Roster class not found");
        c.printStackTrace();
        return null;
    }
  }
*/
}
