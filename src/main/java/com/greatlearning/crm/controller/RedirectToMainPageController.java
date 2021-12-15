package com.greatlearning.crm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RedirectToMainPageController {

	@RequestMapping("/")
	public String redirectToMainPage() {
		return "redirect:customers/list";
	}

}
