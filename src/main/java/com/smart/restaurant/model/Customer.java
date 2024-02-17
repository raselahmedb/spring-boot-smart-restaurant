package com.smart.restaurant.model;

import java.io.Serializable;

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
@Entity(name = "customers")
public class Customer extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	
	@NotBlank
	@Column(length = 100)
	private String name;
	
	@Column(length = 10, unique = true)
	private String code;

	@Column(length = 30, unique = true)
	private String phone;
	
	@Column(length = 60, unique = true)
	private String email;
	
	private String address;

	public Customer(Long id, String name, String code, String phone, String email, String address) {
		super();
		setId(id);
		this.name = name;
		this.code = code;
		this.phone = phone;
		this.email = email;
		this.address = address;
	}
	
	
}
