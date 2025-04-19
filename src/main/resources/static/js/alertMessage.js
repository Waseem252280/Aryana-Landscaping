$(document).ready(function() {
    $(".alert").each(function() {
        if ($(this).text().trim() !== "") {
            $(this).show();
            setTimeout(() => $(this).fadeOut(), 5000);
        }
    });
});