package com.sooncode.soft.dao.user;

import org.springframework.stereotype.Repository;

import com.sooncode.jdbc.Jdbc;
import com.sooncode.jdbc.JdbcFactory;
import com.sooncode.soft.dao.user.interfaces.CompanyDaoI;
 
 

@Repository
public class CompanyDao implements CompanyDaoI {

	private Jdbc jdbc = JdbcFactory.getJdbc("USER");
	
}
