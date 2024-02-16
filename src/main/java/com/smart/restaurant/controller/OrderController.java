package com.smart.restaurant.controller;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.smart.restaurant.model.Order;
import com.smart.restaurant.service.OrderService;

import lombok.RequiredArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

/**
 * @author Rasel Ahmed
 */
@RestController
@RequestMapping("/api/v1/order")
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;

    @GetMapping("/currentDay")
    public ResponseEntity<List<Order>> getOrdersForCurrentDay() {
        LocalDate currentDate = LocalDate.now();
        List<Order> orders = orderService.fetchOrdersForCurrentDay(currentDate);
        return ResponseEntity.ok(orders);
    }
    
    @GetMapping("/totalSaleAmountCurrentDay")
    public ResponseEntity<BigDecimal> getTotalSaleAmountForCurrentDay() {
        LocalDate currentDate = LocalDate.now();
        BigDecimal totalSaleAmount = orderService.fetchTotalSaleAmountForCurrentDay(currentDate);
        return ResponseEntity.ok(totalSaleAmount);
    }
    
    @GetMapping("/customer/{customerId}")
    public ResponseEntity<List<Order>> getOrdersForCustomer(@PathVariable Long customerId) {
        List<Order> orders = orderService.fetchOrdersForCustomer(customerId);
        return ResponseEntity.ok(orders);
    }

    @GetMapping("/maxSaleDay")
    public ResponseEntity<LocalDate> getMaxSaleDay(@RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
                                                  @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate) {
        LocalDate maxSaleDay = orderService.fetchMaxSaleDayInRange(startDate, endDate);
        return ResponseEntity.ok(maxSaleDay);
    }

    @PostMapping
    public Order createOrder(@RequestBody Order order) {
        return orderService.saveOrder(order);
    }

//    @GetMapping("/{id}")
//    public ResponseEntity<Order> getOrderById(@PathVariable Long id) {
//    	return orderService.getOrderById(id)
//    			.map(ResponseEntity::ok)
//    			.orElse(ResponseEntity.notFound().build());
//    }
//    
//    @PutMapping("/{id}")
//    public ResponseEntity<Order> updateOrder(@PathVariable Long id, @RequestBody Order order) {
//        if (!orderService.getOrderById(id).isPresent()) {
//            return ResponseEntity.notFound().build();
//        }
//        order.setId(id);
//        return ResponseEntity.ok(orderService.saveOrder(order));
//    }
//
//    @DeleteMapping("/{id}")
//    public ResponseEntity<Void> deleteOrder(@PathVariable Long id) {
//        if (!orderService.getOrderById(id).isPresent()) {
//            return ResponseEntity.notFound().build();
//        }
//        orderService.deleteOrder(id);
//        return ResponseEntity.noContent().build();
//    }
}
