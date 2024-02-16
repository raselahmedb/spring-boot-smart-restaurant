package com.smart.restaurant.model;

import java.io.Serializable;
import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @author Rasel Ahmed
 */
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Table
@Entity(name = "menu_items")
public class MenuItem extends BaseEntity implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@NotBlank
	@Column(length = 100)
	private String name;
	
	@Column(length = 10, unique = true)
	private String code;
	
	@Column(length = 500)
	private String description;
	
	private BigDecimal price;
}
