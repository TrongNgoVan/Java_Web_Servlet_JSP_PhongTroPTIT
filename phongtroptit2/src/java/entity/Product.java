/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;


public class Product {
    private int id;
    private String name;
    private String image;
    private double price;
    private String title;
    private String description;
    private String fb;
    private String gmail;
    private String ggmap;

    public Product() {
    }

    public Product(int id, String name, String image, double price, String title, String description,String fb, String  gmail, String ggmap) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.fb = fb;
        this.gmail = gmail;
        this.ggmap = ggmap;
        
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    public String getfb() {
        return fb;
    }

    public void setfb(String fb) {
        this.fb = fb;
    }
    public String getgmail() {
        return gmail;
    }

    public void setgmail(String gmail) {
        this.gmail = gmail;
    }
    public String getggmap() {
        return ggmap;
    }

    public void setggmap(String ggmap) {
        this.ggmap = ggmap;
    }
    

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", title=" + title + ", description=" + description + ", fb=" + fb + ", gmail=" + gmail + ", ggmap=" + ggmap + '}';
    }
    
}
