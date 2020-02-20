package com.dtna.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dtna.app.model.RecommendationInput;
import com.dtna.app.service.RecommendationService;

@Controller

public class RecommendationController {
	
	@Autowired
	private RecommendationService recommendationService;
	
	@GetMapping(value = "/quotes")
	public String loadQuote(Model model){
		model.addAttribute("engineListKey", recommendationService.getEngineList());
		model.addAttribute("modelListKey", recommendationService.getModelList());
		model.addAttribute("transmissionListKey", recommendationService.getTransmissionList());
		model.addAttribute("differentialListKey", recommendationService.getDifferentialList());
		model.addAttribute("dutyCycleAppListKey", recommendationService.getDutyCycleAppList());
		model.addAttribute("mpgListKey", recommendationService.getMpgList());
		model.addAttribute("ptoHrsListKey", recommendationService.getPtoHrsList());
		model.addAttribute("planedYrsOfServiceListKey", recommendationService.getPlannedYrsOfServiceList());
		model.addAttribute("mviInspectionListKey", recommendationService.getMviInspectionList());
		model.addAttribute("numOfAxlesListKey", recommendationService.getNumOfAxlesList());
		model.addAttribute("numOfServicesListKey", recommendationService.getNumOfServicesList());
		
		
		
		
		
		
		
		
		return "QuickQuote";
	}

	
	@RequestMapping(value = "/quotes/save", method = RequestMethod.POST)
	public String calculatedQuote(@ModelAttribute RecommendationInput recommendationInput, Model model){
		model.addAttribute("test", "displayvalues");
		/* model.addAttribute("recommendationInput", recommendationInput); */
		
		return "resultpage";
	}

}
