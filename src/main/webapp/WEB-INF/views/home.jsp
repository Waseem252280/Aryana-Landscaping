<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="cdn.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aryana Landscaping & Gardening Works & Maintenance</title>
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
            <img src="/images/garden1.jpg" class="d-block w-100" alt="First slide">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center bg-transparent">
                <h1 class="display-4 text-white fw-bold animate__animated animate__fadeInDown">Welcome to Aryana Landscaping</h1>
                <h3 class="text-white animate__animated animate__fadeInUp">Beautiful Gardens</h3>
                <h3 class="text-white animate__animated animate__fadeInUp">Customized Designs</h3>
                <h3 class="text-white animate__animated animate__fadeInUp">Expert Maintenance</h3>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/garden2.jpg" class="d-block w-100" alt="Second slide">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center bg-transparent">
                <h1 class="display-4 text-white fw-bold animate__animated animate__fadeInDown">Innovative Landscaping</h1>
                <h3 class="text-white animate__animated animate__fadeInUp">Transforming Spaces</h3>
                <h3 class="text-white animate__animated animate__fadeInUp">Expert Craftsmanship</h3>
                <h3 class="text-white animate__animated animate__fadeInUp">Sustainable Solutions</h3>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/garden3.jpg" class="d-block w-100" alt="Third slide">
            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center bg-transparent">
                <h1 class="display-4 text-white fw-bold animate__animated animate__fadeInDown">Luxury Garden Designs</h1>
                <h3 class="text-white animate__animated animate__fadeInUp">Modern Aesthetics</h3>
                <h3 class="text-white animate__animated animate__fadeInUp">Timeless Beauty</h3>
                <h3 class="text-white animate__animated animate__fadeInUp">Premium Quality</h3>
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

<!-- content with images -->
<!-- Section: Heading and Images -->
<section class="container py-5">
    <div class="row">
        <!-- Text Content -->
        <div class="col-lg-6">
            <h1 class="fw-bold text-success">Aryana Landscaping & Gardening Works and Maintenance</h1>
            <p>
                Aryana Landscaping & Gardening Works and Maintenance, a landscaping designer who can bring your dream to reality while keeping up with contemporary landscaping trends, may seem like a dream. But with us, a leading Best Landscaping in Dubai, we fulfill your vision of aesthetics.
            </p>
            <p>
                Aryana Landscaping in Dubai has seen a new level of development with the entry of Aryana Landscaping & Gardening Works and Maintenance as we offer the Future of Landscaping Today. We are passionate about the beauty of your property. Let us help you realize that vision of a beautiful property. Aryana Landscaping & Gardening Works and Maintenance is your best bet.
            </p>
        </div>
        <!-- Image Content -->
        <div class="col-lg-6">
            <div class="row">
                <div class="col-12 mb-3">
                    <img src="/images/garden1.jpg" class="img-fluid w-100 rounded" alt="Garden 1">
                </div>
            </div>
        </div>
    </div>
</section>

<!-- cards -->
<div class="container-fluid py-5 bg-light">
    <div class="row g-4">
        <h1 class="text-success text-center fw-bold">Aryana Landscaping Services</h1>
        <p class="text-center">
            We offer Aryana landscaping design, maintenance, and construction services for all project size and properties.  At the very heart of Aryana Landscaping & Gardening Works and Maintenance is a team of professionals who combines passion, experience, talent, and commitment to design, project management, and landscaping delivery.
        </p>
        <!-- Card 1 -->
        <div class="col-md-4" data-aos="fade-up" data-aos-duration="800">
            <a href="landscapingservice" class="text-decoration-none">
                <div class="card shadow-sm h-100 hover-shadow" style="transition: transform 0.3s, box-shadow 0.3s; height: 450px;">
                    <img src="/images/landscaping.jpg" class="card-img-top" alt="Landscaping">
                    <div class="card-body text-center">
                        <h5 class="card-title text-success fw-bold">Landscaping</h5>
                        <p class="card-text">
                            We match the standards of the best landscaping companies in Dubai—and more. Our landscaping experts will give you a design that fits the modern trends that remains distinct, making your property the envy of the masses!
                        </p>
                    </div>
                </div>
            </a>
        </div>
        <!-- Card 2 -->
        <div class="col-md-4" data-aos="fade-up" data-aos-duration="800" data-aos-delay="200">
            <a href="gardeningservice" class="text-decoration-none">
                <div class="card shadow-sm h-100 hover-shadow" style="transition: transform 0.3s, box-shadow 0.3s; height: 450px;">
                    <img src="/images/gardening.jpg" class="card-img-top" alt="Gardening">
                    <div class="card-body text-center">
                        <h5 class="card-title text-success fw-bold">Gardening</h5>
                        <p class="card-text">
                            It takes skill, creativity, and a look into the long-term effects of every cut and prune to come up with excellent garden landscaping Dubai. We convert your front and backyard into a picture of beauty, serenity, and joy.
                        </p>
                    </div>
                </div>
            </a>
        </div>
        <!-- Card 3 -->
        <div class="col-md-4" data-aos="fade-up" data-aos-duration="800" data-aos-delay="400">
            <a href="waterfeatures" class="text-decoration-none">
                <div class="card shadow-sm h-100 hover-shadow" style="transition: transform 0.3s, box-shadow 0.3s; height: 450px;">
                    <img src="/images/waterfeature.jpg" class="card-img-top" alt="Water Features">
                    <div class="card-body text-center">
                        <h5 class="card-title text-success fw-bold">Water Features</h5>
                        <p class="card-text">
                            Looking for water features and swimming pools contractors in Dubai? Turn to Paradise Kashmir Landscaping to find experts who can plan and add quality and visually appealing water features to your space.
                        </p>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>


<!-- information cards -->
<div class="container py-5">
    <div class="row g-4">
        <h1 class="text-success text-center fw-bold">Why choose Aryana Landscaping?</h1>
        <p class="text-center">
            Our name is synonymous with quality and luxury with accessibility. At Aryana Landscaping & Gardening Works and Maintenance, we pride ourselves on affordable Best Landscaping in UAE. We believe that access to a gorgeous garden with impeccable features should not cost the Earth. Whether we’re talking residential or commercial Best Landscaping in Dubai, we work on the basis of quality, meticulousness, visual appeal, and transparency. Starting out with a few landscaping enthusiasts and expanding into a highly professional team of innovators and designers, we are your ideal landscaping company in Dubai!
        </p>
        <!-- Card 1 -->
        <div class="col-md-6 col-lg-6 ">
            <a href="landscapingservice" class="text-decoration-none">
                <div class="bg-light card shadow-sm border-0 h-100 hover-zoom" style="transition: transform 0.3s;">
                    <div class="card-body">
                        <h5 class="card-title text-success fw-bold">
                            <i class="bi bi-square-fill text-success me-2"></i>
                            We focus on Uniqueness.
                        </h5>
                        <p class="card-text text-dark">
                            One-of-a-kind luxury landscaping design Dubai is our specialty. Though following trends in Best Landscaping in Dubai, we focus on a bespoke layout for each project and make sure it encapsulates your vision and persona.
                        </p>
                    </div>
                </div>
            </a>
        </div>
        <!-- Card 2 -->
        <div class="col-md-6 col-lg-6">
            <a href="landscapingservice" class="text-decoration-none">
                <div class="bg-light card shadow-sm border-0 h-100 hover-zoom" style="transition: transform 0.3s;">
                    <div class="card-body">
                        <h5 class="card-title text-success fw-bold">
                            <i class="bi bi-square-fill text-success me-2"></i>
                            We're equipped to handle issues.
                        </h5>
                        <p class="card-text text-dark">
                            We know the ins and outs of the laws and guidelines involved with Best Landscaping in Dubai projects. Guidelines need to be followed when it comes to altering a property, and we make sure to adhere to these at the very beginning.
                        </p>
                    </div>
                </div>
            </a>
        </div>
        <!-- Card 3 -->
        <div class="col-md-6 col-lg-6">
            <a href="landscapingservice" class="text-decoration-none">
                <div class="bg-light card shadow-sm border-0 h-100 hover-zoom" style="transition: transform 0.3s;">
                    <div class="card-body">
                        <h5 class="card-title text-success fw-bold">
                            <i class="bi bi-square-fill text-success me-2"></i>
                            You can rely on us
                        </h5>
                        <p class="card-text text-dark">
                            What you see in a design is what you get in reality. Our landscaping experts make sure to adhere to your requirements. We also make sure to stay honest, with no hidden costs at any step. Our dedication to delivery timelines is our shining trait.
                        </p>
                    </div>
                </div>
            </a>
        </div>
        <!-- Card 4 -->
        <div class="col-md-6 col-lg-6">
            <a href="landscapingservice" class="text-decoration-none">
                <div class="bg-light card shadow-sm border-0 h-100 hover-zoom" style="transition: transform 0.3s;">
                    <div class="card-body">
                        <h5 class="card-title text-success fw-bold">
                            <i class="bi bi-square-fill text-success me-2"></i>
                            Each project receives the utmost attention.
                        </h5>
                        <p class="card-text text-dark">
                            Our technicians and designers strive for perfection. From water feature installation to garden maintenance Dubai, each detail of a landscaping project is finished meticulously and then inspected for quality assurance.
                        </p>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<script type="text/javascript" src="/js/home.js"></script>
</body>
</html>
