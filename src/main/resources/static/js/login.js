function isValid(event) {
    event.preventDefault();
    var userName = document.getElementById('userName').value;
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;
    var userNameError = document.getElementById('userNameError');
    var emailError = document.getElementById('emailError');
    var passwordError = document.getElementById('passwordError');
    let isValid = true;

    // Username validation
    if(userName.length < 4) {
        userNameError.innerHTML = "User name must be at least 5 characters!";
        isValid = false;
    } else {
        userNameError.innerHTML = "";
    }

    // Email validation using regex
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if(!emailPattern.test(email)) {
        emailError.innerHTML = "Please enter a valid email address!";
        isValid = false;
    } else {
        emailError.innerHTML = "";
    }

    // Password validation
    if(password.length <= 4) {
        passwordError.innerHTML = "Password must be at least 5 characters!";
        isValid = false;
    } else {
        passwordError.innerHTML = "";
    }

    if(isValid) {
        document.getElementById("form").submit();
    }
}