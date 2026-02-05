package com.burugula.ticketresale.service;

import org.springframework.stereotype.Service;

@Service
public class PriceService {

    public double calculatePrice(double price, int quantity) {
        return price * quantity;
    }
}
