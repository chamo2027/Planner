/**
 * 
 */

document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector("form");
  const password = document.querySelector("input[name='password']");
  const repassword = document.querySelector("input[name='repassword']");
  const bday = document.querySelector("input[name='bday']");
  const email = document.querySelector("input[name='email']");
  const contact = document.querySelector("input[name='contactnumber']");

  form.addEventListener("submit", function (e) {
    // Password match check
    if (password.value !== repassword.value) {
      e.preventDefault();
      alert("Passwords do not match!");
      repassword.focus();
      return;
    }

    // Birthday check 
    const today = new Date();
    const birthDate = new Date(bday.value);
    if (birthDate > today) {
      e.preventDefault();
      alert("Birthday cannot be a future date.");
      bday.focus();
      return;
    }

    // Gmail validation
    const gmailRegex = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
    if (!gmailRegex.test(email.value)) {
      e.preventDefault();
      alert("Please enter a valid Gmail address.");
      email.focus();
      return;
    }

    // Contact number validation
    const contactRegex = /^[0-9]{10}$/;
    if (!contactRegex.test(contact.value)) {
      e.preventDefault();
      alert("Please enter a valid 10-digit contact number.");
      contact.focus();
      return;
    }
  });
});


