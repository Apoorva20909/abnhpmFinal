package com.utiitsl.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.utiitsl.entity.FinancialDetailsEntity;

/**
 * @author APOORVA
 *
 */
@Repository
public interface FinancialDetailsRepository extends JpaRepository<FinancialDetailsEntity,Long>{


}
