document.addEventListener('DOMContentLoaded', function () {
    const imageElements = document.querySelectorAll('[data-bs-target="#imageModal"]');
    const carouselInner = document.querySelector('.carousel-inner');

    imageElements.forEach((img, index) => {
        img.addEventListener('click', function () {
            // Clear previous carousel items
            carouselInner.innerHTML = '';
            // Loop through all images to add them to the carousel
            imageElements.forEach((image, idx) => {
                const carouselItem = document.createElement('div');
                carouselItem.className = 'carousel-item' + (index === idx ? ' active' : '');
                const imgElement = document.createElement('img');
                imgElement.src = image.src;
                imgElement.className = 'd-block w-100';
                imgElement.alt = image.alt;
                carouselItem.appendChild(imgElement);
                carouselInner.appendChild(carouselItem);
            });
        });
    });
});