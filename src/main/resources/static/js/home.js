// Initialize AOS
AOS.init();
// Add hover animation effect
document.querySelectorAll('.hover-shadow').forEach((card) => {
    card.addEventListener('mouseover', () => {
        card.style.transform = 'scale(1.05)';
        card.style.boxShadow = '0 8px 20px rgba(0, 0, 0, 0.2)';
    });
    card.addEventListener('mouseout', () => {
        card.style.transform = 'scale(1)';
        card.style.boxShadow = '0 4px 10px rgba(0, 0, 0, 0.1)';
    });
});

// Add hover animation
document.querySelectorAll('.hover-zoom').forEach(card => {
    card.addEventListener('mouseover', () => {
        card.style.transform = 'scale(1.05)';
    });
    card.addEventListener('mouseout', () => {
        card.style.transform = 'scale(1)';
    });
});