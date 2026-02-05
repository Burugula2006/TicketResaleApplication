package com.burugula.ticketresale.service;

import com.burugula.ticketresale.model.Order;
import com.burugula.ticketresale.model.Ticket;
import com.burugula.ticketresale.model.User;
import com.burugula.ticketresale.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class OrderService {

    @Autowired
    private OrderRepository repo;

    public void createOrder(User buyer, Ticket ticket) {
        Order o = new Order();
        o.setBuyer(buyer);
        o.setTicket(ticket);
        o.setPrice(ticket.getPrice());
        o.setQuantity(1);
        o.setPurchaseDate(LocalDateTime.now());
        repo.save(o);
    }

    public List<Order> boughtOrders(User user) {
        return repo.findByBuyer(user);
    }

    public List<Order> soldOrders(User user) {
        return repo.findSoldOrders(user);
    }

    public double earnings(User user) {
        Double total = repo.totalEarnings(user);
        return total == null ? 0 : total;
    }
}
