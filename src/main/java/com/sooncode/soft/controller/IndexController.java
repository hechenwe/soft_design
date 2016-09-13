package com.sooncode.soft.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
import com.sooncode.soft.module.entity.Company;
import com.sooncode.soft.service.interfaces.CompanyServiceI;


@Controller
@RequestMapping("index")
public class IndexController extends SuperController {
	
	 
	
	
    @Autowired
	private CompanyServiceI companyServiceI;
    
   
    
	@RequestMapping("index")
	public ModelAndView index(HttpServletRequest request,HttpServletResponse response){
		Company c = new Company();
		c.setCompanyId("BBB");
		c.setCompanyAllName("BBB");
		c.setCompanySimpleName("BBB");
		c.setLogoUrl("http://");
		c.setDataState("1");
	    Long l = jdbcService.save(c);
		ModelAndView mv = new ModelAndView("index/index", null);
		return mv;
	}
	
	 
}
