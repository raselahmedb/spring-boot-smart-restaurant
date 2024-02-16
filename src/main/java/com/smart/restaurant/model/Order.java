package com.smart.restaurant.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateDeserializer;
import com.smart.restaurant.config.LocalDateSerializer;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.ForeignKey;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
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
@Entity(name = "orders")
public class Order extends BaseEntity implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@ManyToOne
	@JoinColumn(name = "customer_id", foreignKey = @ForeignKey(name = "customer_orders"))
	private Customer customer;
	
	@OneToMany(mappedBy = "order", cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<OrderLine> orderLines;
	
	@Column(name = "total_quantity")
	private BigDecimal totalQuantity;
	
	@Column(name = "total_amount")
	private BigDecimal totalAmount;
	

	@Column(name = "order_date")
	@JsonSerialize(using = LocalDateSerializer.class)
    @JsonDeserialize(using = LocalDateDeserializer.class)
	private LocalDate orderDate;
}