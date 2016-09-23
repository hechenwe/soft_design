package com.sooncode.soft.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sooncode.soft.module.entity.user.Company;


@Controller
@RequestMapping("user")
public class UserController extends SuperController {
	 
    
	@RequestMapping("index")
	public ModelAndView index(HttpServletRequest request,HttpServletResponse response){
		Company c = new Company();
		c.setCompanyId("BBB");
		c.setCompanyAllName("BBB");
		c.setCompanySimpleName("BBB");
		c.setLogoUrl("http://");
		 
	   // Long l = jdbcService.save(c);
		ModelAndView mv = new ModelAndView("index/index", null);
		return mv;
	}
	
	 
}
