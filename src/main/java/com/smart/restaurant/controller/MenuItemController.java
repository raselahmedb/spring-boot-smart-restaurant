package com.smart.restaurant.controller;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.smart.restaurant.model.MenuItem;
import com.smart.restaurant.service.MenuItemService;

import lombok.RequiredArgsConstructor;

import java.util.List;

/**
 * @author Rasel Ahmed
 */
@RestController
@RequestMapping("/api/v1/menuitems")
@RequiredArgsConstructor
public class MenuItemController {

    private final MenuItemService menuItemService;

    @GetMapping
    public List<MenuItem> getAllMenuItems() {
        return menuItemService.getAllMenuItems();
    }
//
//    @GetMapping("/{id}")
//    public ResponseEntity<MenuItem> getMenuItemById(@PathVariable Long id) {
//        return menuItemService.getMenuItemById(id)
//                .map(ResponseEntity::ok)
//                .orElse(ResponseEntity.notFound().build());
//    }
//
//    @PostMapping
//    public MenuItem createMenuItem(@RequestBody MenuItem menuItem) {
//        return menuItemService.saveMenuItem(menuItem);
//    }
//
//    @PutMapping("/{id}")
//    public ResponseEntity<MenuItem> updateMenuItem(@PathVariable Long id, @RequestBody MenuItem menuItem) {
//        if (!menuItemService.getMenuItemById(id).isPresent()) {
//            return ResponseEntity.notFound().build();
//        }
//        menuItem.setId(id);
//        return ResponseEntity.ok(menuItemService.saveMenuItem(menuItem));
//    }
//
//    @DeleteMapping("/{id}")
//    public ResponseEntity<Void> deleteMenuItem(@PathVariable Long id) {
//        if (!menuItemService.getMenuItemById(id).isPresent()) {
//            return ResponseEntity.notFound().build();
//        }
//        menuItemService.deleteMenuItem(id);
//        return ResponseEntity.noContent().build();
//    }
}
