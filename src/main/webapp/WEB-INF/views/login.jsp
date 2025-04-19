<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isThreadSafe="true" %>
<jsp:include page="cdn.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aryana Login</title>
    <link rel="stylesheet" type="text/css" href="/css/login.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container text-center">
    <div class="row">
        <c:if test="${not empty error}">
            <div class="alert alert-danger mt-3">${error}</div>
        </c:if>
        <div class="col-lg-4 col-md-4 p-4 rounded m-auto mt-3">
            <div class="d-flex justify-content-center">
                <div class="profile rounded-circle d-inline-block">
                    <i class="fa fa-user text-white" style="font-size: 90px; "></i>
                </div>
            </div>

            <form class="form" action="/loginAuth" method="post" id="form">
                <div class="form-group">
                    <input required type="text" class="form-control" style="margin-top: 130px;" placeholder="Username:" name="userName" id="userName">
                    <small class="text-danger" id="userNameError"></small>
                </div>
                <div class="form-group">
                    <input type="email" class="form-control mt-3" placeholder="example@email.com" name="email" id="email" required>
                    <small class="text-danger" id="emailError"></small>
                </div>
                <div class="form-group">
                    <input required type="password" class="form-control mt-3" placeholder="Password/Key:" name="password" id="password">
                    <small class="text-danger" id="passwordError"></small>
                </div>
                <button type="button" class="mt-5 btn login" onclick="isValid(event)">Login</button>
            </form>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="/js/login.js"></script>
<script type="text/javascript" src="/js/alertMessage.js"></script>
</body>
</html>
