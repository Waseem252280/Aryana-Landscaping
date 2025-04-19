function updateSettings() {
    let isValid = true;

    // Get form elements
    const username = document.getElementById('username').value;
    const currentPassword = document.getElementById('currentPassword').value;
    const newPassword = document.getElementById('newPassword').value;

    // Clear previous errors
    document.getElementById('userNameError').innerText = '';
    document.getElementById('currentPasswordError').innerText = '';
    document.getElementById('newPasswordError').innerText = '';
    document.getElementById('formError').innerText = '';

    // Validation checks
    if (!username && !currentPassword && !newPassword) {
        document.getElementById('formError').innerText = 'Empty form can not be submitted.';
        isValid = false;
    }

    if (username && username.length < 4) {
        document.getElementById('userNameError').innerText = 'Username must be at least 4 characters.';
        isValid = false;
    }

    if (currentPassword && currentPassword.length < 5) {
        document.getElementById('currentPasswordError').innerText = 'Current password must be at least 5 characters.';
        isValid = false;
    }

    if (currentPassword && !newPassword) {
        document.getElementById('newPasswordError').innerText = 'New password is required.';
        isValid = false;
    } else if (newPassword && newPassword.length < 5) {
        document.getElementById('newPasswordError').innerText = 'New password must be at least 5 characters.';
        isValid = false;
    }

    // Submit form if valid
    if (isValid) {
        document.getElementById('form').submit();
    }
}

