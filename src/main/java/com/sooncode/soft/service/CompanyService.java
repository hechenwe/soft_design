package com.sooncode.soft.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sooncode.soft.dao.interfaces.CompanyDaoI;
 
import com.sooncode.soft.service.interfaces.CompanyServiceI;

@Service
public class CompanyService  implements CompanyServiceI {

	@Autowired
	public CompanyDaoI companyDaoI;

}
