// form-validation.js

document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector("form");
  const phoneInput = document.getElementById("telephone_number");
  const dateInput = document.getElementById("date");

  form.addEventListener("submit", function (event) {
    let isValid = true;
    let phone = phoneInput.value.trim();
    let date = new Date(dateInput.value);
    let today = new Date();

    // Set today to midnight
    today.setHours(0, 0, 0, 0);

    // Calculate 2 days ahead
    let minDate = new Date(today);
    minDate.setDate(minDate.getDate() + 2);

    // Validate phone number
    const phoneRegex = /^[0-9]{10}$/;
    if (!phoneRegex.test(phone)) {
      alert("Please enter a valid 10-digit phone number.");
      phoneInput.focus();
      isValid = false;
    }

    // Validate date
    else if (isNaN(date.getTime()) || date < minDate) {
      alert("Event date must be at least 2 days from today.");
      dateInput.focus();
      isValid = false;
    }

    if (!isValid) {
      event.preventDefault(); // Prevent form submission
    }
  });
});
