<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="cdn.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/svg+xml" href="/favicon.svg">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Best Landscaping Company in Dubai | Aryana Landscaping & Gardening</title>
    <meta name="description" content="Aryana Landscaping & Gardening Works and Maintenance offers professional landscaping services in Dubai including garden design, hard & soft landscaping, water features, and garden maintenance.">
    <meta name="keywords" content="Landscaping Dubai, Best Landscaping Company in Dubai, Gardening Dubai, Landscape Design UAE, Garden Maintenance Dubai, Water Features Dubai, Hard Landscaping Dubai, Soft Landscaping Dubai, Aryana Landscaping, Garden Construction Dubai, Landscaping Services UAE, Outdoor Landscaping Dubai, Garden Renovation Dubai">

    <meta property="og:title" content="Aryana Landscaping - Dubai's Leading Landscaping Experts">
    <meta property="og:description" content="Premium landscaping and gardening solutions in Dubai. Garden design, maintenance, water features & more.">
    <meta property="og:image" content="/images/garden1.jpg">
    <meta property="og:url" content="https://www.aryanalandscape.com/">
    <meta property="og:type" content="website">

    <link rel="canonical" href="https://www.aryanalandscape.com/">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<!-- Carousel -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <ol class="carousel-indicators">
        <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
        <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
        <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="/images/garden1.jpg" class="d-block w-100" alt="Best Landscaping Services in Dubai - Aryana Landscaping">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center bg-transparent">
                <h1 class="display-4 text-white fw-bold">Welcome to Aryana Landscaping</h1>
                <h3 class="text-white">Beautiful Gardens</h3>
                <h3 class="text-white">Customized Designs</h3>
                <h3 class="text-white">Expert Maintenance</h3>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/garden2.jpg" class="d-block w-100" alt="Garden Design Dubai - Front & Backyard Experts">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center bg-transparent">
                <h1 class="display-4 text-white fw-bold">Innovative Landscaping</h1>
                <h3 class="text-white">Transforming Spaces</h3>
                <h3 class="text-white">Expert Craftsmanship</h3>
                <h3 class="text-white">Sustainable Solutions</h3>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/garden3.jpg" class="d-block w-100" alt="Luxury Landscaping Dubai - Modern Aesthetics">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center bg-transparent">
                <h1 class="display-4 text-white fw-bold">Luxury Garden Designs</h1>
                <h3 class="text-white">Modern Aesthetics</h3>
                <h3 class="text-white">Timeless Beauty</h3>
                <h3 class="text-white">Premium Quality</h3>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </a>
</div>

<!-- Keyword-Rich Introduction -->
<section class="container py-5">
    <h2 class="text-center text-success fw-bold">Landscaping Company in Dubai You Can Trust</h2>
    <p class="text-center">
        Looking for the <strong>best landscaping company in Dubai</strong>? Aryana Landscaping & Gardening Works and Maintenance is your one-stop solution for <strong>residential landscaping</strong>, <strong>commercial landscaping</strong>, <strong>hard landscaping</strong>, <strong>soft landscaping</strong>, <strong>custom water features</strong>, and <strong>garden maintenance in Dubai</strong>.
        <br><br>
        We design and build beautiful outdoor spaces tailored to your needs and budget. Whether you want to enhance your villa, create a relaxing backyard, or upgrade your commercial exterior, our experienced team turns your vision into reality using top-quality materials and sustainable landscaping techniques.
    </p>
</section>

<!-- Existing Main Content Sections Stay Same (You Already Had Perfect Design) -->
<jsp:include page="landingContent.jsp"/> <!-- Optional: break large blocks into separate JSPs -->

<!-- FAQ Section -->
<section class="container py-5">
    <h2 class="text-success fw-bold text-center">Frequently Asked Questions</h2>
    <div class="accordion" id="faqAccordion">
        <div class="accordion-item">
            <h2 class="accordion-header" id="faq1">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#answer1" aria-expanded="true">
                    What landscaping services do you offer in Dubai?
                </button>
            </h2>
            <div id="answer1" class="accordion-collapse collapse show" data-bs-parent="#faqAccordion">
                <div class="accordion-body">
                    We offer complete landscaping services in Dubai including garden design, installation, maintenance, water features, hard and soft landscaping.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="faq2">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#answer2">
                    Why choose Aryana Landscaping in Dubai?
                </button>
            </h2>
            <div id="answer2" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                <div class="accordion-body">
                    We are one of the best landscaping companies in Dubai with a proven track record of customized garden designs, professional services, and affordable packages.
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="/js/home.js"></script>
<!-- JSON-LD Structured Data for SEO -->
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "LandscapingCompany",
        "name": "Aryana Landscaping & Gardening Works and Maintenance",
        "image": "https://www.aryanalandscape.com/images/garden1.jpg",
        "url": "https://www.aryanalandscape.com/",
        "telephone": "+971-556736250",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "Office No. 404, M3 (Dalmook) Building, Al Marar, Deira",
            "addressLocality": "Dubai",
            "postalCode": "48670",
            "addressCountry": "AE"
        },
        "description": "Aryana Landscaping offers premium landscaping, gardening, hard and soft landscaping, pergola and gazebo design and construction, artificial grass installation, irrigation systems, and garden maintenance services across Dubai.",
        "areaServed": "Dubai",
        "keywords": [
            "Landscaping",
            "Professional Landscaping in Dubai",
            "Best Landscaping in Dubai",
            "Dubai Landscaping",
            "Villa Landscaping",
            "Residential Landscaping",
            "Commercial Landscaping",
            "Artificial Grass Installation",
            "Pergola Construction",
            "Gazebo Construction",
            "Pergola Design",
            "Gazebo Design",
            "Gazebo and Pergolas",
            "Garden Maintenance",
            "Garden Landscaping",
            "Irrigation Services",
            "Water Features",
            "Hard Landscaping",
            "Soft Landscaping",
            "Gardening"
        ]
    }
</script>
</body>
</html>
