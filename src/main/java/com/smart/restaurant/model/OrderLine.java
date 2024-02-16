package com.smart.restaurant.model;

import java.io.Serializable;
import java.math.BigDecimal;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.ForeignKey;
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
@Entity(name = "order_lines")
public class OrderLine extends BaseEntity implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@ManyToOne
	@JoinColumn(name = "item_id", foreignKey = @ForeignKey(name = "item_orderlines"))
	private MenuItem item;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "order_id", foreignKey = @ForeignKey(name = "order_orderlines"))
	private Order order;
	
	private BigDecimal quantity;
	private BigDecimal price;
	private BigDecimal amount;
}