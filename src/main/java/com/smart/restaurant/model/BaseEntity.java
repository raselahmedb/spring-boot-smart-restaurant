package com.smart.restaurant.model;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;

/**
 * @author Rasel Ahmed
 * 
 */
@Getter
@Setter
@MappedSuperclass
public abstract class BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6354794514107221178L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof BaseEntity)) return false;
        BaseEntity that = (BaseEntity) o;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "BaseEntity {" +
                "id = " + id +
                "}";
    }
}