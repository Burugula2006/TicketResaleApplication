package com.burugula.ticketresale.controller;

import com.burugula.ticketresale.model.User;
import com.burugula.ticketresale.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    private UserService service;

    @GetMapping("/")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String doLogin(@RequestParam String username,
                          @RequestParam String password,
                          HttpSession session,
                          Model model) {

        User user = service.login(username, password);

        if (user == null) {
            model.addAttribute("error", "Invalid Credentials");
            return "login";
        }

        session.setAttribute("user", user);
        return "redirect:/role";
    }
}

