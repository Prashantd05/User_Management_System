package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.User;
import com.demo.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService us;

	@GetMapping(value = "/")
	public ModelAndView m1(ModelAndView m) {
		m.setViewName("index.jsp");
		return m;
	}

	@GetMapping(value = "/users")
	public ModelAndView m2(User u1, String b1, ModelAndView m) {

		if (b1.equalsIgnoreCase("add")) {
			u1 = us.save(u1);
			if(u1!=null)
				m.addObject("msg", "User Inserted Successfully!");
			m1(m);
		}
		if (b1.equalsIgnoreCase("delete")) {
			int check = us.deleteById(u1.getId());
			m.addObject("msg", (check!=0)?"User deleted successfully!":"User Not Found");
			m1(m);
		}
		if (b1.equalsIgnoreCase("display")) {
			u1=us.findById(u1.getId());
			if(u1==null) {
				m.addObject("msg", "User Not Found");
			}else {
				m.addObject("user", u1);
				m.setViewName("first.jsp");
			}
		}
		if (b1.equalsIgnoreCase("update")) {
			us.save(u1);
			m.addObject("msg1", "User Data Updated!");
			m1(m);
		}
		
		return m;
	}
}
