package com.utiitsl.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.utiitsl.entity.LicencesAndCertificationEntity;

@Repository
public interface LicencesAndCertificationRepository extends JpaRepository<LicencesAndCertificationEntity,Long>{

}
