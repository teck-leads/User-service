<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 15px;
}
</style>
<meta charset="ISO-8859-1">
<title>DTNA</title>
</head>
<body>
	<h2>Result page</h2>


	<table>

		<tr>
			<td>CustomerName</td>
			<td>${recommendationInput.customerName }</td>
		</tr>
		<tr>
			<td>Engine</td>
			<td>${recommendationInput.engineList[0] }</td>
		</tr>
		<tr>
			<td>Model</td>
			<td>${recommendationInput.modelList[0] }</td>
		</tr>
		<tr>
			<td>Transmission</td>
			<td>${recommendationInput.transmissionList[0] }</td>
		</tr>
		<tr>
			<td>Differential</td>
			<td>${recommendationInput.differentialList[0] }</td>
		</tr>
		<tr>
			<td>Duty Cycle / Application</td>
			<td>${recommendationInput.dutyCycleAppList[0] }</td>
		</tr>


		<tr>
			<td>MPG</td>
			<td>${recommendationInput.mpgList[0] }</td>
		</tr>
		<tr>
			<td>Estimated Service Interval</td>
			<td>${recommendationInput.estimatedServiceInterval }</td>
		</tr>
		<tr>
			<td>Estimated Annual Mileage</td>
			<td>${recommendationInput.estimatedAnnualMileage }</td>
		</tr>
		<tr>
			<td>PTO Hours</td>
			<td>${recommendationInput.ptoHrsList[0] }</td>
		</tr>
		<tr>
			<td>Planned Years Of services</td>
			<td>${recommendationInput.planedYrsOfServiceList[0] }</td>
		</tr>

		<tr>
			<td>MVI Inspection</td>
			<td>${recommendationInput.mviInspectionList[0] }</td>
		</tr>
		<tr>
			<td>Number of Axles</td>
			<td>${recommendationInput.numOfAxlesList[0] }</td>
		</tr>
		<tr>
			<td>Number of Services</td>
			<td>${recommendationInput.numOfServicesList[0] }</td>
		</tr>
		<tr>
			<td>Comments</td>
			<td>${recommendationInput.comments }</td>
		</tr>




	</table>

</body>
</html>