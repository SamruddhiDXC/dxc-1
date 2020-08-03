package com.dxc.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/test")  
@Controller  
public class BookingForm {
	@RequestMapping("/bookingForm")  
	public String bookingForm(Model model)  
	{  
	      //create a reservation object   
	    Reservation res=new Reservation();  
	      //provide reservation object to the model   
	    model.addAttribute("reservation", res);  
	    return "reservation-form";  
	}  
	@RequestMapping("/submitForm")  
	public String submitForm(@ModelAttribute("reservation") Reservation res)  
	{  
	    return "confirmation-form";  
	}  
}
