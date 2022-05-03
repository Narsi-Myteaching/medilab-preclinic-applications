/**
 * 
 */
package com.medilab.preclinic.bean;

import java.io.Serializable;

import lombok.Data;

/**
 * @author nsanda
 *
 */
@Data
public class AddressBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1839672696590120994L;
	private int addrId;
	private String address;
	private String city;
	private String country;
	private String state;
	private String postalCode;
	
	private String avatar;
	private String biography;
	

}
