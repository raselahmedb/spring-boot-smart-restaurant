package com.smart.restaurant.service;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Service;

import com.smart.restaurant.model.MenuItem;
import com.smart.restaurant.repository.MenuItemRepository;

import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.Optional;

/**
 * @author Rasel Ahmed
 */
@Service
@RequiredArgsConstructor
public class MenuItemService {

    private final MenuItemRepository menuItemRepository;


    public List<MenuItem> getAllMenuItems() {
        return menuItemRepository.findAll();
    }

    public Optional<MenuItem> getMenuItemById(@NonNull Long id) {
        return menuItemRepository.findById(id);
    }

    public MenuItem saveMenuItem(@NonNull MenuItem menuItem) {
        return menuItemRepository.save(menuItem);
    }

    public void deleteMenuItem(@NonNull Long id) {
        menuItemRepository.deleteById(id);
    }
}
