//Checkout form validation
 $('#contact_form').formValidation({
     framework: 'bootstrap',
     icon: {
         valid: 'glyphicon glyphicon-ok',
         invalid: 'glyphicon glyphicon-remove',
         validating: 'glyphicon glyphicon-refresh'
     },
     err: {
         container: 'tooltip'
     },
     fields: {
         name: {
             validators: {
                 notEmpty: {
                     message: 'Please insert your name'
                 },
                 regexp: {
                     regexp: /^[a-zõäöüA-ZÕÄÖÜ/ -]+$/,
                     message: 'Name is not valid'
                 }
             }
         },
         email: {
             validators: {
                 notEmpty: {
                     message: 'The email address is required'
                 },
                 emailAddress: {
                     message: 'The input is not a valid email address'
                 }
             }
         },
         telephone: {
             validators: {
                 notEmpty: {
                     message: 'Please insert your phone number'
                 },
                 regexp: {
                     regexp: /^[0-9\ +]+$/,
                     message: 'Number is not valid'
                 }

             }
         },
         address: {
             validators: {
                 notEempty: {
                     message: 'Please insert address'
                 }
             }
         },
         delivery: {
             validators: {
                 notEmpty: {
                     message: 'Please choose delivery method'
                 }
             }
         }
     }
 });

 //contact form
 $(document).on("click", "#submitBtn", (function () {
     $.ajax({
         type: 'POST',
         url: 'contact/sendMail',
         data: $('#questionForm').serialize(),
         dataType: 'text',
         success: function (data) {
             alert("töötab või");
         }
     });
 }));

 //Contact form validator
 $('#questionForm').formValidation({
     framework: 'bootstrap',
     icon: {
         valid: 'glyphicon glyphicon-ok',
         invalid: 'glyphicon glyphicon-remove',
         validating: 'glyphicon glyphicon-refresh'
     },
     err: {
         container: 'tooltip'
     },
     fields: {
         name: {
             validators: {
                 notEmpty: {
                     message: 'Please insert your name'
                 },
                 regexp: {
                     regexp: /^[a-zõäöüA-ZÕÄÖÜ/ -]+$/,
                     message: 'Name is not valid'
                 }
             }
         },
         email: {
             validators: {
                 notEmpty: {
                     message: 'The email address is required'
                 },
                 emailAddress: {
                     message: 'The input is not a valid email address'
                 }
             }
         },
         Qmessage: {
             validators: {
                 notEmpty: {
                     message: 'Please insert your message'
                 }
             }
         }
     }
 });