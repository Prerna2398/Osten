package com.hotel.Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import javax.script.ScriptException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.Service.UserService;
import com.hotel.model.User;

@Controller
@RequestMapping("/")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/loginForm")
	@ResponseBody
	public ModelAndView loginForm() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("Login");
		mv.addObject("result");

		return mv;
	}

	@RequestMapping("/login")
	public ModelAndView login(@ModelAttribute("user") User user)
			throws ScriptException, IOException, NoSuchMethodException {

		ModelAndView mv = new ModelAndView();
		if (userService.verify(user.getEmail(), user.getPassword())) {
			mv.setViewName("display");
			mv.addObject("messageLS", user.getEmail());
			mv.addObject("email",user.getEmail());
			mv.addObject("password",user.getPassword());
			/*
			 * ScriptEngineManager manager = new ScriptEngineManager(); ScriptEngine engine
			 * = manager.getEngineByName("JavaScript"); // read script file
			 * //engine.eval(Files.newBufferedReader(Paths.get("login.js"),
			 * StandardCharsets.UTF_8)); engine.eval("login.js");
			 * 
			 * Invocable inv = (Invocable) engine; // call function from script file
			 * inv.invokeFunction("LoginUser");
			 */
		} else {
			mv.setViewName("Login");
			mv.addObject("message", "Enter valid credentials or Sign Up if new user !");
		}
		return mv;
	}

	@RequestMapping("/logout")
	public ModelAndView logoutUser() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("message", "Logged out successfully");

		return mv;
	}

	@ModelAttribute("User")
	public User setSignUpForm() {
		return new User();
	}

	@RequestMapping("/signUpForm")
	public ModelAndView signUp() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("SignUp");
		mv.addObject("result");

		return mv;
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {

		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	@PostMapping("/register")

	public ModelAndView registerUser(@ModelAttribute("user") User user) {
		userService.add(user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("message", "User SignUp successfully.");

		return mv;
	}

	@RequestMapping(value = "/user.do", method = RequestMethod.POST)
	public String doActions(@ModelAttribute User user, BindingResult result, @RequestParam String action,
			Map<String, Object> map) {

		User userResult = new User();
		if (action.toLowerCase() == "add") {
			userService.add(user);
			userResult = user;
		}
		if (action.toLowerCase() == "edit") {
			userService.update(user.getUid());
			userResult = user;
		}
		if (action.toLowerCase() == "search") {
			userService.viewAll();
			userResult = user;
		}
		if (action.toLowerCase() == "delete") {
			userService.remove(user.getUid());
			userResult = user;
		}
		map.put("user", userResult);
		map.put("userList", userService.viewAll());
		return "user";
	}
}
