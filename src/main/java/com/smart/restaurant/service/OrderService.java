package com.smart.restaurant.service;
import org.springframework.stereotype.Service;

import com.smart.restaurant.model.Order;
import com.smart.restaurant.model.OrderLine;
import com.smart.restaurant.repository.OrderRepository;

import lombok.RequiredArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author Rasel Ahmed
 */
@Service
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;
    private final OrderLineService orderLineService;

//    public List<Order> getAllOrders() {
//        return orderRepository.findAll();
//    }
    
    public List<Order> fetchOrdersForCurrentDay(LocalDate currentDate) {
        return orderRepository.findByOrderDate(currentDate);
    }

    public BigDecimal fetchTotalSaleAmountForCurrentDay(LocalDate currentDate) {
        return orderRepository.getTotalSaleAmountForDay(currentDate);
    }
    
    public List<Order> fetchOrdersForCustomer(Long customerId) {
        return orderRepository.findByCustomer_Id(customerId);
    }

    public LocalDate fetchMaxSaleDayInRange(LocalDate startDate, LocalDate endDate) {
        return orderRepository.findMaxSaleDayInRange(startDate, endDate);
    }

    public Optional<Order> getOrderById(Long id) {
        return orderRepository.findById(id);
    }

    public Order saveOrder(Order order) {
    	order.setOrderDate(LocalDate.now());
    	
    	Order order2 = orderRepository.save(order);
    	
		List<OrderLine> orderLines = order.getOrderLines().stream().map(ol -> {
			ol.setOrder(order2);
			return orderLineService.saveOrderLine(ol);
		}).collect(Collectors.toList());
		
		order2.setOrderLines(orderLines);
		
        return order2;
    }

    public void deleteOrder(Long id) {
        orderRepository.deleteById(id);
    }
}
