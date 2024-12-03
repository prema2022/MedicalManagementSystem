<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
            color: #333;
        }

        input[type="text"],
        input[type="date"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        select {
            appearance: none;
            background-color: white;
        }

        textarea {
            resize: vertical;
        }

        button[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #218838;
        }

        /* Consistent styling for all form fields */
        input[type="text"]:focus,
        input[type="date"]:focus,
        select:focus,
        textarea:focus {
            border-color: #28a745;
            outline: none;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 600px) {
            .form-container {
                padding: 10px;
            }
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Make an Appointment</h2>

    <form action="<%= request.getContextPath() %>/AppointmentServlet" method="post">
        <div class="form-group">
            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter your name" required>
        </div>

        <div class="form-group">
            <label for="phone">Your Phone:</label>
            <input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>
        </div>

        <div class="form-group">
            <label for="date">Appointment Date (dd-MM-yyyy):</label>
            <input type="date" id="date" name="date">
        </div>

        <div class="form-group">
            <label for="symptom">Symptoms:</label>
            <input type="text" id="symptom" name="symptom" placeholder="Describe your symptoms" required>
        </div>

        <div class="form-group">
            <label for="drname">Select Doctor:</label>
            <select id="drname" name="drname" required>
                <option value="">Select Doctor</option>
                <option value="Dr. Smith">Dr. Smith</option>
                <option value="Dr. Johnson">Dr. Johnson</option>
                <option value="Dr. Brown">Dr. Brown</option>
            </select>
        </div>

        <div class="form-group">
            <label for="message">Message (Optional):</label>
            <textarea id="message" name="message" rows="4" placeholder="Additional notes (optional)"></textarea>
        </div>

        <div class="form-group">
            <button type="submit">Make an Appointment</button>
        </div>
    </form>
</div>

</body>
</html>
