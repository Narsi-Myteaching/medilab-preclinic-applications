<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
                    <div class="col-sm-4 col-3">
                        <h4 class="page-title">Doctors</h4>
                    </div>
                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="${requestContext.path}/doctors/addDoctorPage" class="btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Doctor</a>
                    </div>
                </div>
                
                <div class="row doctor-grid">
                <c:forEach items="${doctBeanList }" var="doctBean">
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="${requestContext.path}/assets/img/doctor-thumb-03.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="${requestContext.path}/doctors/edit/${doctBean.doctId}">
                                    <i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="${requestContext.path}/doctors/delete/${doctBean.doctId}" data-toggle="modal" data-target="#delete_doctor">
                                    <i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                    </div>
                                    <div id="delete_doctor" class="modal fade delete-modal"
											role="dialog">
											<div class="modal-dialog modal-dialog-centered">
												<div class="modal-content">
													<div class="modal-body text-center">
														<img src="${requestContext.path}/assets/img/sent.png"
															alt="" width="50" height="46">
														<h3>Are you sure want to delete this Doctor?</h3>
														<div class="m-t-20">
															<a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
															<%-- <form
																action="${requestContext.path}/departments/deleteDept/${deptBean.deptId}"> --%>
																<a href="${requestContext.path}/doctors/delete/${doctBean.doctId}">
																	<button type="submit" class="btn btn-danger">Delete</button>
																</a>
															<!-- </form> -->
														</div>
													</div>
												</div>
											</div>
                                </div>
                            
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">
                             <c:out value="${doctBean.fname} ${doctBean.lname}"></c:out>
                            </a></h4>
                            <div class="doc-prof">${doctBean.biography}</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> ${doctBean.address}
                            </div>
                        </div>
                        </div>
                    </div>
                    </c:forEach>
                    </div>
                
				<!-- <div class="row doctor-grid">
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-03.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Cristina Groves</a></h4>
                            <div class="doc-prof">Gynecologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-07.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Marie Wells</a></h4>
                            <div class="doc-prof">Psychiatrist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-04.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Henry Daniels</a></h4>
                            <div class="doc-prof">Cardiologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-11.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Mark Hunter</a></h4>
                            <div class="doc-prof">Urologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="#"><img alt="" src="assets/img/doctor-thumb-12.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Michael Sullivan</a></h4>
                            <div class="doc-prof">Ophthalmologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-02.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Linda Barrett</a></h4>
                            <div class="doc-prof">Dentist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-09.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Ronald Jacobs</a></h4>
                            <div class="doc-prof">Oncologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-01.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Albert Sandoval</a></h4>
                            <div class="doc-prof">Neurologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-05.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Diana Bailey</a></h4>
                            <div class="doc-prof">General Surgery</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-10.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Shirley Willis</a></h4>
                            <div class="doc-prof">Radiologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-08.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Pamela Curtis</a></h4>
                            <div class="doc-prof">Pediatrics</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="doctor-img">
                                <a class="avatar" href="profile.html"><img alt="" src="assets/img/doctor-thumb-06.jpg"></a>
                            </div>
                            <div class="dropdown profile-action">
                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="edit-doctor.html"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_doctor"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Justin Parker</a></h4>
                            <div class="doc-prof">Physical Therapist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Francisco
                            </div>
                        </div>
                    </div>
                </div> -->
				<div class="row">
                    <div class="col-sm-12">
                        <div class="see-all">
                            <a class="see-all-btn" href="javascript:void(0);">Load More</a>
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