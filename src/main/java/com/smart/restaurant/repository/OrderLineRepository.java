package com.smart.restaurant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.smart.restaurant.model.OrderLine;

import jakarta.transaction.Transactional;

/**
 * @author Rasel Ahmed
 */
public interface OrderLineRepository extends JpaRepository<OrderLine, Long> {
	
	@Modifying
    @Transactional
	@Query(value = "UPDATE orders o SET total_quantity = COALESCE((SELECT sum(ol.quantity) FROM order_lines ol WHERE o.id = ol.order_id), 0), " +
	        "total_amount = COALESCE((SELECT sum(ol.amount) FROM order_lines ol WHERE o.id = ol.order_id), 0) " +
	        "WHERE o.id = :orderId", nativeQuery = true)
	int updateOrderQtyAmt(@Param("orderId") Long orderId);
	
	
	
}
