package com.utiitsl.serviceImpl;

import java.util.List;

import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import com.utiitsl.entity.FinancialDetailsEntity;
import com.utiitsl.pojo.FinancialDetailsPojo;
import com.utiitsl.repositories.FinancialDetailsRepository;
import com.utiitsl.service.FinancialDetailsService;

@Service
public class FinancialDetailsServiceImpl implements FinancialDetailsService {

	@Autowired
	FinancialDetailsRepository financialDetailsRepository;

	@Autowired
	Mapper mapper;

	@Bean
	public Mapper mapper() {
		return new DozerBeanMapper();
	}
	
	@Override
	public void savefinancialDetailsData(FinancialDetailsPojo financialDetailsPojo) {
		ModelMapper modelMapper = new ModelMapper();
		FinancialDetailsEntity financialDetailsEntity = modelMapper.map(financialDetailsPojo, FinancialDetailsEntity.class);
		financialDetailsRepository.save(financialDetailsEntity);
	}

	@Override
	public List<FinancialDetailsPojo> getfinancialDetailsData() {
		List list=financialDetailsRepository.findAll();
		return list;
	}

}
