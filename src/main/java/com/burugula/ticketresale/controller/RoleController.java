package com.burugula.ticketresale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoleController {

    @GetMapping("/role")
    public String role() {
        return "role-select";
    }
}

