<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html data-bs-theme="light" lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Add Role - Brand</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/styles.min.css">
<!-- Add these in the head section of your JSP -->
<link
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
.card {
	border-radius: 6px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
	margin-bottom: 1rem;
}

.card-header {
	padding: 0.5rem 0.75rem;
	background-color: #f8f9fa;
}

.card-header h6 {
	font-size: 0.9rem;
	font-weight: 600;
}

.list-group-item {
	padding: 0.4rem 0.75rem;
	font-size: 0.85rem;
}

.btn-group-sm>.btn {
	padding: 0.2rem 0.4rem;
	font-size: 0.75rem;
}

.text-truncate {
	max-width: 120px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.card-body {
	max-height: 300px;
	overflow-y: auto;
}

.btn-group>.btn:not(:last-child) {
	margin-right: 1px;
}

/* Custom scrollbar */
.card-body::-webkit-scrollbar {
	width: 4px;
}

.card-body::-webkit-scrollbar-track {
	background: #f1f1f1;
}

.card-body::-webkit-scrollbar-thumb {
	background: #888;
	border-radius: 2px;
}

/* Hover effects */
.list-group-item:hover {
	background-color: #f8f9fa;
}

.btn-outline-primary:hover, .btn-outline-danger:hover {
	color: #fff;
}

.modal-header {
	background-color: #f8f9fa;
	border-bottom: 1px solid #dee2e6;
}

.modal-footer {
	background-color: #f8f9fa;
	border-top: 1px solid #dee2e6;
}

.form-label {
	font-weight: 500;
}

.btn-close:focus {
	box-shadow: none;
}

.modal-content {
	border-radius: 8px;
}

.form-control:focus {
	border-color: #80bdff;
	box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, .25);
}

.btn {
	margin-left: 5px;
}

.invalid-feedback {
	font-size: 80%;
}
</style>
</head>
<body id="page-top">
	<div id="wrapper">
		<%@ include file="AdminSideBar.jsp"%>
		<div class="d-flex flex-column" id="content-wrapper">
			<div id="content">
				<nav class="navbar navbar-expand bg-white shadow mb-4 topbar">
					<div class="container-fluid">
						<button class="btn btn-link d-md-none rounded-circle me-3"
							id="sidebarToggleTop" type="button">
							<i class="fas fa-bars"></i>
						</button>
						<form
							class="d-none d-sm-inline-block me-auto ms-md-3 my-2 my-md-0 mw-100 navbar-search">
							<div class="input-group">
								<input class="bg-light form-control border-0 small" type="text"
									placeholder="Search for ...">
								<button class="btn btn-primary py-0" type="button">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</form>
						<ul class="navbar-nav flex-nowrap ms-auto">
							<li class="nav-item dropdown d-sm-none no-arrow"><a
								class="dropdown-toggle nav-link" aria-expanded="false"
								data-bs-toggle="dropdown" href="#"> <i class="fas fa-search"></i>
							</a>
								<div
									class="dropdown-menu dropdown-menu-end p-3 animated--grow-in"
									aria-labelledby="searchDropdown">
									<form class="me-auto navbar-search w-100">
										<div class="input-group">
											<input class="bg-light border-0 form-control small"
												type="text" placeholder="Search for ...">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search"></i>
											</button>
										</div>
									</form>
								</div></li>
							<li class="nav-item dropdown no-arrow mx-1">
								<div class="nav-item dropdown no-arrow">
									<a class="dropdown-toggle nav-link" aria-expanded="false"
										data-bs-toggle="dropdown" href="#"> <span
										class="badge bg-danger badge-counter">3+</span> <i
										class="fas fa-bell fa-fw"></i>
									</a>
									<div
										class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
										<h6 class="dropdown-header">alerts center</h6>
										<a class="dropdown-item d-flex align-items-center" href="#">
											<div class="me-3">
												<div class="bg-primary icon-circle">
													<i class="fas fa-file-alt text-white"></i>
												</div>
											</div>
											<div>
												<span class="small text-gray-500">December 12, 2019</span>
												<p>A new monthly report is ready to download!</p>
											</div>
										</a> <a class="dropdown-item d-flex align-items-center" href="#">
											<div class="me-3">
												<div class="bg-success icon-circle">
													<i class="fas fa-donate text-white"></i>
												</div>
											</div>
											<div>
												<span class="small text-gray-500">December 7, 2019</span>
												<p>$290.29 has been deposited into your account!</p>
											</div>
										</a> <a class="dropdown-item d-flex align-items-center" href="#">
											<div class="me-3">
												<div class="bg-warning icon-circle">
													<i class="fas fa-exclamation-triangle text-white"></i>
												</div>
											</div>
											<div>
												<span class="small text-gray-500">December 2, 2019</span>
												<p>Spending Alert: We've noticed unusually high spending
													for your account.</p>
											</div>
										</a> <a class="dropdown-item text-center small text-gray-500"
											href="#">Show All Alerts</a>
									</div>
								</div>
							</li>
							<li class="nav-item dropdown no-arrow mx-1">
								<div class="nav-item dropdown no-arrow">
									<a class="dropdown-toggle nav-link" aria-expanded="false"
										data-bs-toggle="dropdown" href="#"> <span
										class="badge bg-danger badge-counter">7</span> <i
										class="fas fa-envelope fa-fw"></i>
									</a>
									<div
										class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
										<h6 class="dropdown-header">alerts center</h6>
										<a class="dropdown-item d-flex align-items-center" href="#">
											<div class="dropdown-list-image me-3">
												<img class="rounded-circle"
													src="assets/img/avatars/avatar4.jpeg">
												<div class="bg-success status-indicator"></div>
											</div>
											<div class="fw-bold">
												<div class="text-truncate">
													<span>Hi there! I am wondering if you can help me
														with a problem I've been having.</span>
												</div>
												<p class="small text-gray-500 mb-0">Emily Fowler - 58m</p>
											</div>
										</a> <a class="dropdown-item d-flex align-items-center" href="#">
											<div class="dropdown-list-image me-3">
												<img class="rounded-circle"
													src="assets/img/avatars/avatar2.jpeg">
												<div class="status-indicator"></div>
											</div>
											<div class="fw-bold">
												<div class="text-truncate">
													<span>I have the photos that you ordered last month!</span>
												</div>
												<p class="small text-gray-500 mb-0">Jae Chun - 1d</p>
											</div>
										</a> <a class="dropdown-item d-flex align-items-center" href="#">
											<div class="dropdown-list-image me-3">
												<img class="rounded-circle"
													src="assets/img/avatars/avatar3.jpeg">
												<div class="bg-warning status-indicator"></div>
											</div>
											<div class="fw-bold">
												<div class="text-truncate">
													<span>Last month's report looks great, I am very
														happy with the progress so far, keep up the good work!</span>
												</div>
												<p class="small text-gray-500 mb-0">Morgan Alvarez - 2d</p>
											</div>
										</a> <a class="dropdown-item d-flex align-items-center" href="#">
											<div class="dropdown-list-image me-3">
												<img class="rounded-circle"
													src="assets/img/avatars/avatar5.jpeg">
												<div class="bg-success status-indicator"></div>
											</div>
											<div class="fw-bold">
												<div class="text-truncate">
													<span>Am I a good boy? The reason I ask is because
														someone told me that people say this to all dogs, even if
														they aren't good...</span>
												</div>
												<p class="small text-gray-500 mb-0">Chicken the Dog · 2w</p>
											</div>
										</a> <a class="dropdown-item text-center small text-gray-500"
											href="#">Show All Alerts</a>
									</div>
								</div>
								<div
									class="shadow dropdown-list dropdown-menu dropdown-menu-end"
									aria-labelledby="alertsDropdown"></div>
							</li>
							<div class="d-none d-sm-block topbar-divider"></div>
							<li class="nav-item dropdown no-arrow">
								<div class="nav-item dropdown no-arrow">
									<a class="dropdown-toggle nav-link" aria-expanded="false"
										data-bs-toggle="dropdown" href="#"> <span
										class="d-none d-lg-inline me-2 text-gray-600 small">Valerie
											Luna</span> <img class="border rounded-circle img-profile"
										src="assets/img/avatars/avatar1.jpeg">
									</a>
									<div
										class="dropdown-menu shadow dropdown-menu-end animated--grow-in">
										<a class="dropdown-item" href="#"><i
											class="fas fa-user fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Profile</a>
										<a class="dropdown-item" href="#"><i
											class="fas fa-cogs fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Settings</a>
										<a class="dropdown-item" href="#"><i
											class="fas fa-list fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Activity
											log</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="#"><i
											class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Logout</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</nav>
				<div class="container-fluid">
					<div class="row mb-4">
						<div class="col-md-6">
							<h3 class="text-dark mb-4">Add Role</h3>
							<form id="addRoleForm" method="post">
								<div class="mb-3">
									<label for="roleName" class="form-label">Role Name</label> <input
										type="text" class="form-control" id="roleName" name="roleName"
										required>
								</div>
								<div class="mb-3">
									<label for="description" class="form-label">Description</label>
									<textarea class="form-control" id="description"
										name="roleDescription" required></textarea>
								</div>
								<button type="submit" class="btn btn-primary">Add Role</button>
							</form>
						</div>

						<div class="col-md-6">
							<div class="row">
								<!-- Roles Section -->
								<!-- Roles Section -->
								<div class="col-6">
									<div class="card h-100">
										<div class="card-header bg-light">
											<h6 class="mb-0">Available Roles</h6>
										</div>
										<div class="card-body p-0">
											<ul class="list-group list-group-flush">
												<c:forEach items="${roles}" var="role">
													<li
														class="list-group-item d-flex justify-content-between align-items-center py-2">
														<span class="text-truncate">${role.roleName}</span>
														<div class="btn-group btn-group-sm">
															<button class="btn btn-outline-primary btn-sm"
																onclick="showEditRoleModal('${role.roleId}', '${role.roleName}', '${role.roleDescription}')">
																<i class="fas fa-edit"></i>
															</button>
															<button class="btn btn-outline-danger btn-sm"
																onclick="deleteRole('${role.roleId}')">
																<i class="fas fa-trash"></i>
															</button>
														</div>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<%@include file="RoleEditModal.jsp"%>

								<!-- Departments Section -->
								<div class="col-6">
									<div class="card h-100">
										<div class="card-header bg-light">
											<h6 class="mb-0">Available Departments</h6>
										</div>
										<div class="card-body p-0">
											<ul class="list-group list-group-flush">
												<c:forEach items="${departments}" var="dept">
													<li
														class="list-group-item d-flex justify-content-between align-items-center py-2">
														<span class="text-truncate">${dept.departmentName}</span>
														<div class="btn-group btn-group-sm">
															<button class="btn btn-outline-primary btn-sm"
																onclick="showEditDepartmentModal('${dept.departmentId}', '${dept.departmentName}', '${dept.description}')">
																<i class="fas fa-edit"></i>
															</button>
															<button class="btn btn-outline-danger btn-sm"
																onclick="deleteDepartment('${dept.departmentId}')">
																<i class="fas fa-trash"></i>
															</button>
														</div>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<!-- Edit Department Modal -->
								<div class="modal fade" id="editDepartmentModal" tabindex="-1"
									aria-labelledby="editDepartmentModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="editDepartmentModalLabel">Edit
													Department</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<form id="editDepartmentForm">
													<input type="hidden" id="editDepartmentId"
														name="departmentId">
													<div class="mb-3">
														<label for="editDepartmentName" class="form-label">Department
															Name</label> <input type="text" class="form-control"
															id="editDepartmentName" name="departmentName" required>
													</div>
													<div class="mb-3">
														<label for="editDepartmentDescription" class="form-label">Description</label>
														<textarea class="form-control"
															id="editDepartmentDescription" name="description"
															rows="3"></textarea>
													</div>
													<div class="text-end">
														<button type="button" class="btn btn-secondary"
															onclick="resetEditForm()">Reset</button>
														<button type="submit" class="btn btn-primary">Update</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<h3 class="text-dark mb-4">Assign Role to Employee</h3>
								<form id="addRoleEmp" method="post">
									<div class="mb-3">
										<label for="employee" class="form-label">Employee:</label> <select
											id="employee" name="employeeId" class="form-select" required>
											<option value="">Select an Employee</option>
											<c:forEach items="${emps}" var="employee">
												<option value="${employee.employeeId}">${employee.employeeName}</option>
											</c:forEach>
										</select>
									</div>
									<div class="mb-3">
										<label for="role" class="form-label">Role:</label> <select
											id="role" name="roleId" class="form-select" required>
											<option value="">Select a Role</option>
											<c:forEach items="${roles}" var="role">
												<option value="${role.roleId}">${role.roleName}</option>
											</c:forEach>
										</select>
									</div>
									<button type="submit" class="btn btn-primary">Assign
										Role</button>
								</form>
							</div>
							<div class="col-md-6">
								<h3 class="text-dark mb-4">Assign Employee to Department</h3>
								<form id="addDeptEmp" method="post">
									<div class="mb-3">
										<label for="employee" class="form-label">Employee:</label> <select
											id="employee" name="employeeId" class="form-select" required>
											<option value="">Select an Employee</option>
											<c:forEach items="${emps}" var="employee">
												<option value="${employee.employeeId}">${employee.employeeName}</option>
											</c:forEach>
										</select>
									</div>
									<div class="mb-3">
										<label for="department" class="form-label">Department:</label>
										<select id="department" name="departmentId"
											class="form-select" required>
											<option value="">Select a Department</option>
											<c:forEach items="${departments}" var="department">
												<option value="${department.departmentId}">${department.departmentName}</option>
											</c:forEach>
										</select>
									</div>
									<button type="submit" class="btn btn-primary">Assign
										Employee to Department</button>
								</form>
							</div>
						</div>
					</div>
					<footer class="bg-white sticky-footer">
						<div class="container my-auto">
							<div class="text-center my-auto copyright">
								<span>Copyright © Brand 2025</span>
							</div>
						</div>
					</footer>
				</div>
				<a class="border rounded d-inline scroll-to-top" href="#page-top"><i
					class="fas fa-angle-up"></i></a>
			</div>
		</div>
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/js/script.min.js"></script>
		<script>
		$(document).ready(function() {
			//handle Employee assign role
		    $('#addRoleEmp').submit(function(e) {
		        e.preventDefault();
		        var submitButton = $(this).find('button[type="submit"]');
		        var originalText = submitButton.text();
		        
		        // Disable button and show loading state
		        submitButton.prop('disabled', true).text('Processing...');

		        var formData = $(this).serialize();
		        
		        $.ajax({
		            type: 'POST',
		            url: 'assignRole',
		            data: formData,
		            dataType: 'json',
		            success: function(response) {
		            	 console.log('Response:', response);
		                 if (response.success) {
		                     // Show success message with SweetAlert2
		                     Swal.fire({
		                         title: 'Success!',
		                         text: response.message,
		                         icon: 'success',
		                         timer: 1500,
		                         showConfirmButton: false
		                     }).then(function() {
		                         // Redirect to roles page
		                         window.location.href = response.redirectUrl;
		                     });
		                 } else {
		                     // Show error message
		                     Swal.fire({
		                         title: 'Error!',
		                         text: response.message,
		                         icon: 'error'
		                     });
		                 }
		            },
		            error: function(xhr, status, error) {
		                console.error('Error:', error);
		                alert('Error assigning role. Please try again.');
		            },
		            complete: function() {
		                // Re-enable button and restore original text
		                submitButton.prop('disabled', false).text(originalText);
		            }
		        });
		    });
		});
		
		// handle role addition
		
		
		//handle employee assign to Department
	            $(document).ready(function() {
			//handle Employee assign role
		    $('#addDeptEmp').submit(function(e) {
		        e.preventDefault();
		        var submitButton = $(this).find('button[type="submit"]');
		        var originalText = submitButton.text();
		        
		        // Disable button and show loading state
		        submitButton.prop('disabled', true).text('Processing...');

		        var formData = $(this).serialize();
		        
		        $.ajax({
		            type: 'POST',
		            url: 'assignEmployeeToDepartment',
		            data: formData,
		            dataType: 'json',
		            success: function(response) {
		            	 console.log('Response:', response);
		                 if (response.success) {
		                     // Show success message with SweetAlert2
		                     Swal.fire({
		                         title: 'Success!',
		                         text: response.message,
		                         icon: 'success',
		                         timer: 1500,
		                         showConfirmButton: false
		                     }).then(function() {
		                         // Redirect to roles page
		                         window.location.href = response.redirectUrl;
		                     });
		                 } else {
		                     // Show error message
		                     Swal.fire({
		                         title: 'Error!',
		                         text: response.message,
		                         icon: 'error'
		                     });
		                 }
		            },
		            error: function(xhr, status, error) {
		                console.error('Error:', error);
		                alert('Error assigning Department. Please try again.');
		            },
		            complete: function() {
		                // Re-enable button and restore original text
		                submitButton.prop('disabled', false).text(originalText);
		            }
		        });
		    });
		});

		</script>
		<script>
$(document).ready(function() {
    $('#addRoleForm').submit(function(e) {
        e.preventDefault();
        
        // Get form elements
        const form = $(this);
        const submitButton = form.find('button[type="submit"]');
        const roleNameInput = $('#roleName');
        const descriptionInput = $('#description');
        
        // Validate form
        if (!validateForm(roleNameInput, descriptionInput)) {
            return;
        }

        // Show loading state
        setLoadingState(true, submitButton, roleNameInput, descriptionInput);

        // Prepare form data
        const formData = {
            roleName: roleNameInput.val().trim(),
            roleDescription: descriptionInput.val().trim()
        };
        
        // Send AJAX request
        $.ajax({
            type: 'POST',
            url: 'addRole',
            data: formData,
            dataType: 'json',
            success: function(response) {
                if (response.success) {
                    // Show success message
                    Swal.fire({
                        title: 'Success!',
                        text: 'Role added successfully!',
                        icon: 'success',
                        timer: 1500,
                        showConfirmButton: false
                    }).then(() => {
                        // Clear form
                        form[0].reset();
                        
                        // Redirect to roles page
                        window.location.href = response.redirectUrl;
                    });
                } else {
                    // Show error message
                    showError(response.message || 'Error adding role');
                }
            },
            error: function(xhr, status, error) {
                console.error('Error:', error);
                showError('Failed to add role. Please try again.');
            },
            complete: function() {
                // Reset form state
                setLoadingState(false, submitButton, roleNameInput, descriptionInput);
            }
        });
    });

    // Form validation function
    function validateForm(roleNameInput, descriptionInput) {
        const roleName = roleNameInput.val().trim();
        const description = descriptionInput.val().trim();

        if (!roleName) {
            showError('Please enter a role name');
            roleNameInput.focus();
            return false;
        }

        if (!description) {
            showError('Please enter a description');
            descriptionInput.focus();
            return false;
        }

        return true;
    }

    // Show error message function
    function showError(message) {
        Swal.fire({
            title: 'Error!',
            text: message,
            icon: 'error',
            confirmButtonColor: '#3085d6'
        });
    }

    // Set loading state function
    function setLoadingState(isLoading, submitButton, roleNameInput, descriptionInput) {
        if (isLoading) {
            submitButton.prop('disabled', true)
                       .html('<span class="spinner-border spinner-border-sm me-2"></span>Adding...');
            roleNameInput.prop('disabled', true);
            descriptionInput.prop('disabled', true);
        } else {
            submitButton.prop('disabled', false)
                       .text('Add Role');
            roleNameInput.prop('disabled', false);
            descriptionInput.prop('disabled', false);
        }
    }
});
</script>
		<script src="assets/js/addrolemodals.js" type="text/javascript"></script>
</body>
</html>