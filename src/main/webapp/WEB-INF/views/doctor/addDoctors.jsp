<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- departments23:21-->
<head>

</head>

<body>
	<div class="main-wrapper">
		<jsp:include page="../header.jsp"></jsp:include>
		<jsp:include page="../menu.jsp"></jsp:include>
		<div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h4 class="page-title">Add Doctor</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <form:form action="${requestContext.path}/doctors/addDoctor" modelAttribute="doctBean">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>First Name <span class="text-danger">*</span></label>
                                        <form:input class="form-control" type="text" path="fname"/>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <form:input class="form-control" type="text" path="lname"/>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Username <span class="text-danger">*</span></label>
                                        <form:input class="form-control" type="text" path="userId"/>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Email <span class="text-danger">*</span></label>
                                        <form:input class="form-control" type="email" path="email"/>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        
                                        <form:password path="password" class="form-control"/>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Confirm Password</label>
                                        <form:password path="cpassword" class="form-control"/>
                                    </div>
                                </div>
								<div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Date of Birth</label>
                                        <div class="cal-icon">
                                            
                                            <form:input class="form-control datetimepicker" type="text" path="dob" />
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
									<div class="form-group gender-select">
										<label class="gen-label">Gender:</label>
										<div class="form-check-inline">
											<label class="form-check-label">
												
												<form:radiobutton path="gender" class="form-check-input" value="Male"/>Male
											</label>
										</div>
										<div class="form-check-inline">
											<label class="form-check-label">
												<form:radiobutton path="gender" class="form-check-input" value="Female"/>Female
											</label>
										</div>
									</div>
                                </div>
                                <div class="col-sm-6 col-md-6 col-lg-3">
											<div class="form-group">
												<label>Department</label>
												
												<form:select path="dept" class="form-control select">
												  <%-- <form:option value="California">California</form:option>
												  <form:option value="Alaska">Alaska</form:option>
												  <form:option value="Alabama">Alabama</form:option> --%>
												  <c:forEach items="${deptBeanList}" var="name">
												    <form:option value="${name}">${name }</form:option>
												  </c:forEach>
												</form:select>
											</div>
										</div>
								<div class="col-sm-12">
									<div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<label>Address</label>
												<form:input class="form-control" type="text" path="address"/>
												
											</div>
										</div>
										<div class="col-sm-6 col-md-6 col-lg-3">
											<div class="form-group">
												<label>Country</label>
												<!-- <select class="form-control select">
													<option>USA</option>
													<option>United Kingdom</option>
												</select> -->
												<form:select path="country" class="form-control select">
												  <form:option value="USA">USA</form:option>
												  <form:option value="United Kingdom">United Kingdom</form:option>
												</form:select>
											</div>
										</div>
										<div class="col-sm-6 col-md-6 col-lg-3">
											<div class="form-group">
												<label>City</label>
												<form:input path="city" class="form-control"/>
											</div>
										</div>
										<div class="col-sm-6 col-md-6 col-lg-3">
											<div class="form-group">
												<label>State/Province</label>
												<!-- <select class="form-control select">
													<option>California</option>
													<option>Alaska</option>
													<option>Alabama</option>
												</select> -->
												<form:select path="state" class="form-control select">
												  <form:option value="California">California</form:option>
												  <form:option value="Alaska">Alaska</form:option>
												  <form:option value="Alabama">Alabama</form:option>
												</form:select>
											</div>
										</div>
										<div class="col-sm-6 col-md-6 col-lg-3">
											<div class="form-group">
												<label>Postal Code</label>
												<!-- <input type="text" class="form-control"> -->
												<form:input path="postalCode" class="form-control"/>
											</div>
										</div>
									</div>
								</div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Phone </label>
                                        <!-- <input class="form-control" type="text"> -->
                                        <form:input path="phone" class="form-control"/>
                                    </div>
                                </div>
                                <div class="col-sm-6">
									<div class="form-group">
										<label>Avatar</label>
										<div class="profile-upload">
											<div class="upload-img">
												<img alt="" src="assets/img/user.jpg">
											</div>
											<div class="upload-input">
												<form:input path="avatar" class="form-control"/>
											</div>
										</div>
									</div>
                                </div>
                            </div>
							<div class="form-group">
                                <label>Short Biography</label>
                                <!-- <textarea class="form-control" rows="3" cols="30"></textarea> -->
                                <form:textarea path="biography" class="form-control" rows="3" cols="30"/>
                            </div>
                            <div class="form-group">
                                <label class="display-block">Status</label>
								<div class="form-check form-check-inline">
									<!-- <input class="form-check-input" type="radio" name="status" id="doctor_active" value="option1" checked> -->
									<form:radiobutton path="status" value="active"/>
									<label class="form-check-label" for="doctor_active">
									Active
									</label>
								</div>
								<div class="form-check form-check-inline">
									<!-- <input class="form-check-input" type="radio" name="status" id="doctor_inactive" value="option2"> -->
									<form:radiobutton path="status" value="inactive"/>
									<label class="form-check-label" for="doctor_inactive">
									Inactive
									</label>
								</div>
                            </div>
                            <div class="m-t-20 text-center">
                                <button class="btn btn-primary submit-btn">Create Doctor</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
	</div>

</body>
</html>