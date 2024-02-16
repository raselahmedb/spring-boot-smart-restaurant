package com.smart.restaurant.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.smart.restaurant.model.Customer;

/**
 * @author Rasel Ahmed
 */
public interface CustomerRepository extends JpaRepository<Customer, Long> {
	
}
