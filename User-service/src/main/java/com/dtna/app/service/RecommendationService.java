package com.dtna.app.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.dtna.app.model.RecommendationInput;

@Service
public class RecommendationService {

	public RecommendationInput getEngineList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> engineList = Arrays.asList("DD15", "DD16", "DD17", "DD18", "DD19", "DD20", "DD21");
		recommendationInput.setEngineList(engineList);
		
		return recommendationInput;

	}
	
	public RecommendationInput getModelList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> engineList = Arrays.asList("New Cascade 126", "New Cascade 130", "New Cascade 140", "New Cascade 150", "New Cascade 160", "New Cascade 170", "New Cascade 180");
		recommendationInput.setModelList(engineList);
		return recommendationInput;

	}
	
	public RecommendationInput getTransmissionList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> transmissionList = Arrays.asList("Detroit-101", "Detroit-102", "Detroit-103", "Detroit-104", "Detroit-105", "Detroit-106");
		recommendationInput.setTransmissionList(transmissionList);
		return recommendationInput;

	}
	public RecommendationInput getDifferentialList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> differentialList = Arrays.asList("Single Axle Detroit-101", "Single Axle Detroit-102", "Single Axle Detroit-103", "Single Axle Detroit-104", "Single Axle Detroit-105", "Single Axle Detroit-106");
		recommendationInput.setDifferentialList(differentialList);
		
		return recommendationInput;

	}
	public RecommendationInput getDutyCycleAppList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> dutyCycleApp = Arrays.asList("Efficient Long haul", "Efficient Short haul");
		recommendationInput.setDutyCycleAppList(dutyCycleApp);
		return recommendationInput;

	}
	
	public RecommendationInput getMpgList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> mpgList = Arrays.asList("7 Plus", "8 Plus");
		recommendationInput.setMpgList(mpgList);
		
		return recommendationInput;

	}
	
	public RecommendationInput getPtoHrsList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> ptoList = Arrays.asList("0-100", "101-200","201-300");
		recommendationInput.setPtoHrsList(ptoList);
		
		return recommendationInput;

	}
	
	public RecommendationInput getPlannedYrsOfServiceList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> plannerYearsOfService = Arrays.asList("5", "6","7","8");
		recommendationInput.setPlanedYrsOfServiceList(plannerYearsOfService);
		
		return recommendationInput;

	}
	
	public RecommendationInput getMviInspectionList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> mviInspectionList = Arrays.asList("1", "2","3","4");
		recommendationInput.setMviInspectionList(mviInspectionList);
		
		return recommendationInput;

	}
	
	public RecommendationInput getNumOfAxlesList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> numOfAxlesList = Arrays.asList("1", "2","3","4");
		recommendationInput.setNumOfAxlesList(numOfAxlesList);
		
		return recommendationInput;

	}
	public RecommendationInput getNumOfServicesList() {
		RecommendationInput recommendationInput = new RecommendationInput();
		List<String> numOfServicesList = Arrays.asList("1", "2","3","4");
		recommendationInput.setNumOfServicesList(numOfServicesList);
		
		return recommendationInput;

	}
	
	
	
}
