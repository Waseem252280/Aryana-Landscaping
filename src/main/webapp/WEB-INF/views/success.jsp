<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="cdn.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message sent successful</title>
    <link rel="stylesheet" type="text/css" href="/css/success.css">
</head>
<body class="bg-light d-flex align-items-center justify-content-center vh-100">
<div class="container text-center">
    <div class="row">
        <div class="col-md-12">
            <h1 class="fw-bold display-3 text-success">🎉 Success!</h1>
            <p class="fs-4 text-secondary">Your message has been sent successfully!</p>
            <p class="fs-5">
                We’ll get back to you shortly. Thank you for reaching out to us.
            </p>
            <a href="/contactus" class="btn btn-outline-success btn-lg mt-3 rounded-circle"
               style="animation: bounce 1.5s infinite;">
                Back
            </a>
        </div>
    </div>
</div>
</body>
</html>
