package org.jsp.spring_user_app.controller;

import org.jsp.spring_user_app.dao.UserDao;
import org.jsp.spring_user_app.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("u")
public class UserController {
	@Autowired
	private UserDao dao;
	@RequestMapping(value = "/save")
	public ModelAndView saveUser(@ModelAttribute User user, ModelAndView view) {
		view.setViewName("print.jsp");
		user = dao.saveUser(user);
		view.addObject("msg", "User save With Id:" + user.getId());
		return view;
	}
	@PostMapping("/update")
	public ModelAndView updateUser(User user,ModelAndView view)
	{
		user=dao.updateUser(user);
		view.addObject("u",user);
		view.addObject("msg","User updated with Id:"+user.getId());
		view.setViewName("print.jsp");
		return view;
	}
	@PostMapping("/login")
	public ModelAndView login(@RequestParam long phone,@RequestParam String password,ModelAndView view) 
	{
	User user=dao.verifyUser(phone, password);
	if(user!=null) {
		view.addObject("u",user);
		view.setViewName("home.jsp");
		return  view;
	}else
	{
		view.addObject("msg","Invalid Phone Number or Password");
		view.setViewName("login.jsp");
		return view;
	}
	}
	@GetMapping("/delete")
	public ModelAndView deleteUser(@RequestParam int id,ModelAndView view) 
	{
		boolean isDeleted=dao.deleteUser(id);
		if(isDeleted) {
		view.setViewName("login.jsp");
		view.addObject("msg","Your Account Has been Deleted");
		return view;
		}else {
			view.setViewName("login.jsp");
			view.addObject("msg","you must Login to Delete");
			return view;
		}
	}
	
	

}
