<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quick Quote</title>

<!-- Layout styles -->
<link rel="stylesheet" href="../assets/css/style.css" type="text/css">
<!-- End layout styles -->
</head>
<body>
	<div class="container-scroller">

		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<div class="main-panel">
				<div class="content-wrapper">

					<div class="row">
						<div class="col-md-8">
							<h4 class="card-title">Recommendation</h4>
						</div>
					</div>

					<div class="row">
						<div class="col-md-5 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<!-- TODO FORM STARTS HERE -->
									<form class="forms-sample" action="quotes/save" method="POST">
										<div class="form-group row">
											<label for="exampleInputUsername2"
												class="col-sm-4 col-form-label">Customer Name</label>
											<div class="col-sm-8">
												<input type="text" name="customerName" class="form-control"
													id="exampleInputUsername2" placeholder="Customer Name">
											</div>
										</div>
										<h5 class="card-title">General Information</h5>
										<div class="form-group row">
											<label for="exampleInputEmail2"
												class="col-sm-4 col-form-label">Engine</label>
											<div class="col-sm-8">
												<select class="form-control" name="engineList">





													<c:choose>
														<c:when test="${empty engineListKey.engineList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ engineListKey.engineList}"
																var="engine">

																<option>${engine }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>



												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputMobile"
												class="col-sm-4 col-form-label">Model</label>
											<div class="col-sm-8">
												<select class="form-control" name="modelList">
													<c:choose>
														<c:when test="${empty modelListKey.modelList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ modelListKey.modelList}" var="model">

																<option>${model }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputPassword2"
												class="col-sm-4 col-form-label">Transmission</label>
											<div class="col-sm-8">
												<select class="form-control" name="transmissionList">
													<c:choose>
														<c:when test="${empty transmissionListKey.transmissionList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ transmissionListKey.transmissionList}" var="transmission">

																<option>${transmission }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputConfirmPassword2"
												class="col-sm-4 col-form-label">Differential</label>
											<div class="col-sm-8">
												<select class="form-control" name="differentialList">
													<c:choose>
														<c:when test="${empty differentialListKey.differentialList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ differentialListKey.differentialList}" var="differential">

																<option>${differential }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputConfirmPassword2"
												class="col-sm-4 col-form-label">Duty Cycle /
												Application</label>
											<div class="col-sm-8">
												<select class="form-control" name="dutyCycleAppList">
													<c:choose>
														<c:when test="${empty dutyCycleAppListKey.dutyCycleAppList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ dutyCycleAppListKey.dutyCycleAppList}" var="dutyCycleApp">

																<option>${dutyCycleApp }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<div class="col-sm-12">
												<label>OR</label>
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputConfirmPassword2"
												class="col-sm-4 col-form-label">MPG</label>
											<div class="col-sm-8">
												<select class="form-control" name="mpgList">
													<c:choose>
														<c:when test="${empty mpgListKey.mpgList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ mpgListKey.mpgList}" var="mpg">

																<option>${mpg }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputConfirmPassword2"
												class="col-sm-4 col-form-label">Estimated Service
												Interval</label>
											<div class="col-sm-8">
												<input type="text" name="estimatedServiceInterval" class="form-control"
													id="exampleInputUsername2"
													placeholder="Estimated Service Interval">
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputConfirmPassword2"
												class="col-sm-4 col-form-label">Estimated Annual
												Mileage</label>
											<div class="col-sm-8">
												<input type="text" name="estimatedAnnualMileage" class="form-control"
													id="exampleInputUsername2"
													placeholder="Estimated Annual Mileage">
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputConfirmPassword2"
												class="col-sm-4 col-form-label">PTO hrs</label>
											<div class="col-sm-8">
												<select class="form-control" name="ptoHrsList">
													<c:choose>
														<c:when test="${empty ptoHrsListKey.ptoHrsList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ ptoHrsListKey.ptoHrsList}" var="pto">

																<option>${pto }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputConfirmPassword2"
												class="col-sm-4 col-form-label">Planned Year Of
												services</label>
											<div class="col-sm-8">
												<select class="form-control" name="planedYrsOfServiceList">
													<c:choose>
														<c:when test="${empty planedYrsOfServiceListKey.planedYrsOfServiceList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ planedYrsOfServiceListKey.planedYrsOfServiceList}" var="yrsOfService">

																<option>${yrsOfService }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
												</select>
											</div>
										</div>
										<div class="row">
											<h4 class="card-title">Canadian MVI and Wheels off
												Inspection</h4>
											<div
												style="background-color: #f9f9f9; width: 100%; min-height: 150px; border: 1px solid #e0e0e0; border-radius: 6px; padding: 15px 10px; margin-bottom: 20px">
												<div class="form-group row">
													<label for="exampleInputConfirmPassword2"
														class="col-sm-4 col-form-label">MVI Inspection</label>
													<div class="col-sm-8">
														<select class="form-control" name="mviInspectionList">
															<c:choose>
														<c:when test="${empty mviInspectionListKey.mviInspectionList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ mviInspectionListKey.mviInspectionList}" var="mviInspection">

																<option>${mviInspection }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="exampleInputConfirmPassword2"
														class="col-sm-4 col-form-label">Number of Axles</label>
													<div class="col-sm-8">
														<select class="form-control" name="numOfAxlesList">
														
														<c:choose>
														<c:when test="${empty numOfAxlesListKey.numOfAxlesList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ numOfAxlesListKey.numOfAxlesList}" var="numOfAxles">

																<option>${numOfAxles }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
															
														</select>
													</div>
												</div>
												<div class="form-group row mb-0">
													<label for="exampleInputConfirmPassword2"
														class="col-sm-4 col-form-label mb-0">Number of
														Services</label>
													<div class="col-sm-8">
														<select class="form-control" name="numOfServicesList">
															<c:choose>
														<c:when test="${empty numOfServicesListKey.numOfServicesList}">
															<option>No value</option>
														</c:when>
														<c:otherwise>
															<c:forEach items="${ numOfServicesListKey.numOfServicesList}" var="numOfServices">

																<option>${numOfServices }</option>

															</c:forEach>
														</c:otherwise>
													</c:choose>
														</select>
													</div>
												</div>
											</div>
										</div>
										<div class="form-group row ">
											<label for="exampleInputConfirmPassword2"
												class="col-sm-4 col-form-label">Comments</label>
											<div class="col-sm-8">
												<textarea class="form-control mb-15" rows="4" id="comment" name="comments"></textarea>
											</div>
										</div>
										<div class="row pull-right">
											<button type="submit" class="btn btn-primary mr-2"
												style="background-color: #307ca5; border-color: #307ca5;">Calculate</button>
											<button class="btn btn-light">Cancel</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- TODO 1st form ends here  -->

						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="packages-sec">
										<div class="row mb-30">
											<div class="col-sm-6">
												<div class="table-title">
													<div class="form-check mt-0">
														<label class="form-check-label"> <input
															type="checkbox" class="form-check-input" checked="">
															Interval Package <i class="input-helper"></i></label>
													</div>
												</div>
												<table class="table-fill">
													<thead>
														<tr>
															<th class="text-left">Services</th>
															<th class="text-left" style="min-width: 115px;"># of
																Services</th>
														</tr>
													</thead>
													<tbody class="table-hover">
														<tr>
															<td class="text-left">ENGINE OIL & FILTER CHANGE</td>
															<td class="text-left">6</td>
														</tr>
														<tr>
															<td class="text-left">OIL ANALYSIS</td>
															<td class="text-left">6</td>
														</tr>
														<tr>
															<td class="text-left">CHASSIS LUBRICATION</td>
															<td class="text-left">6</td>
														</tr>
														<tr>
															<td class="text-left">115 POINT INSPECTION</td>
															<td class="text-left">6</td>
														</tr>
														<tr>
															<td class="text-left">FUEL/WATER SEPARATOR FILTER
																CHANGE</td>
															<td class="text-left">6</td>
														</tr>
														<tr>
															<td class="text-left">ENGINE FUEL FILTER CHANGE</td>
															<td class="text-left">6</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="col-sm-6">
												<div class="table-title">
													<div class="form-check mt-0">
														<label class="form-check-label"> <input
															type="checkbox" class="form-check-input"> Annual
															Package <i class="input-helper"></i></label>
													</div>
												</div>
												<table class="table-fill">
													<thead>
														<tr>
															<th class="text-left">Services</th>
															<th class="text-left" style="min-width: 115px;"># of
																Services</th>
														</tr>
													</thead>
													<tbody class="table-hover">
														<tr>
															<td class="text-left">CHASSIS ANNUAL DOT INSPECTION</td>
															<td class="text-left">5</td>
														</tr>
														<tr>
															<td class="text-left">WIPER BLADE REPLACEMENT</td>
															<td class="text-left">5</td>
														</tr>
														<tr>
															<td class="text-left">COOLANT SYSTEM CHEMICAL
																ANALYSIS</td>
															<td class="text-left">5</td>
														</tr>

													</tbody>
												</table>
											</div>
										</div>

										<div class="row mb-30">
											<div class="col-sm-12">

												<div class="table-title">Add Ons</div>
												<div class="table-title">
													<div class="form-check mt-0">
														<label class="form-check-label"> <input
															type="checkbox" class="form-check-input" checked="">
															Select All <i class="input-helper"></i><i
															class="input-helper"></i></label>
													</div>
												</div>

												<table class="table table-responsive ">
													<thead class="thead-dark thead-dark-border">
														<tr>
															<th class="dark-bg w-100percent">System Group</th>
															<th>Time</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input">
																		DRIVE BELT SERVICE <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>2</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input"> AIR
																		DRYER SERVICE <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>2</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input">
																		POWER STEERING SYSTEM SERVICE <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>2</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input">
																		DIFFERENTIAL SERVICE <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>1</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input">
																		VALVE LASH ADJUSTMENT <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>1</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input"> AIR
																		FILTER SERVICE <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>1</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input"> DEF
																		FILTER SERVICE <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>1</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input">
																		Coalescing Filter <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>1</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input">
																		Coolant Filter <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>1</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input">
																		Canadian MVI <i class="input-helper"></i><i
																		class="input-helper"></i><i class="input-helper"></i></label>
																</div>
															</td>
															<td>1</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input">
																		Canadian Wheels Off inspection - Axles <i
																		class="input-helper"></i><i class="input-helper"></i><i
																		class="input-helper"></i></label>
																</div>
															</td>
															<td>1</td>
														</tr>
														<tr>
															<td>
																<div class="form-check mt-0 mb-0">
																	<label class="form-check-label"> <input
																		type="checkbox" class="form-check-input">
																		Canadian Wheels Off inspection - Services <i
																		class="input-helper"></i><i class="input-helper"></i><i
																		class="input-helper"></i></label>
																</div>
															</td>
															<td>1</td>
														</tr>

													</tbody>
												</table>
											</div>
										</div>

										<div class="row "
											style="text-align: center; padding-left: 2%;">
											<button type="submit" class="btn btn-primary mr-2"
												style="background-color: #307ca5; border-color: #307ca5;">Recalculate</button>
											<button class="btn btn-light">Print PDF</button>
										</div>

									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- content-wrapper ends -->

			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="../../../assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="../../../assets/vendors/select2/select2.min.js"></script>
	<script
		src="../../../assets/vendors/typeahead.js/typeahead.bundle.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="../../../assets/js/off-canvas.js"></script>
	<script src="../../../assets/js/hoverable-collapse.js"></script>
	<script src="../../../assets/js/misc.js"></script>
	<script src="../../../assets/js/settings.js"></script>
	<script src="../../../assets/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="../../../assets/js/file-upload.js"></script>
	<script src="../../../assets/js/typeahead.js"></script>
	<script src="../../../assets/js/select2.js"></script>
	<!-- End custom js for this page -->
</body>

<!-- Mirrored from www.bootstrapdash.com/demo/stellar-admin/jquery/template/demo_3/pages/forms/basic_elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Dec 2019 08:29:57 GMT -->
</html>