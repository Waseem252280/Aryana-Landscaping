<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@page isThreadSafe="true" %>--%>
<%--<c:choose>--%>
<%--    <c:when test="${not empty sessionScope.user}">--%>
<%--        <jsp:include page="cdn.jsp" />--%>
<%--        <!DOCTYPE html>--%>
<%--        <html lang="en">--%>
<%--        <head>--%>
<%--            <meta charset="UTF-8">--%>
<%--            <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--            <title>Delete Photos</title>--%>
<%--            <link rel="stylesheet" type="text/css" href="/css/admin.css">--%>
<%--        </head>--%>
<%--        <body>--%>
<%--        <jsp:include page="adminHeader.jsp" />--%>
<%--        <div class="container mt-5">--%>

<%--            <c:if test="${not empty success}">--%>
<%--                <div class="alert alert-success text-center" id="successDiv">${success}</div>--%>
<%--            </c:if>--%>
<%--            <c:if test="${not empty error}">--%>
<%--                <div class="alert alert-danger text-center" id="errorDiv">${error}</div>--%>
<%--            </c:if>--%>

<%--            <div class="row">--%>
<%--                <c:choose>--%>
<%--                <c:when test="${not empty photoList}">--%>
<%--                <c:forEach var="photo" items="${photoList}" varStatus="status">--%>
<%--                <div class="col-md-3">--%>
<%--                    <div class="card">--%>
<%--                        <img src="images/manageablePhotos/${photo.name}" class="card-img-top rounded" alt="${photo.name}">--%>
<%--                        <div class="card-footer d-flex justify-content-between align-items-center cardFooter">--%>
<%--                            <div>--%>
<%--                                <small class="d-block text-muted"><span class="fw-bold">Name:</span> ${photo.name}</small>--%>
<%--                            </div>--%>
<%--                            <a href="/deleteSinglePhoto/${photo.id}" class="btn btn-outline-danger p-0 pt-2 rounded-circle"--%>
<%--                               onclick="confirmDelete('${photo.name}')"--%>
<%--                               style="width: 35px !important; height: 35px !important;">--%>
<%--                                <i class="bi bi-trash"></i>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <c:if test="${status.index % 4 == 3}">--%>
<%--            </div><div class="row mt-4">--%>
<%--            </c:if>--%>
<%--            </c:forEach>--%>
<%--            </c:when>--%>
<%--            <c:otherwise>--%>
<%--                <div class="col-md mt-5">--%>
<%--                    <div class="text-decoration-none text-secondary" style="font-size: 70px !important;">--%>
<%--                        <div class="d-flex flex-column align-items-center justify-content-center">--%>
<%--                            <i class="fa fa-file-image-o" aria-hidden="true"></i>--%>
<%--                            <h4 class="mt-2">No more photos are available!</h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:otherwise>--%>
<%--            </c:choose>--%>
<%--        </div>--%>
<%--        </div>--%>
<%--        <script type="text/javascript" src="js/alertMessage.js"></script>--%>
<%--        </body>--%>
<%--        </html>--%>

<%--    </c:when>--%>
<%--    <c:otherwise>--%>
<%--        <% response.sendRedirect("login"); %>--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>



<%--cloudinary base code--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isThreadSafe="true" %>
<c:choose>
    <c:when test="${not empty sessionScope.user}">
        <jsp:include page="cdn.jsp" />
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Delete Photos</title>
            <link rel="stylesheet" type="text/css" href="/css/admin.css">
        </head>
        <body>
        <jsp:include page="adminHeader.jsp" />
        <div class="container mt-5">

            <c:if test="${not empty success}">
                <div class="alert alert-success text-center" id="successDiv">${success}</div>
            </c:if>
            <c:if test="${not empty error}">
                <div class="alert alert-danger text-center" id="errorDiv">${error}</div>
            </c:if>

            <div class="row">
                <c:choose>
                <c:when test="${not empty photoList}">
                <c:forEach var="photo" items="${photoList}" varStatus="status">
                <div class="col-md-3">
                    <div class="card">
                        <img src="${photo.url}" class="card-img-top rounded" alt="${photo.name}">
                        <div class="card-footer d-flex justify-content-between align-items-center cardFooter">
                            <div>
                                <small class="d-block text-muted"><span class="fw-bold">Name:</span> ${photo.name}</small>
                            </div>
                            <a href="/deleteSinglePhoto/${photo.id}" class="btn btn-outline-danger p-0 pt-2 rounded-circle"
                               onclick="confirmDelete('${photo.name}')"
                               style="width: 35px !important; height: 35px !important;">
                                <i class="bi bi-trash"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <c:if test="${status.index % 4 == 3}">
            </div><div class="row mt-4">
            </c:if>
            </c:forEach>
            </c:when>
            <c:otherwise>
                <div class="col-md mt-5">
                    <div class="text-decoration-none text-secondary" style="font-size: 70px !important;">
                        <div class="d-flex flex-column align-items-center justify-content-center">
                            <i class="fa fa-file-image-o" aria-hidden="true"></i>
                            <h4 class="mt-2">No more photos are available!</h4>
                        </div>
                    </div>
                </div>
            </c:otherwise>
            </c:choose>
        </div>
        </div>
        <script type="text/javascript" src="js/alertMessage.js"></script>
        </body>
        </html>

    </c:when>
    <c:otherwise>
        <% response.sendRedirect("login"); %>
    </c:otherwise>
</c:choose>
