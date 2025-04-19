<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="cdn.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Photos</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

        <div class="container mt-5">
            <div class="row">
                <c:choose>
                <c:when test="${not empty photoList}">
                <c:forEach var="photo" items="${photoList}" varStatus="status">
                    <div class="col-md-3">
                        <img src="images/manageablePhotos/${photo.name}" class="img-fluid rounded shadow" data-bs-toggle="modal" data-bs-target="#imageModal" alt="Artificial Grass 1">
                    </div>
                <c:if test="${status.index % 4 == 3}">
            </div><div class="row mt-4">
            </c:if>
            </c:forEach>
            </c:when>
            <c:otherwise>
                <div class="col-md mt-5 mb-5">
                    <div class="text-decoration-none text-secondary" style="font-size: 70px !important;">
                        <div class="d-flex flex-column align-items-center justify-content-center">
                            <i class="fa fa-file-image-o" aria-hidden="true"></i>
                            <h4 class="mt-2">Photos will be available soon!</h4>
                        </div>
                    </div>
                </div>
            </c:otherwise>
            </c:choose>
        </div>
        </div>

<!-- Modal -->
<div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered ">
        <div class="modal-content">
            <div class="modal-body">
                <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <!-- Dynamic images will be inserted here by JavaScript -->
                    </div>
                    <!-- Controls -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="/js/photos.js"></script>
</body>
</html>