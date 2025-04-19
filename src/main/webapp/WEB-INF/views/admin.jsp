<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isThreadSafe="true" %>
<c:choose>
    <c:when test="${not empty sessionScope.user}">
        <jsp:include page="cdn.jsp"/>
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Admin Home</title>
            <link rel="stylesheet" type="text/css" href="/css/admin.css">
        </head>
        <body>
        <jsp:include page="adminHeader.jsp"/>

        <div class="container mt-5">
            <c:if test="${not empty success}">
                <div class="alert alert-success text-center" id="successDiv">${success}</div>
            </c:if>
            <c:if test="${not empty error}">
                <div class="alert alert-danger text-center" id="errorDiv">${error}</div>
            </c:if>
            <h2 class="text-center text-muted">Welcome, Mr: ${sessionScope.user.userName}</h2>
            <p class="text-center text-muted">Manage your website content efficiently using the options below.</p>
            <div class="row mt-5 text-center">
                <div class="col-md-4 mb-4">
                    <a href="#" class="box text-decoration-none text-info" data-bs-toggle="modal" data-bs-target="#addPhotosModal">
                        <div class="d-flex flex-column align-items-center justify-content-center">
                            <i class="bi bi-plus-circle"></i>
                            <div class="mt-2">
                                <i class="bi bi-image fs-3 me-1"></i>
                                <h4 class="d-inline-block">Add Photos</h4>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 mb-4">
                    <a href="/deleteVideos" class="box text-decoration-none text-success" data-bs-toggle="modal" data-bs-target="#addVideoModal">
                        <div class="d-flex flex-column align-items-center justify-content-center">
                            <i class="bi bi-plus-circle"></i>
                            <div class="mt-2">
                                <i class="bi bi-camera-video fs-3 me-1"></i>
                                <h4 class="d-inline-block">Add Videos</h4>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 mb-4">
                    <a href="#" class="box text-decoration-none text-primary" data-bs-toggle="modal" data-bs-target="#settingsModal">
                        <div class="d-flex flex-column align-items-center justify-content-center">
                            <i class="bi bi-gear"></i>
                            <h4 class="mt-2">Settings</h4>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 mb-4">
                    <a href="/deletePhotos" class="box text-decoration-none text-danger">
                        <div class="d-flex flex-column align-items-center justify-content-center" >
                            <i class="bi bi-trash"></i>
                            <div class="mt-2">
                                <i class="bi bi-image fs-3 me-1"></i>
                                <h4 class="d-inline-block">Delete Photos</h4>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 mb-4">
                    <a href="/deleteVideos" class="box text-decoration-none text-warning">
                        <div class="d-flex flex-column align-items-center justify-content-center" >
                            <i class="bi bi-trash"></i>
                            <div class="mt-2">
                                <i class="bi bi-camera-video fs-3 me-1"></i>
                                <h4 class="d-inline-block">Delete Videos</h4>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 mb-4">
                    <a href="/logout" class="box text-decoration-none text-secondary" data-bs-toggle="modal" data-bs-target="#logoutModal">
                        <div class="d-flex flex-column align-items-center justify-content-center" >
                            <i class="bi bi-box-arrow-right"></i>
                            <h4 class="mt-2">Logout</h4>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <!-- Add Photos Modal -->
        <div class="modal fade" id="addPhotosModal" tabindex="-1" aria-labelledby="addPhotosModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addPhotosModalLabel">Upload Photos</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="/addPhotos" method="post" enctype="multipart/form-data">
                        <div class="modal-body">
                            <label for="photoUpload" class="form-label"><i class="bi bi-images text-success"></i> Choose a photo:</label>
                            <input class="form-control" type="file" id="photoUpload" name="photos" accept="image/*" multiple required>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn modal-btn">Upload Photos</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Add Video Modal -->
        <div class="modal fade" id="addVideoModal" tabindex="-1" aria-labelledby="addVideoModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addVideoModalLabel">Upload Video</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="/uploadVideo" method="post" enctype="multipart/form-data">
                        <div class="modal-body">
                            <label for="videoUpload" class="form-label"><i class="bi bi-camera-video text-success"></i> Choose a video file:</label>
                            <input class="form-control" type="file" id="videoUpload" name="video" accept="video/*" required>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn modal-btn">Upload Video</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Settings Modal -->
        <div class="modal fade" id="settingsModal" tabindex="-1" aria-labelledby="settingsModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="settingsModalLabel">Update Settings</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <small class="text-danger text-center" id="formError"></small>
                    <form action="/updateSettings" method="post" enctype="multipart/form-data" id="form">
                        <div class="modal-body">
                            <div class="mb-3">
                                <input type="hidden" name="userId" value="1">
                                <label for="username" class="form-label"><i class="bi bi-person-circle text-success"></i> Change Username</label>
                                <input type="text" class="form-control" id="username" name="userName">
                                <small class="text-danger text-center " id="userNameError"></small>
                            </div>
                            <div class="mb-3">
                                <label for="currentPassword" class="form-label"><i class="bi bi-lock text-warning"></i> Current Password</label>
                                <input type="password" class="form-control" id="currentPassword" name="currentPassword">
                                <small id="currentPasswordError" class=" text-danger"></small>
                            </div>
                            <div class="mb-3">
                                <label for="newPassword" class="form-label"><i class="bi bi-key text-primary"></i> New Password</label>
                                <input type="password" class="form-control" id="newPassword" name="newPassword">
                                <small id="newPasswordError" class="text-danger "></small>
                            </div>
                            <div class="mb-3">
                                <label for="profilePicture" class="form-label"><i class="bi bi-image text-info"></i> Change Profile Picture</label>
                                <input class="form-control" type="file" id="profilePicture" name="profile" accept="image/*">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn modal-btn" onclick="updateSettings()">Update Settings</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Logout Confirmation Modal -->
        <div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="logoutModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="logoutModalLabel">Confirm Logout</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure you want to log out?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <a href="/logout" class="btn btn-danger">Logout</a>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="/js/admin.js"></script>
        <script type="text/javascript" src="/js/alertMessage.js"></script>
        </body>
        </html>
    </c:when>
    <c:otherwise>
        <%
            response.sendRedirect("login");
        %>
    </c:otherwise>
</c:choose>