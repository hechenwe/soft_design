package com.sooncode.soft.dao;

import org.springframework.stereotype.Repository;

 
import com.sooncode.jdbc.Jdbc;
import com.sooncode.soft.dao.interfaces.CompanyDaoI;
 
 

@Repository
public class CompanyDao implements CompanyDaoI {

	private Jdbc jdbc = new Jdbc();
	
}
