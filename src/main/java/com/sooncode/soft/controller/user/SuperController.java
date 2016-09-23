package com.sooncode.soft.controller.user;

import com.sooncode.jdbc.service.JdbcService;
import com.sooncode.jdbc.service.JdbcServiceFactory;

//import com.sooncode.jdbc.JdbcService;

public abstract class SuperController {
   protected  JdbcService jdbcService =  JdbcServiceFactory.getJdbcService("USER");
	 
}
