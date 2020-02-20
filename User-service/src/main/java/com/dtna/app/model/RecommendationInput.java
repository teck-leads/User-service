package com.dtna.app.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RecommendationInput {
	
	private String customerName;
	private List<String> engineList;
	private List<String> modelList;
	private List<String> transmissionList;
	private List<String> differentialList;
	private List<String> dutyCycleAppList;
	private List<String> mpgList;
	private String estimatedServiceInterval;
	private String estimatedAnnualMileage;
	private List<String> ptoHrsList;
	
	private List<String> planedYrsOfServiceList;
	private List<String> mviInspectionList;
	private List<String> numOfAxlesList;
	private List<String> numOfServicesList;
	private String comments;
	
	
	

}
