<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    
<style type="text/css">
body {
    font-family: 'Poppins', sans-serif;
    background-color: #f5f8fd;
    color: #444;
    margin: 0;
    padding: 0;
    line-height: 1.6;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Container styles for the form */
.container {
    width: 100%;
    max-width: 600px;
    margin: 0 auto;
    background-color: #c0c0c0;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    padding: 30px;
    box-sizing: border-box;
    position: relative;
}

/* Form Title */
.container h2 {
    font-size: 24px;
    font-weight: 600;
    color: #800080;
    text-align: center;
    margin-bottom: 20px;
}

/* Label and input fields styling */
label {
    display: block;
    margin-bottom: 8px;
    font-weight: 500;
    color: #2c3e50;
}

input[type="text"], input[type="number"], input[type="tel"], input[type="email"], select, textarea {
    width: 100%;
    padding: 12px 15px;
    margin-bottom: 15px;
    border: 1px solid #ced4da;
    border-radius: 5px;
    font-size: 16px;
    box-sizing: border-box;
    transition: border-color 0.3s;
}

input:focus, select:focus, textarea:focus {
    outline: none;
    border-color: #007bff;
}

/* Button styling */
button {
    display: inline-block;
    background-color: #008000;
    color: #fff;
    padding: 12px 20px;
    font-size: 16px;
    font-weight: 500;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    width: 100%;
}

button:hover {
    background-color: #0056b3;
}

/* Modal specific styling */
.modal {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.modal-content {
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px;
    position: relative;
}




/* Responsive styling */
@media (max-width: 768px) {
    .container {
        padding: 20px;
        margin: 20px;
    }

    input[type="text"], input[type="number"], input[type="tel"], input[type="email"], select, textarea {
        font-size: 14px;
    }

    button {
        font-size: 14px;
        padding: 10px;
    }
}
</style>

</head>
<body>

<!-- Feedback Modal Dialog -->
<div id="feedbackDialog" class="modal">
    <div class="modal-content">
       
        <h2>Feedback Form</h2>
        <form action="<%= request.getContextPath() %>/FeedbackServlet" method="post">
            <label for="name">Patient Name:</label>
            <input type="text" id="username" name="patient_name" required>
            <label for="treatmentTaken">Treatment Taken:</label>
            <input type="text" id="treatmentTaken" name="treatment_taken" required>
            <label for="feedback">Your Feedback:</label>
            <textarea id="feedback" name="feedback" rows="4" required></textarea>
            <button type="submit">Submit Feedback</button>
        </form>
    </div>
</div>



</body>
</html>
