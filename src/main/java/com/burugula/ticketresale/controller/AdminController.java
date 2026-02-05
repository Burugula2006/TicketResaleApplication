package com.burugula.ticketresale.controller;

import com.burugula.ticketresale.model.Ticket;
import com.burugula.ticketresale.model.User;
import com.burugula.ticketresale.repository.TicketRepository;
import com.burugula.ticketresale.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private TicketService service;
    @Autowired
    private TicketRepository repo;

    @GetMapping
    public String admin(Model model) {
        model.addAttribute("tickets", repo.findAll());
        return "admin";
    }

    @PostMapping("/add")
    public String add(@RequestParam String movieName,
                      @RequestParam double price,
                      @RequestParam int quantity) {

        Ticket t = new Ticket();
        t.setMovieName(movieName);
        t.setPrice(price);
        t.setQuantity(quantity);

        // TEMP seller (Admin)
        User admin = new User();
        admin.setId(1L);   // ass

        service.save(t);
        return "redirect:/admin";


    }
}

