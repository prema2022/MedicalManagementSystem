<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E Prescription </title>
    <style type="text/css">
  /* The Modal (background) */
.modal {
 
  position: fixed; /* Stay in place */
  z-index: 1000; /* Sit on top */
 /* padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  max-width: 500px;
  border-radius: 10px;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
  position: relative;
  top: 50%; /* Position it in the middle of the viewport */
  transform: translateY(-50%); /* Adjust its position so that it is truly centered */
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}


/* Form Styles */
form {
  display: flex;
  flex-direction: column;
}

label {
  margin-bottom: 8px;
  font-weight: bold;
}

input[type="text"],
input[type="password"],
textarea {
  width: 100%;
  padding: 8px;
  margin-bottom: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

button[type="submit"] {
  background-color: #28a745;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}

button[type="submit"]:hover {
  background-color: #218838;
}

/* Responsive Adjustments */
@media screen and (max-width: 600px) {
  .modal-content {
      width: 90%;
      padding: 10px;
  }

  button[type="submit"] {
      font-size: 14px;
  }
}
  </style>
</head>
 <body>
<!-- E Prescription Modal Dialog -->
<div id="ePrescriptionDialog" class="modal">
    <div class="modal-content">
     
      <h2>E Prescription</h2>
      <form id="ePrescriptionForm">
        <label for="patientId">Patient ID:</label>
        <input type="text" id="ePrescriptionPatientId" name="patientId" required>

        <label for="patientName">Patient Name:</label>
        <input type="text" id="ePrescriptionPatientName" name="patientName" required>
        
        <label for="patientName">:</label>
        <input type="text" id="ePrescriptionPatientName" name="patientName" required>
        
        <label for="patientName">Patient Name:</label>
        <input type="text" id="ePrescriptionPatientName" name="patientName" required>

        <button type="submit">Submit</button>
      </form>
    </div>
  </div>
    <script src="scripts.js"></script> <!-- Link to your JavaScript file -->

</body>