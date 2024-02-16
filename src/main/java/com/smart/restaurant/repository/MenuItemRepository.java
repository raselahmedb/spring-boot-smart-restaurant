package com.smart.restaurant.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.smart.restaurant.model.MenuItem;

/**
 * @author Rasel Ahmed
 */
public interface MenuItemRepository extends JpaRepository<MenuItem, Long> {
    
}
