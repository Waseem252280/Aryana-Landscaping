<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <div class="container-fluid">
        <a class="navbar-brand d-flex align-items-center" href="#">
            <img src="images/ARYAANA3.png" alt="Logo" class="d-inline-block align-text-top me-3" style="height: 70px !Important; width: 150px !Important;">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item me-3">
                    <a class="nav-link" href="/admin"><i class="bi bi-house-door-fill"></i> Dashboard</a>
                </li>
                <li class="nav-item me-3">
                    <a class="nav-link" data-bs-toggle="modal" data-bs-target="#addPhotosModal" href="#"><i class="bi bi-images"></i> Add Photos</a>
                </li>
                <li class="nav-item me-3">
                    <a class="nav-link" data-bs-toggle="modal" data-bs-target="#addVideoModal" href="#"><i class="bi bi-camera-video"></i> Add Videos</a>
                </li>
                <li class="nav-item me-3">
                    <a class="nav-link" data-bs-toggle="modal" data-bs-target="#settingsModal" href="#"><i class="bi bi-gear"></i> Settings</a>
                </li>
                <li class="nav-item dropdown me-3">
                    <a class="nav-link dropdown-toggle" href="#" id="deleteDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="text-danger bi bi-trash text-success"></i> Delete
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="deleteDropdown">
                        <li><a class="dropdown-item" href="/deletePhotos"><i class="bi bi-image text-info"></i> Photos</a></li>
                        <li><a class="dropdown-item" href="/deleteVideos"><i class="bi bi-film text-danger"></i> Videos</a></li>
                    </ul>
                </li>
                <li class="nav-item me-3">
                    <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#logoutModal">
                        <i class="bi bi-box-arrow-right text-danger" aria-hidden="true"></i> Logout</a>
                </li>
            </ul>
        </div>
        <div class="d-flex align-items-center">
            <span class="me-2">${sessionScope.user.userName}</span>
            <img src="${sessionScope.user.profile}" alt="Profile" width="40" height="40" class="rounded-circle">
        </div>
    </div>
</nav>

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
            <form action="/addVideos" method="post" enctype="multipart/form-data">
                <div class="modal-body">
                    <label for="videoUpload" class="form-label"><i class="bi bi-camera-video text-success"></i> Choose a video file:</label>
                    <input class="form-control" type="file" id="videoUpload" name="videos" accept="video/*" multiple required>
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