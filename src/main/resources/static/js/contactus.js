function isValidate(){
    event.preventDefault(); // Prevent form submission


    let isValid = true;

    // Clear previous error messages
    document.getElementById("nameError").textContent = "";
    document.getElementById("phoneError").textContent = "";
    document.getElementById("emailError").textContent = "";
    document.getElementById("messageError").textContent="";

    // Get form values
    const name = document.getElementById("name").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const email = document.getElementById("email").value.trim();
    const message = document.getElementById("message").value.trim();

    // Validate name
    if (name.length <= 3 || /[^a-zA-Z\s]/.test(name)) {
        document.getElementById("nameError").textContent = "Name must be greater than 3 characters and not contain special characters.";
        isValid = false;
    }

    // Validate phone number
    if (!/^[0-9]{10}$/.test(phone)) {
        document.getElementById("phoneError").textContent = "Phone number must be exactly 10 digits without country code and zero.";
        isValid = false;
    }

    // Validate email
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|net|edu)$/;
    if (!emailRegex.test(email)) {
        document.getElementById("emailError").textContent = "Email must be valid (e.g., example@example.com, .net, .edu).";
        isValid = false;
    }

    if (message=="") {
        document.getElementById("messageError").textContent = "Message must not be empty.";
        isValid = false;
    }
    return isValid;
}

function onSubmit(){
    // If all validations pass, submit the form
    if (isValidate()) {
        // Uncomment the line below to submit the form programmatically if required
        document.getElementById("contactForm").submit();
    }
}