
<script>
  document.addEventListener("DOMContentLoaded", function() {
    // Form validation function for submit
    window.validateForm = function(event) {
     
      document.querySelectorAll('input[required], select[required]').forEach(field => {
        field.style.border = '1px solid #9E1A31';
      });

      document.querySelectorAll('.error-message').forEach(msg => {
        msg.style.display = 'none';
      });

      let hasErrors = false;
      
    
      const requiredFields = [
        { id: 'fn', name: 'First Name' },
        { id: 'ln', name: 'Last Name' },
        { id: 'e', name: 'Email' },
        { id: 'dobDay', name: 'Date of Birth Day' },
        { id: 'dobMonth', name: 'Date of Birth Month' },
        { id: 'dobYear', name: 'Date of Birth Year' },
        { id: 'consent', name: 'Terms and Conditions' },
        { id: 'consentPR', name: 'Marketing Consent' }
      ];

     
      requiredFields.forEach(field => {
        const element = document.getElementById(field.id);
        const errorElement = document.getElementById(field.id + '-error');
        if (!element) return;
        let isEmpty = false;
        if (element.type === 'checkbox') {
          isEmpty = !element.checked;
        } else if (element.tagName === 'SELECT') {
          isEmpty = !element.value || element.value.includes('%%=v(@');
        } else {
          isEmpty = !element.value.trim();
        }
        if (isEmpty) {
          element.style.border = '2px solid red';
          if (errorElement) {
            errorElement.style.display = 'block';
          }
          hasErrors = true;
        }
      });

      // Email validation
      const emailField = document.getElementById('e');
      const emailError = document.getElementById('e-error');
      if (emailField && emailField.value) {
        const emailValue = emailField.value.trim();
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(emailValue) || emailValue.includes('+')) {
          emailField.style.border = '2px solid red';
          if (emailError) {
            emailError.textContent = 'Please enter a valid email address';
            emailError.style.display = 'block';
          }
          hasErrors = true;
        }
      }
      
     
      if (hasErrors) {
        event.preventDefault();
        return false;
      }
      return true;
    };

    function fixEmail() {
      let emailInput = document.getElementById("e");
      if (emailInput && emailInput.value) {
        let email = emailInput.value.trim();
       
        emailInput.value = email.replace(/\.con$/, ".com");
      }
    }


    const emailElement = document.getElementById("e");
    if (emailElement) {
      emailElement.addEventListener("blur", fixEmail);
    }
  });
</script>
