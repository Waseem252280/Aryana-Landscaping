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
    <!-- Basic Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Showcase Videos | Aryana Landscaping Dubai</title>
    <meta name="description" content="Watch Aryana Landscaping's project videos in Dubai. Explore our landscaping designs, transformations, and real client results.">
    <meta name="keywords" content="landscaping videos Dubai, Aryana Landscaping work, garden design videos, soft landscaping demo, Dubai landscaping showcase">
    <meta name="author" content="Aryana Landscaping & Gardening Works and Maintenance">
    <meta name="robots" content="index, follow">

    <!-- Canonical URL -->
    <link rel="canonical" href="https://www.aryaanalandscape.com/videos" />

    <!-- Open Graph (Facebook / LinkedIn) -->
    <meta property="og:type" content="video.other">
    <meta property="og:title" content="Aryana Landscaping Project Videos | Dubai Landscaping Work">
    <meta property="og:description" content="See real landscaping projects completed by Aryana Landscaping. Garden makeovers, tree planting, irrigation, and more in action.">
    <meta property="og:url" content="https://www.aryaanalandscape.com/videos">
    <meta property="og:image" content="https://res.cloudinary.com/dqr2rknbm/image/upload/v1710000000/video-preview.jpg">
    <meta property="og:site_name" content="Aryana Landscaping Dubai">

    <!-- Twitter Card -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Aryana Landscaping Videos | Garden & Lawn Services in Dubai">
    <meta name="twitter:description" content="Explore Aryana Landscaping's video portfolio – real garden projects, soft landscaping services, and beautiful outdoor transformations.">
    <meta name="twitter:image" content="https://res.cloudinary.com/dqr2rknbm/image/upload/v1710000000/video-preview.jpg">
    <meta name="twitter:url" content="https://www.aryaanalandscape.com/videos">

    <!-- Local Business Info -->
    <meta name="geo.region" content="AE-DU" />
    <meta name="geo.placename" content="Dubai" />
    <meta name="geo.position" content="25.276987;55.296249" />
    <meta name="ICBM" content="25.276987, 55.296249" />

    <!-- Structured Data for Video Gallery -->
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "VideoGallery",
            "name": "Aryana Landscaping Videos",
            "url": "https://www.aryaanalandscape.com/videos",
            "description": "Browse our video gallery to see actual landscaping work and garden design projects in Dubai.",
            "publisher": {
                "@type": "Organization",
                "name": "Aryana Landscaping & Gardening Works and Maintenance",
                "logo": {
                    "@type": "ImageObject",
                    "url": "https://www.aryaanalandscape.com/favicon.svg"
                }
            }
        }
    </script>

    <!-- Favicon -->
    <link rel="icon" type="image/png" href="/favicon.svg">

    <!-- Styles -->
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
