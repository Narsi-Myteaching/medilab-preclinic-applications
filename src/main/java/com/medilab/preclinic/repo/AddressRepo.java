/**
 * 
 */
package com.medilab.preclinic.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.medilab.preclinic.model.Address;

/**
 * @author nsanda
 *
 */
public interface AddressRepo extends JpaRepository<Address, Integer> {
	@Query("from Address d where d.address=:address")
	public Address findAddressByName(@Param("address") String address);
}
