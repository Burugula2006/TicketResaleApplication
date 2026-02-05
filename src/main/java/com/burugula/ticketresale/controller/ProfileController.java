package com.burugula.ticketresale.controller;

import com.burugula.ticketresale.model.User;
import com.burugula.ticketresale.service.OrderService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProfileController {

    @Autowired
    private OrderService orderService;

    @GetMapping("/profile")
    public String profile(Model model) {

        User admin = new User();
        admin.setId(1L);

        model.addAttribute("sold", orderService.soldOrders(admin));
        model.addAttribute("bought", orderService.boughtOrders(admin));
        model.addAttribute("earnings", orderService.earnings(admin));

        return "profile";
    }

}
