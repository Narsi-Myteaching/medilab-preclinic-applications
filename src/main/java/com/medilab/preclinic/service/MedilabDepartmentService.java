/**
 * 
 */
package com.medilab.preclinic.service;

import java.util.List;

import com.medilab.preclinic.bean.DepartmentBean;

/**
 * @author nsanda
 *
 */
public interface MedilabDepartmentService {

	public DepartmentBean save(DepartmentBean deptBean);
	public List<DepartmentBean> findAll();
	public DepartmentBean findById(int id);
	public DepartmentBean findByName(String name);
	public List<DepartmentBean> delete(int id);
	public List<DepartmentBean> delete(DepartmentBean deptBean);
	public DepartmentBean update(DepartmentBean deptBean);
	
}
