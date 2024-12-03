// scripts.js 
document.addEventListener('DOMContentLoaded', (event) => {
    // Get the modals and their corresponding links
    var loginModal = document.getElementById('alreadyRegisteredDialog');
    var loginLink = document.getElementById('alreadyRegisteredLink');

    var feedbackModal = document.getElementById('feedbackDialog');
    var feedbackLink = document.getElementById('feedbackLink');

    var ePrescriptionModal = document.getElementById('ePrescriptionDialog');
    var ePrescriptionLink = document.getElementById('ePrescriptionLink');

    // Get the <span> elements that close the modals
    var closeButtons = document.getElementsByClassName('close');

    // When the user clicks on the "Already Registered" link, open the login modal
    loginLink.onclick = function() {
        loginModal.style.display = 'block';
    }

    // When the user clicks on the "Feedback" link, open the feedback modal
    feedbackLink.onclick = function() {
        feedbackModal.style.display = 'block';
    }

    // When the user clicks on the "E Prescription" link, open the ePrescription modal
    ePrescriptionLink.onclick = function() {
        ePrescriptionModal.style.display = 'block';
    }

    // When the user clicks on <span> (x), close the corresponding modal
    for (var i = 0; i < closeButtons.length; i++) {
        closeButtons[i].onclick = function() {
            this.parentElement.parentElement.style.display = 'none';
        }
    }

    // When the user clicks anywhere outside of a modal, close it
    window.onclick = function(event) {
        if (event.target == loginModal) {
            loginModal.style.display = 'none';
        } else if (event.target == feedbackModal) {
            feedbackModal.style.display = 'none';
        } else if (event.target == ePrescriptionModal) {
            ePrescriptionModal.style.display = 'none';
        }
    }
});
