package com.burugula.ticketresale.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private User buyer;

    @ManyToOne
    private Ticket ticket;

    private double price;
    private int quantity;

    private LocalDateTime purchaseDate;

    public Long getId() { return id; }

    public User getBuyer() { return buyer; }
    public void setBuyer(User buyer) { this.buyer = buyer; }

    public Ticket getTicket() { return ticket; }
    public void setTicket(Ticket ticket) { this.ticket = ticket; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }

    public LocalDateTime getPurchaseDate() { return purchaseDate; }
    public void setPurchaseDate(LocalDateTime purchaseDate) {
        this.purchaseDate = purchaseDate;
    }
}
