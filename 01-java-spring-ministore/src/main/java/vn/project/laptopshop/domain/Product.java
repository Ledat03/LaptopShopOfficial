package vn.project.laptopshop.domain;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String nameproduct;
    private double price;
    private String image;
    @Column(columnDefinition = "MEDIUMTEXT")
    private String description;
    private String shortdes;
    private String quantity;
    private String sold;
    private String factory;
    private String target;

    @OneToMany(mappedBy = "product")
    private List<CartDetail> cartDetails;


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
        this.factory = fatory;
        this.target = target;
    }
}
