package com.burugula.ticketresale.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.burugula.ticketresale.model.Ticket;
import org.springframework.stereotype.Repository;

@Repository
public interface TicketRepository extends JpaRepository<Ticket, Long> {
}
