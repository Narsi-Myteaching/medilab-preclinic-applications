package com.medilab.preclinic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dashboard")
public class MedilabDashboradController {

	@RequestMapping
	public String viewMedilabDashborad() {
		System.out.println("i am in dashboard");
		return "dashboard";
	}
}
