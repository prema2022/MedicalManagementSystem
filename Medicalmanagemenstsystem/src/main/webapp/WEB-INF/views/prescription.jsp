<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Prescription Module</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 700px;
            margin: 0 auto;
        }

        h2 {
            text-align: center;
            color: #800080;
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
        textarea,
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        button[type="submit"],
        button[type="button"] {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover,
        button[type="button"]:hover {
            background-color: #218838;
        }

        /* Styles for Medicine List */
        .medicine-group {
            display: flex;
            gap: 10px;
            margin-bottom: 10px;
        }

        .medicine-group input {
            flex: 1;
        }

        /* Print Button */
        .print-btn {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Upload Prescription Details</h2>

    <form action="<%= request.getContextPath() %>/PrescriptionServlet" method="post">
        <div class="form-group">
            <label for="pname">Patient Name:</label>
            <input type="text" id="pname" name="pname" placeholder="Enter patient name" required>
        </div>

        <div class="form-group">
            <label for="pid">Patient ID:</label>
            <input type="text" id="pid" name="pid" placeholder="Enter patient ID" required>
        </div>

        <div class="form-group">
            <label for="date">Prescription Date:</label>
            <input type="date" id="date" name="date" required>
        </div>

        <div class="form-group">
            <label for="doctorname">Doctor Name:</label>
            <select id="doctorname" name="doctorname" required>
                <option value="">Select Doctor</option>
                <option value="Dr. Smith">Dr. Smith</option>
                <option value="Dr. Johnson">Dr. Johnson</option>
                <option value="Dr. Brown">Dr. Brown</option>
            </select>
        </div>

        <div class="form-group">
            <label for="age">Patient Age:</label>
            <input type="text" id="age" name="age" placeholder="Enter patient age" required>
        </div>

        <h3>Medicine Details:</h3>
        <div id="medicine-list">
            <div class="medicine-group">
                <input type="text" name="medicine[]" placeholder="Medicine Name" required>
                <input type="text" name="duration[]" placeholder="Duration (e.g., 5 days)" required >
                <input type="text" name="when_to_eat[]" placeholder="When to eat (e.g., before food)" required>
                <input type="text" name="time[]" placeholder="Time (e.g., morning, evening)" required>
            </div>
        </div>
        <button type="button" onclick="addMedicine()">Add Another Medicine</button>

        <div class="print-btn">
            <button type="submit">Submit Prescription</button>
            <button type="button" onclick="printPrescription()">Print Prescription</button>
        </div>
    </form>
</div>

<script>
    function addMedicine() {
        const medicineList = document.getElementById('medicine-list');
        const newMedicine = document.createElement('div');
        newMedicine.classList.add('medicine-group');
        newMedicine.innerHTML = `
            <input type="text" name="medicine[]" placeholder="Medicine Name" required>
            <input type="text" name="duration[]" placeholder="Duration (e.g., 5 days)" required>
            <input type="text" name="when_to_eat[]" placeholder="When to eat (e.g., before food)" required>
            <input type="text" name="time[]" placeholder="Time (e.g., morning, evening)" required>`;
        medicineList.appendChild(newMedicine);
    }

    function printPrescription() {
        window.print();
    }
</script>

</body>
</html>
