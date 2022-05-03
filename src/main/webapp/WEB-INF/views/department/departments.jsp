<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- departments23:21-->
<head>
<link rel="stylesheet" type="text/css" href="${requestContext.path}/assets/css/dataTables.bootstrap4.min.css">
</head>

<body>
	<div class="main-wrapper">
		<jsp:include page="../header.jsp"></jsp:include>
		<jsp:include page="../menu.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="content">
				<div class="row">
					<div class="col-sm-5 col-5">
						<h4 class="page-title">Departments</h4>
					</div>
					<div class="col-sm-7 col-7 text-right m-b-30">
						<a href="${requestContext.path}/departments/viewAddDeptPage"
							class="btn btn-primary btn-rounded"><i class="fa fa-plus"></i>
							Add Department</a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<table class="table table-striped custom-table mb-0 datatable">
								<thead>
									<tr>
										<th>#</th>
										<th>Department Name</th>
										<th>Status</th>
										<th class="text-right">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${deptList}" var="deptBean">
										<tr>
											<td>${deptBean.deptId}</td>
											<td>${deptBean.name}</td>
											<c:choose>
											  <c:when test="${deptBean.status eq 'active'}">
												<td><span class="custom-badge status-green">${deptBean.status}</span></td>  
											  </c:when>
											  <c:otherwise>
											    <td><span class="custom-badge status-red">${deptBean.status}</span></td> 
											  </c:otherwise>
											</c:choose>
											
											<td class="text-right">
												<div class="dropdown dropdown-action">
													<a href="#" class="action-icon dropdown-toggle"
														data-toggle="dropdown" aria-expanded="false"><i
														class="fa fa-ellipsis-v"></i></a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" 
														href="${requestContext.path}/departments/editDept/${deptBean.deptId}"><i
															class="fa fa-pencil m-r-5"></i> Edit</a> <a
															class="dropdown-item"
															href="${requestContext.path}/departments/deleteDept/${deptBean.deptId}"
															data-toggle="modal" data-target="#delete_department"><i
															class="fa fa-trash-o m-r-5"></i> Delete</a>
													</div>
													<div id="delete_department" class="modal fade delete-modal"
											role="dialog">
											<div class="modal-dialog modal-dialog-centered">
												<div class="modal-content">
													<div class="modal-body text-center">
														<img src="${requestContext.path}/assets/img/sent.png"
															alt="" width="50" height="46">
														<h3>Are you sure want to delete this Department?</h3>
														<div class="m-t-20">
															<a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
															<%-- <form
																action="${requestContext.path}/departments/deleteDept/${deptBean.deptId}"> --%>
																<a href="${requestContext.path}/departments/deleteDept/${deptBean.deptId}">
																	<button type="submit" class="btn btn-danger">Delete</button>
																</a>
															<!-- </form> -->
														</div>
													</div>
												</div>
											</div>
										</div>
												</div>
												
											</td>
											
										</tr>
										
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="notification-box">
				<div class="msg-sidebar notifications msg-noti">
					<div class="topnav-dropdown-header">
						<span>Messages</span>
					</div>
					<div class="drop-scroll msg-list-scroll" id="msg_list">
						<ul class="list-box">
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">R</span>
										</div>
										<div class="list-body">
											<span class="message-author">Richard Miles </span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item new-message">
										<div class="list-left">
											<span class="avatar">J</span>
										</div>
										<div class="list-body">
											<span class="message-author">John Doe</span> <span
												class="message-time">1 Aug</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">T</span>
										</div>
										<div class="list-body">
											<span class="message-author"> Tarah Shropshire </span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">M</span>
										</div>
										<div class="list-body">
											<span class="message-author">Mike Litorus</span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">C</span>
										</div>
										<div class="list-body">
											<span class="message-author"> Catherine Manseau </span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">D</span>
										</div>
										<div class="list-body">
											<span class="message-author"> Domenic Houston </span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">B</span>
										</div>
										<div class="list-body">
											<span class="message-author"> Buster Wigton </span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">R</span>
										</div>
										<div class="list-body">
											<span class="message-author"> Rolland Webber </span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">C</span>
										</div>
										<div class="list-body">
											<span class="message-author"> Claire Mapes </span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">M</span>
										</div>
										<div class="list-body">
											<span class="message-author">Melita Faucher</span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">J</span>
										</div>
										<div class="list-body">
											<span class="message-author">Jeffery Lalor</span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">L</span>
										</div>
										<div class="list-body">
											<span class="message-author">Loren Gatlin</span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
							<li><a href="chat.html">
									<div class="list-item">
										<div class="list-left">
											<span class="avatar">T</span>
										</div>
										<div class="list-body">
											<span class="message-author">Tarah Shropshire</span> <span
												class="message-time">12:28 AM</span>
											<div class="clearfix"></div>
											<span class="message-content">Lorem ipsum dolor sit
												amet, consectetur adipiscing</span>
										</div>
									</div>
							</a></li>
						</ul>
					</div>
					<div class="topnav-dropdown-footer">
						<a href="chat.html">See all messages</a>
					</div>
				</div>
			</div>
		</div>
		<%-- <div id="delete_department" class="modal fade delete-modal" role="dialog">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body text-center">
						<img src="${requestContext.path}/assets/img/sent.png" alt="" width="50" height="46">
						<h3>Are you sure want to delete this Department?</h3>
						<div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
						  <form action="${requestContext.path}/departments/deleteDept/${deptBean.deptId}">
							<button type="submit" class="btn btn-danger">Delete</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div> --%>
	</div>

</body>
</html>