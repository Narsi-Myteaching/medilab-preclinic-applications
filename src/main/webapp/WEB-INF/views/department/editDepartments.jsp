<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
						<h4 class="page-title">Edit Department</h4>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8 offset-lg-2">
						<%-- <form> --%>
						<form:form action="${requestContext.path}/departments/updateDept" modelAttribute="deptBean">
						<form:hidden path="deptId"/>
						<%-- <div class="form-group">
								<label>Department Id</label> 
								<!-- <input class="form-control"
									type="text"> -->
									<form:input path="deptId" class="form-control"/>
									
							</div> --%>
							<div class="form-group">
								<label>Department Name</label> 
								<!-- <input class="form-control"
									type="text"> -->
									<form:input path="name" class="form-control"/>
							</div>
							<div class="form-group">
								<label>Description</label>
								<!-- <textarea cols="30" rows="4" class="form-control"></textarea> -->
								<form:textarea path="description" cols="30" rows="4" class="form-control"/>
							</div>
							<div class="form-group">
								<label class="display-block">Department Status</label>
								<div class="form-check form-check-inline">
									<!-- <input class="form-check-input" type="radio" name="status"
										id="product_active" value="option1" checked>  -->
										
										<form:radiobutton path="status" value="active"/>
										<%-- <form:radiobutton path="status" class="form-check-input" id="product_active" value="option1" checked/> --%>
										<label
										class="form-check-label" for="product_active"> Active
									</label>
								</div>
								<div class="form-check form-check-inline">
									<!-- <input class="form-check-input" type="radio" name="status"
										id="product_inactive" value="option2"> --> 
										<form:radiobutton path="status" value="inactive"/><label
										class="form-check-label" for="product_inactive">
										Inactive </label>
								</div>
							</div>
							<div class="m-t-20 text-center">
								<button class="btn btn-primary submit-btn">Update
									Department</button>
							</div>
						<%-- </form> --%>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>