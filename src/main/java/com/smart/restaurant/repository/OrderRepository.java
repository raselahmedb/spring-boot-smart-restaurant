package com.smart.restaurant.repository;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.smart.restaurant.model.Order;

/**
 * @author Rasel Ahmed
 */
public interface OrderRepository extends JpaRepository<Order, Long> {
    
	List<Order> findByOrderDate(LocalDate orderDate);

    @Query(value = "SELECT COALESCE(SUM(o.total_amount), 0) FROM Orders o WHERE o.order_date = :orderDate", nativeQuery = true)
    BigDecimal getTotalSaleAmountForDay(LocalDate orderDate);
    
    List<Order> findByCustomer_Id(Long customerId);

    @Query(value = "SELECT COALESCE(o.order_date, '1900-01-01') " +
            "FROM Orders o " +
            "WHERE o.order_date BETWEEN :startDate AND :endDate " +
            "GROUP BY o.order_date " +
            "ORDER BY sum(o.total_amount) DESC " +
            "LIMIT 1", nativeQuery = true)
    LocalDate findMaxSaleDayInRange(LocalDate startDate, LocalDate endDate);

}
