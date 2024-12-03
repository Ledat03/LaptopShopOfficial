package vn.hoidanit.laptopshop.domain;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String nameproduct;
    private double price;
    private String image;
    private String description;
    private String shortdes;
    private String quantity;
    private String sold;
    private String fatory;
    private String target;


    public Product() {};

    public Product(long id, String nameproduct, double price, String image, String description, String shortdes, String quantity, String sold, String fatory, String target) {
        this.id = id;
        this.nameproduct = nameproduct;
        this.price = price;
        this.image = image;
        this.description = description;
        this.shortdes = shortdes;
        this.quantity = quantity;
        this.sold = sold;
        this.fatory = fatory;
        this.target = target;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNameproduct() {
        return nameproduct;
    }

    public void setNameproduct(String nameproduct) {
        this.nameproduct = nameproduct;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getShortdes() {
        return shortdes;
    }

    public void setShortdes(String shortdes) {
        this.shortdes = shortdes;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getSold() {
        return sold;
    }

    public void setSold(String sold) {
        this.sold = sold;
    }

    public String getFatory() {
        return fatory;
    }

    public void setFatory(String fatory) {
        this.fatory = fatory;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String toString() {
        return "Product [id=" + id + ", nameproduct=" + nameproduct + ", price=" + price + ", image=" + image + ", description=" + description + ", shortdes=" + shortdes + ", quantity=" + quantity + ", sold=" + sold + ", fatory=" + fatory + ", target=" + target + "]";
    }
}
