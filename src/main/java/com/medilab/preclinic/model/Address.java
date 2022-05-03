/**
 * 
 */
package com.medilab.preclinic.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

/**
 * @author nsanda
 *
 */
@Entity
@Data
public class Address implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1839672696590120994L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int addrId;
	private String address;
	private String city;
	private String country;
	private String state;
	private String postalCode;
	
	private String avatar;
	private String biography;
	

}
