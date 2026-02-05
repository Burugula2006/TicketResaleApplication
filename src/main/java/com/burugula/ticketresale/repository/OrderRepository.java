package com.burugula.ticketresale.repository;

import com.burugula.ticketresale.model.Order;
import com.burugula.ticketresale.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {

    List<Order> findByBuyer(User buyer);

    @Query("SELECT o FROM Order o WHERE o.ticket.seller = :seller")
    List<Order> findSoldOrders(User seller);

    @Query("SELECT SUM(o.price * o.quantity) FROM Order o WHERE o.ticket.seller = :seller")
    Double totalEarnings(User seller);
}
