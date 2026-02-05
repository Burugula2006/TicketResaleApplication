package com.burugula.ticketresale.controller;

import com.burugula.ticketresale.model.User;
import com.burugula.ticketresale.service.TicketService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private TicketService service;

    @GetMapping
    public String user(Model model) {
        model.addAttribute("tickets", service.getAll());
        return "user";
    }
    @PostMapping("/buy")
    public String buyTicket(@RequestParam Long ticketId) {
        service.buyTicket(ticketId);
        return "redirect:/user";
    }


}

