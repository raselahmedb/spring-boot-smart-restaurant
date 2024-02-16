package com.smart.restaurant.service;
import org.springframework.stereotype.Service;

import com.smart.restaurant.model.Customer;
import com.smart.restaurant.repository.CustomerRepository;

import lombok.RequiredArgsConstructor;

import java.util.List;

/**
 * @author Rasel Ahmed
 */
@Service
@RequiredArgsConstructor
public class CustomerService {

    private final CustomerRepository customerRepository;

    public List<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

    public Customer getCustomerById(Long id) {
        return customerRepository.findById(id).orElse(null);
    }

    public Customer createCustomer(Customer customer) {
        return customerRepository.save(customer);
    }

    public void deleteCustomer(Long id) {
        customerRepository.deleteById(id);
    }
}
