package com.utiitsl.service;

import java.util.List;

import com.utiitsl.entity.FinancialDetailsEntity;
import com.utiitsl.pojo.FinancialDetailsPojo;

public interface FinancialDetailsService {
	
	public void savefinancialDetailsData(FinancialDetailsPojo financialDetailsPojo);
	
	public List<FinancialDetailsPojo> getfinancialDetailsData();

}
