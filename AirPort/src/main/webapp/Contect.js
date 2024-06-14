function validateName() {
    var nameInput = document.getElementById("Name").value;
    var nameError = document.getElementById("NameError");
    var sendButton = document.getElementById("submitBtn");

    if (nameInput.length >= 3 && nameInput.length <= 20) {
        nameError.innerHTML = "Entered name is correct";
        nameError.style.color = 'green';
        sendButton.removeAttribute("disabled");
    } else {
        nameError.innerHTML = "Entered value is incorrect. Name must be between 3 and 20 characters.";
        nameError.style.color = 'red';
        sendButton.setAttribute("disabled", "");
    }
}


function validateEmail() {
    var nameInput = document.getElementById("mail").value;
    var nameError = document.getElementById("MailError");
    var sendButton = document.getElementById("submitBtn");

    if (mailInput.length <= 20) {
        nameError.innerHTML = "Entered name is correct";
        nameError.style.color = 'green';
        sendButton.removeAttribute("disabled");
    } else {
        nameError.innerHTML = "Entered value is incorrect. Name must be between 3 and 20 characters.";
        nameError.style.color = 'red';
        sendButton.setAttribute("disabled", "");
    }
}