<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html data-bs-theme="light" lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Add Department</title>
    <!-- Include your original dashboard CSS files -->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">

    <style>
        .form-container {
            max-width: 800px;
            margin: 20px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 5px;
            background-color: white;
        }
        .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
    <style>
        .text-center {
            margin-top: 20px;
        }
        .action-btn {
            width: 150px;
            margin: 10px;
            font-size: 16px;
            padding: 10px;
        }
    </style>
</head>
<body id="page-top">
<div id="wrapper">
    <!-- Include Sidebar -->
    <%@ include file="HrSideBar.jsp"%>

    <!-- Content Wrapper -->
    <div class="d-flex flex-column" id="content-wrapper">
        <!-- Main Content -->
        <div id="content">
            <!-- Include Top Navigation Bar -->
            <nav class="navbar navbar-expand bg-white shadow mb-4 topbar">
                <div class="container-fluid">
                    <button class="btn btn-link d-md-none rounded-circle me-3"
                            id="sidebarToggleTop" type="button">
                        <i class="fas fa-bars"></i>
                    </button>
                    <h4>Leave Request Form</h4>

                    <ul class="navbar-nav flex-nowrap ms-auto">
                        <li class="nav-item dropdown d-sm-none no-arrow"><a
                                class="dropdown-toggle nav-link" aria-expanded="false"
                                data-bs-toggle="dropdown" href="#"><i class="fas fa-search"></i></a>
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
                        <li class="nav-item dropdown no-arrow mx-1"><div
                                class="nav-item dropdown no-arrow">
                            <a class="dropdown-toggle nav-link" aria-expanded="false"
                               data-bs-toggle="dropdown" href="#"><span
                                    class="badge bg-danger badge-counter">3+</span><i
                                    class="fas fa-bell fa-fw"></i></a>
                            <div
                                    class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
                                <h6 class="dropdown-header">alerts center</h6>
                                <a class="dropdown-item d-flex align-items-center" href="#"><div
                                        class="me-3">
                                    <div class="bg-primary icon-circle">
                                        <i class="fas fa-file-alt text-white"></i>
                                    </div>
                                </div>
                                    <div>
                                        <span class="small text-gray-500">December 12, 2019</span>
                                        <p>A new monthly report is ready to download!</p>
                                    </div></a><a class="dropdown-item d-flex align-items-center" href="#"><div
                                    class="me-3">
                                <div class="bg-success icon-circle">
                                    <i class="fas fa-donate text-white"></i>
                                </div>
                            </div>
                                <div>
                                    <span class="small text-gray-500">December 7, 2019</span>
                                    <p>$290.29 has been deposited into your account!</p>
                                </div></a><a class="dropdown-item d-flex align-items-center" href="#"><div
                                    class="me-3">
                                <div class="bg-warning icon-circle">
                                    <i class="fas fa-exclamation-triangle text-white"></i>
                                </div>
                            </div>
                                <div>
                                    <span class="small text-gray-500">December 2, 2019</span>
                                    <p>Spending Alert: We've noticed unusually high spending
                                        for your account.</p>
                                </div></a><a class="dropdown-item text-center small text-gray-500"
                                             href="#">Show All Alerts</a>
                            </div>
                        </div></li>
                        <li class="nav-item dropdown no-arrow mx-1"><div
                                class="nav-item dropdown no-arrow">
                            <a class="dropdown-toggle nav-link" aria-expanded="false"
                               data-bs-toggle="dropdown" href="#"><span
                                    class="badge bg-danger badge-counter">7</span><i
                                    class="fas fa-envelope fa-fw"></i></a>
                            <div
                                    class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
                                <h6 class="dropdown-header">alerts center</h6>
                                <a class="dropdown-item d-flex align-items-center" href="#"><div
                                        class="dropdown-list-image me-3">
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
                                    </div></a><a class="dropdown-item d-flex align-items-center" href="#"><div
                                    class="dropdown-list-image me-3">
                                <img class="rounded-circle"
                                     src="assets/img/avatars/avatar2.jpeg">
                                <div class="status-indicator"></div>
                            </div>
                                <div class="fw-bold">
                                    <div class="text-truncate">
                                        <span>I have the photos that you ordered last month!</span>
                                    </div>
                                    <p class="small text-gray-500 mb-0">Jae Chun - 1d</p>
                                </div></a><a class="dropdown-item d-flex align-items-center" href="#"><div
                                    class="dropdown-list-image me-3">
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
                                </div></a><a class="dropdown-item d-flex align-items-center" href="#"><div
                                    class="dropdown-list-image me-3">
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
                                    <p class="small text-gray-500 mb-0">Chicken the Dog Â·
                                        2w</p>
                                </div></a><a class="dropdown-item text-center small text-gray-500"
                                             href="#">Show All Alerts</a>
                            </div>
                        </div>
                            <div
                                    class="shadow dropdown-list dropdown-menu dropdown-menu-end"
                                    aria-labelledby="alertsDropdown"></div></li>
                        <div class="d-none d-sm-block topbar-divider"></div>
                        <li class="nav-item dropdown no-arrow"><div
                                class="nav-item dropdown no-arrow">
                            <a class="dropdown-toggle nav-link" aria-expanded="false"
                               data-bs-toggle="dropdown" href="#"><span
                                    class="d-none d-lg-inline me-2 text-gray-600 small">Valerie
											Luna</span><img class="border rounded-circle img-profile"
                                                            src="assets/img/avatars/avatar1.jpeg"></a>
                            <div
                                    class="dropdown-menu shadow dropdown-menu-end animated--grow-in">
                                <a class="dropdown-item" href="#"><i
                                        class="fas fa-user fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Profile</a><a
                                    class="dropdown-item" href="#"><i
                                    class="fas fa-cogs fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Settings</a><a
                                    class="dropdown-item" href="#"><i
                                    class="fas fa-list fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Activity
                                log</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i
                                        class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Logout</a>
                            </div>
                        </div></li>
                    </ul>
                </div>
            </nav>

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <div class="d-sm-flex justify-content-between align-items-center mb-4">
                    <!--  <h3 class="text-dark mb-0">Add Employee</h3> -->
                </div>

                <!-- Add Employee Form -->
                <div class="form-container">
                    <form:form action="Update-leave" modelAttribute="leaveForm" method="POST" id="leaveRequestForm">

                        <input type="hidden" id="leaveId" name="leaveId" value="${leaveForm.leaveId}">
                        <!-- Hidden Employee ID -->
                        <input type="hidden" id="empId" name="empId" value="${employeeId}">

                        <div class="mb-3">
                            <label for="leaveType" class="form-label">Leave Type</label>
                            <input type="text" value="${leaveForm.leaveType}" class="form-control" id="leaveType" name="leaveType" required>


                        </div>

                        <div class="mb-3">
                            <label for="description" class="form-label">Description</label>
                            <textarea class="form-control" id="description" name="leaveDescription" rows="3">
                                    <c:out value="${leaveForm.leaveDescription}" />
                            </textarea>
                        </div>

                        <div class="mb-3">
                            <label for="contactNumber" class="form-label">Contact Number *</label>
                            <input type="text" value="${leaveForm.contactNumber} "class="form-control" id="contactNumber" name="contactNumber" required>
                        </div>


                        <div class="text-center">
                            <button type="button" class="btn btn-success action-btn" id="approveBtn">Approve</button>
                            <button type="button" class="btn btn-danger action-btn" id="denyBtn">Deny</button>
                        </div>

                        <!-- Hidden Field for Status -->
                        <input type="hidden" id="status" name="status">

                    </form:form>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="bg-white sticky-footer">
            <div class="container my-auto">
                <div class="text-center my-auto copyright">
                    <span>Copyright © Brand 2025</span>
                </div>
            </div>
        </footer>
    </div>
</div>

<!-- Scroll to Top Button-->
<a class="border rounded d-inline scroll-to-top" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Include your original dashboard scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/script.min.js"></script>
<script src="assets/js/chart.min.min.js"></script>

<!-- Form validation script -->
<!-- SweetAlert2 for Approval & Denial -->
<!-- SweetAlert2 for Approval & Denial -->
<script>
    document.getElementById("approveBtn").addEventListener("click", function() {
        if (confirm("Are you sure you want to approve this leave request?")) {
            document.getElementById("status").value = "Approved";
            alert("Leave Approved!");
            document.getElementById("leaveRequestForm").submit();
        }
    });

    document.getElementById("denyBtn").addEventListener("click", function() {
        let reason = prompt("Enter reason for denial:");
        if (reason !== null && reason.trim() !== "") {
            document.getElementById("status").value = "Denied";
            alert("Leave Denied!\nReason: " + reason);
            document.getElementById("leaveRequestForm").submit();
        } else {
            alert("Denial reason is required.");
        }
    });
</script>





</body>
</html>