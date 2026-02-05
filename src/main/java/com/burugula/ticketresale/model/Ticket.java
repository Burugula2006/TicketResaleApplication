package com.burugula.ticketresale.model;

import jakarta.persistence.*;

@Entity
public class Ticket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String movieName;
    private double price;
    private int quantity;

    @ManyToOne
    private User seller;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getMovieName() { return movieName; }
    public void setMovieName(String movieName) { this.movieName = movieName; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }

    public User getSeller() { return seller; }
    public void setSeller(User seller) { this.seller = seller; }
}
