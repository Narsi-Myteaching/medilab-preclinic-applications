/**
 * 
 */
package com.medilab.preclinic.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.medilab.preclinic.model.Department;

/**
 * @author nsanda
 *
 */
public interface DepartmentRepo extends JpaRepository<Department, Integer> {

	@Query("from Department d where d.name=:deptName")
	public Department findDeptByName(@Param("deptName") String deptName);
}
