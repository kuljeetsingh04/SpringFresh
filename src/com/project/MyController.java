package com.project;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {

	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String showSignUp() {
		return "signup";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin() {
		return "login";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		// Would not bind my password to the bean.. Just for trying this method.
		binder.setDisallowedFields(new String[] { "pwd" });

		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		binder.registerCustomEditor(Date.class, "DOB", new CustomDateEditor(
				dateFormat, false));

		binder.registerCustomEditor(String.class, "name", new NameEditor());
	}

	@ModelAttribute
	public void addingCommonObjects(Model model) {
		model.addAttribute("footerMessage",
				"You are in my Jurisdiction.. Stay safe.!");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView doSignUp(
			@Valid @ModelAttribute("student1") Student student,
			BindingResult result) {

		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("signup");
			// model.addObject("errormessage", "error message");
			return model;
		}
		ModelAndView model = new ModelAndView("signupsuccess");
		doSendEmailByMe(student);
		return model;

	}

	private void doSendEmailByMe(Student student) {
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(student.getEmail());
		email.setSubject("Registered to My Spring Application");
		email.setText("Hi "
				+ student.getName()
				+ ",  You can now feel privileged as you are now a part of My spring application. You can use this email id and password you set to use the application now.\n Thanks & Regards, Kuljeet Singh");

		mailSender.send(email);

	}

	public void doSendEmailByMepart2() {
		// TODO Auto-generated method stub
		System.out.println("This method can also be used to trigger events post handle method from interceptor. Method called from interceptor.");

	}
	
/*	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView doLogin(
			@Valid @ModelAttribute("student2") StudentLogin studentlogin,
			BindingResult result) {
		boolean status=false;
		if(studentlogin.getEmail().equalsIgnoreCase("singh.kuljeet04@gmail.com") && studentlogin.getPassword().equalsIgnoreCase("password1$")){
			
		status= true;
		
		}
		
		if(status){
		
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("login");
			// model.addObject("errormessage", "error message");
			return model;
		}
		ModelAndView model = new ModelAndView("dashboard");
		
		return model;
		}else{
			return new ModelAndView("login", "LoginErrorMessage", "Sorry, ID or Password doesnt match");
		}
	}*/

	/*
	 * public void doSendEmailByMe(){
	 * 
	 * System.out.println("hi, i am going to send an email now..");
	 */

	/*
	 * String recipientAddress = request.getParameter("recipient"); String
	 * subject = request.getParameter("subject"); String message =
	 * request.getParameter("message");
	 */

	/*
	 * String recipientAddress // prints debug info System.out.println("To: " +
	 * recipientAddress); System.out.println("Subject: " + subject);
	 * System.out.println("Message: " + message);
	 * 
	 * // creates a simple e-mail object SimpleMailMessage email = new
	 * SimpleMailMessage(); email.setTo(recipientAddress);
	 * email.setSubject(subject); email.setText(message);
	 * 
	 * // sends the e-mail mailSender.send(email);
	 * 
	 * // forwards to the view named "Result" return "Result"; }
	 */

}
