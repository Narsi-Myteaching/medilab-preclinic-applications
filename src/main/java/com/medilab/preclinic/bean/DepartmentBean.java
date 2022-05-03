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
public class DepartmentBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1839672696590120994L;
	private int deptId;
	private String name;
	private String description;
	private String status;

}
