package com.sooncode.soft.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sooncode.jdbc.util.Md5;
import com.sooncode.soft.module.entity.user.Company;
import com.sooncode.soft.module.entity.user.User;


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
	
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response){
		String userName = "";
		String password = Md5.getMD5Code("");
		User user = new User();
		user.setUserName(userName);
		user = (User) jdbcService.get(user);
		if(user==null){ //用户名不存在 
		   
		}else{
			 if(!user.getPassword().equals(password)){//秘密错误
				 
			 }else{
				 //密码正确
			 }
		}
		ModelAndView mv = new ModelAndView("index/index", null);
		return mv;
	}
	
	 
}
