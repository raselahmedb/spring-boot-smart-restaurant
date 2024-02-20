package com.smart.restaurant.service;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Service;

import com.smart.restaurant.model.MenuItem;
import com.smart.restaurant.model.OrderLine;
import com.smart.restaurant.repository.OrderLineRepository;

import lombok.RequiredArgsConstructor;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

/**
 * @author Rasel Ahmed
 */
@Service
@RequiredArgsConstructor
public class OrderLineService {

    private final OrderLineRepository orderLineRepository;
    private final MenuItemService menuItemService;

    public List<OrderLine> getAllOrderLines() {
        return orderLineRepository.findAll();
    }

    public Optional<OrderLine> getOrderLineById(@NonNull Long id) {
        return orderLineRepository.findById(id);
    }

    public OrderLine saveOrderLine(OrderLine orderLine) {
    	@SuppressWarnings("null")
		MenuItem item = menuItemService.getMenuItemById(orderLine.getItem().getId()).get();
    	orderLine.setPrice(item.getPrice());
    	BigDecimal totalPrice = orderLine.getQuantity().multiply(orderLine.getPrice()).setScale(2);
    	orderLine.setAmount(totalPrice);
        orderLine = orderLineRepository.save(orderLine);
        orderLineRepository.updateOrderQtyAmt(orderLine.getOrder().getId());
        return orderLine;
    }

    public void deleteOrderLine(@NonNull Long id) {
        orderLineRepository.deleteById(id);
    }
}
