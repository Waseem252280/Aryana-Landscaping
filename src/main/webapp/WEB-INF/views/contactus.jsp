<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="cdn.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="/css/contactus.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container mt-5">
    <div class="row">
        <!-- Left Column -->
        <div class="col-md-6 d-flex justify-content-center">
            <div class="bg-success p-5 rounded shadow-lg hover-fade h-100 w-100">
                <h2 class="text-center text-light mb-4">Contact Us</h2>
                <form id="contactForm"
                action="/sendMessage" method="post">
                    <div class="form-group mb-3">
                        <input onkeyup="isValidate()" type="text" required class="form-control" id="name" placeholder="Your Name:" name="name">
                        <small id="nameError" class= "text-danger"></small>
                    </div>
                    <div class="mb-2 form-group">
                        <div class="row p-0">
                            <div class="col-md-6 col-lg-6 mb-3">
                                <input onkeyup="isValidate()" required type="text" class="form-control mr-2" id="phone" placeholder="Your Phone Number:" name="phone">
                                <small id="phoneError" class= "text-danger"></small>                        </div>
                            <div class="col-md-6 col-lg-6">

                                <input onkeyup="isValidate()" required type="email" class="form-control" id="email" placeholder="example@email.com" name="email">
                                <small id="emailError" class= "text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <textarea required class="form-control" id="message" rows="4" placeholder="Enter your message" onkeyup="isValidate()" name="message"></textarea>
                        <small id="messageError" class= "text-danger"></small>
                    </div>
                    <div class="w-100 text-center">
                        <button type="button" onclick="onSubmit()" class="btn btn-outline-success p-0 rounded-circle" style="border: 3px solid white !important;color:white; width:50px; height:50px;">Send</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- Right Column -->
        <div class="col-md-6 d-flex justify-content-center">
            <div class="bg-success text-light  p-4 rounded shadow-lg hover-fade h-100 w-100">
                <h6 class="text-dark mb-3">GET IN TOUCH</h6>
                <br>
                <p class="mb-2">
                    <i class="bi bi-geo-alt-fill text-dark me-2"></i>
                    Office # 404 Dalmook building Al Marrar Deira Dubai.
                </p>
                <br>
                <p class="mb-2">
                    <i class="bi bi-telephone-fill text-dark me-2"></i>
                    +971-556736250, +971-0566698364
                </p>
                <br>
                <p>
                    <i class="bi bi-envelope-fill text-dark me-2"></i>
                    rasheedite@gmail.com
                </p>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="/js/contactus.js"></script>
</body>
</html>
