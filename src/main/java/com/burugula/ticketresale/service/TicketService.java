package com.burugula.ticketresale.service;

import com.burugula.ticketresale.model.Ticket;
import com.burugula.ticketresale.model.User;
import com.burugula.ticketresale.repository.TicketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TicketService {
    @Autowired
    private TicketRepository ticketRepository;

    @Autowired
    private TicketRepository repo;

    public List<Ticket> getAll() {
        return repo.findAll();
    }

    public void save(Ticket ticket) {
        repo.save(ticket);
    }
    @Autowired
    private OrderService orderService;

    public void buyTicket(Long id) {
        Ticket ticket = repo.findById(id).orElse(null);

        if (ticket != null && ticket.getQuantity() > 0) {
            ticket.setQuantity(ticket.getQuantity() - 1);
            repo.save(ticket);
        }
    }


}
