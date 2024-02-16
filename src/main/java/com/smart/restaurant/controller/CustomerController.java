package com.smart.restaurant.controller;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.smart.restaurant.model.Customer;
import com.smart.restaurant.service.CustomerService;

import lombok.RequiredArgsConstructor;

import java.util.List;

/**
 * @author Rasel Ahmed
 */
@RestController
@RequestMapping("/api/v1/customers")
@RequiredArgsConstructor
public class CustomerController {

    private final CustomerService customerService;

    @GetMapping
    public List<Customer> getAllCustomers() {
        return customerService.getAllCustomers();
    }

//    @GetMapping("/{id}")
//    public ResponseEntity<Customer> getCustomerById(@PathVariable Long id) {
//        Customer customer = customerService.getCustomerById(id);
//        return ResponseEntity.ok(customer);
//    }
//
//    @PostMapping
//    public ResponseEntity<Customer> createCustomer(@RequestBody Customer customer) {
//        Customer createdCustomer = customerService.createCustomer(customer);
//        return new ResponseEntity<>(createdCustomer, HttpStatus.CREATED);
//    }
//
//    @DeleteMapping("/{id}")
//    public ResponseEntity<Void> deleteCustomer(@PathVariable Long id) {
//        customerService.deleteCustomer(id);
//        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
//    }
}
