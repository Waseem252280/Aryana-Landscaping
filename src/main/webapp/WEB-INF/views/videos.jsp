<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@include file="cdn.jsp"%>--%>
<%--        <!DOCTYPE html>--%>
<%--        <html lang="en">--%>
<%--        <head>--%>
<%--            <meta charset="UTF-8">--%>
<%--            <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--            <title>Videos</title>--%>
<%--            <link rel="stylesheet" type="text/css" href="/css/admin.css">--%>
<%--        </head>--%>
<%--        <body>--%>
<%--        <jsp:include page="header.jsp" />--%>
<%--        <div class="container mt-5">--%>
<%--            <div class="row">--%>
<%--                <c:choose>--%>
<%--                <c:when test="${not empty videosList}">--%>
<%--                <c:forEach var="video" items="${videosList}" varStatus="status">--%>
<%--                <div class="col-md-3">--%>
<%--                    <div class="card">--%>
<%--                        <video class="card-img-top rounded" controls>--%>
<%--                            <source src="videos/${video.name}" type="video/mp4">--%>
<%--                            Your browser does not support the video tag.--%>
<%--                        </video>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <c:if test="${status.index % 4 == 3}">--%>
<%--            </div><div class="row mt-4">--%>
<%--            </c:if>--%>
<%--            </c:forEach>--%>
<%--            </c:when>--%>
<%--            <c:otherwise>--%>
<%--                <div class="col-md mt-5 mb-5">--%>
<%--                    <div class="text-decoration-none text-secondary" style="font-size: 70px !important;">--%>
<%--                        <div class="d-flex flex-column align-items-center justify-content-center">--%>
<%--                            <i class="fa fa-file-video-o" aria-hidden="true"></i>--%>
<%--                            <h4 class="mt-2">Videos will be available soon!</h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:otherwise>--%>
<%--            </c:choose>--%>
<%--        </div>--%>
<%--        </div>--%>
<%--        <%@include file="footer.jsp"%>--%>
<%--        </body>--%>
<%--        </html>--%>



<%--cloudinary base code--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="cdn.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Videos</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container mt-5">
    <div class="row">
        <c:choose>
        <c:when test="${not empty videosList}">
        <c:forEach var="video" items="${videosList}" varStatus="status">
        <div class="col-md-6 mb-4">
            <video class="w-100 rounded shadow" controls>
                <source src="${video.url}" type="video/mp4">
            </video>
        </div>
        <c:if test="${status.index % 2 == 1}">
    </div><div class="row mt-4">
    </c:if>
    </c:forEach>
    </c:when>
    <c:otherwise>
        <div class="col-md mt-5 mb-5">
            <div class="text-decoration-none text-secondary" style="font-size: 70px !important;">
                <div class="d-flex flex-column align-items-center justify-content-center">
                    <i class="fa fa-file-video-o" aria-hidden="true"></i>
                    <h4 class="mt-2">Videos will be available soon!</h4>
                </div>
            </div>
        </div>
    </c:otherwise>
    </c:choose>
</div>
</div>

<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="/js/videos.js"></script>
</body>
</html>
